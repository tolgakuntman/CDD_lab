`timescale 1ns / 1ps

module uart_top #(
    parameter   OPERAND_WIDTH = 1024,
    parameter   ADDER_WIDTH   = 256,
    parameter   NBYTES        = OPERAND_WIDTH / 8 + 1,    
    // values for the UART (in case we want to change them)
    parameter   CLK_FREQ      = 125_000_000,
    parameter   BAUD_RATE     = 115_200,
    parameter   OPERAND_WIDTH_FPU = 32,
    parameter   NBYTES_FPU        = OPERAND_WIDTH_FPU / 8 + 1      
  )  
  (
    input   wire   iClk, iRst,
    input   wire   iRx,
    output  wire   oTx
  );
  
  // Buffer to exchange data between Pynq-Z2 and laptop
  reg [NBYTES*8-1:0] rBuffer;
  
  // State definition  
  localparam s_IDLE         = 4'b0000;   //0
  localparam s_WAIT_OPCODE  = 4'b0001;   //1
  localparam s_WAIT_RX_OP1  = 4'b0010;   //2
  localparam s_WAIT_RX_OP2  = 4'b0011;   //3
  localparam s_WAIT_RX_FPU_OP1 = 4'b0100;//4
  localparam s_WAIT_RX_FPU_OP2 = 4'b0101;//5
  localparam s_START_FPU    = 4'b0110;   //6
  localparam s_WAIT_FPU     = 4'b0111;   //7
  localparam s_START_ADD    = 4'b1000;   //8
  localparam s_WAIT_ADD     = 4'b1001;   //9
  localparam s_TX           = 4'b1010;   //10
  localparam s_WAIT_TX      = 4'b1011;   //11
  localparam s_TX_FPU       = 4'b1100;   //12
  localparam s_WAIT_TX_FPU  = 4'b1101;   //13
  localparam s_DONE         = 4'b1110;   //14

  //OPCODE
  localparam OP_FAST_ADD = 8'b0000;     //0
  localparam OP_FPU_ADD = 8'b0001;      //1
  localparam OP_FPU_SUB = 8'b0010;      //2
  localparam OP_FPU_MUL = 8'b0011;      //3
  localparam OP_FPU_DIV = 8'b0100;      //4
  localparam OP_FPU_CMP = 8'b0101;      //5
  localparam OP_FPU_ITOF = 8'b0110;     //6
  localparam OP_FPU_FOTI = 8'b0111;     //7
  
  reg [7:0] rOpcode;

  // Declare all variables needed for the finite state machine 
  // -> the FSM state
  reg [3:0]   rFSM;  
  
  // Connection to UART TX (inputs = registers, outputs = wires)
  reg         rTxStart;
  reg [7:0]   rTxByte;
  
  wire        wTxBusy;
  wire        wTxDone;
  
  // connection to RX
  reg rRxSerial;
  wire [7:0] wRxByte;
  wire wRxDone;
  
  // adder module
  reg rStartAdd;
  wire wDoneAdd;
  reg [OPERAND_WIDTH-1:0] rOpA, rOpB;
  wire [OPERAND_WIDTH:0] wResAdd;
  reg [OPERAND_WIDTH+(8-((OPERAND_WIDTH+1)%8)):0] rBufferOut;
  
  //fpu module
  reg rStartFpu;
  wire wDoneFpu;
  reg [OPERAND_WIDTH_FPU-1:0] rFPUOpA, rFPUOpB;
  wire [OPERAND_WIDTH_FPU:0] wFpuResult;
  reg [OPERAND_WIDTH_FPU+(8-((OPERAND_WIDTH_FPU+1)%8)):0] rBufferFPUOut;


  uart_rx #(  .CLK_FREQ(CLK_FREQ), .BAUD_RATE(BAUD_RATE) )
  UART_RX_INST
    (.iClk(iClk),
     .iRst(iRst),
     .iRxSerial(iRx),
     .oRxByte(wRxByte),
     .oRxDone(wRxDone)
     );
     
     uart_tx #(  .CLK_FREQ(CLK_FREQ), .BAUD_RATE(BAUD_RATE) )
  UART_TX_INST
    (.iClk(iClk),
     .iRst(iRst),
     .iTxStart(rTxStart),
     .iTxByte(rTxByte),
     .oTxSerial(oTx),
     .oTxBusy(wTxBusy),
     .oTxDone(wTxDone)
     );
     
     
    localparam CLA =   4'b0000;
    localparam RCA =   4'b0001;
    
     mp_adder #(.OPERAND_WIDTH(OPERAND_WIDTH), .ADDER_WIDTH(ADDER_WIDTH),.ADDER_TYPE(CLA))
  MP_ADDER_INST
    (
    .iClk(iClk),
    .iRst(iRst),
    .iStart(rStartAdd),
    .iOpA(rOpA),
    .iOpB(rOpB),
    .oRes(wResAdd),
    .oDone(wDoneAdd)
    );
    fpu_core FPU_CORE_INST (
    .iClk(iClk),
    .iRst(iRst),
    .iStart(rStartFpu),
    .iOpCode(rOpcode),
    .iA(rFPUOpA),
    .iB(rFPUOpB),
    .oResult(wFpuResult),
    .oDone(wDoneFpu)
);

     
  reg [$clog2(NBYTES):0] rCnt;
  reg [$clog2(NBYTES):0] rCntRx; 
  
  always @(posedge iClk)
  begin
  
  // reset all registers upon reset
  if (iRst == 1 ) 
    begin
      rFSM <= s_IDLE;
      rTxStart <= 0;
      rCnt <= 0;
      rCntRx <= 0;
      rTxByte <= 0;
      rOpA <= 0;
      rOpB <= 0;
      rBuffer <= 0;
    end 
  else 
    begin
      case (rFSM)
   
        s_IDLE :
          begin
            rFSM <= s_WAIT_OPCODE;
            rTxStart <= 0;
            rCnt <= 0;
            rCntRx <= 0;
            rTxByte <= 0;
            rOpA <= 0;
            rOpB <= 0;
          end
        s_WAIT_OPCODE:
          begin
             if (wRxDone)
            begin
                rOpcode <= wRxByte; // Store it for later, to decide the instruction we check wRxByte
                
                if (wRxByte == 0 ) // ADD or SUB
                begin rFSM <= s_WAIT_RX_OP1; end
                
                else if (wRxByte >= OP_FPU_ADD)
                begin rFSM <= s_WAIT_RX_FPU_OP1;end
                
                else // MAC_RET
                begin 
                rFSM <= s_WAIT_RX_OP1; end 
            end
          end
        s_WAIT_RX_OP1 :
          begin
            if (wRxDone == 1 && rCntRx == (NBYTES-2))begin
                rCntRx <= 0;
                rOpA <= { rBuffer[NBYTES*8-9:0], wRxByte };      
                rFSM <= s_WAIT_RX_OP2;
            end else if (wRxDone == 1) begin
                rCntRx <= rCntRx + 1;
                rBuffer <= { rBuffer[NBYTES*8-9:0], wRxByte };   
                rOpA <= rOpA;   
                rFSM <= s_WAIT_RX_OP1;
            end else begin
                rCntRx <= rCntRx;
                rOpA <= rOpA;
                rBuffer <= rBuffer;
                rFSM <= s_WAIT_RX_OP1;
            end        
          end
        s_WAIT_RX_OP2:
          begin
            if (wRxDone == 1 && rCntRx == (NBYTES-2))begin
                rCntRx <= rCntRx;
                rOpB <= { rBuffer[NBYTES*8-9:0], wRxByte };      
                rFSM <= s_START_ADD;
            end else if (wRxDone == 1) begin
                rCntRx <= rCntRx + 1;
                rBuffer <= { rBuffer[NBYTES*8-9:0], wRxByte };  
                rOpB <= rOpB;    
                rFSM <= s_WAIT_RX_OP2;
            end else begin
                rCntRx <= rCntRx;
                rBuffer <= rBuffer;
                rOpB <= rOpB;
                rFSM <= s_WAIT_RX_OP2;
            end   
          end
        s_WAIT_RX_FPU_OP1:
          begin
          if (wRxDone == 1 && rCntRx == (NBYTES_FPU-2))begin
                rCntRx <= 0;
                rFPUOpA <= { rBuffer[NBYTES_FPU*8-9:0], wRxByte };      
                rFSM <= s_WAIT_RX_FPU_OP2;
            end else if (wRxDone == 1) begin
                rCntRx <= rCntRx + 1;
                rBuffer <= { rBuffer[NBYTES_FPU*8-9:0], wRxByte };  
                rFPUOpA <= rFPUOpA;    
                rFSM <= s_WAIT_RX_FPU_OP1;
            end else begin
                rCntRx <= rCntRx;
                rBuffer <= rBuffer;
                rFPUOpA <= rFPUOpA;
                rFSM <= s_WAIT_RX_FPU_OP1;
            end 
          end
        s_WAIT_RX_FPU_OP2:
          begin
            if (wRxDone == 1 && rCntRx == (NBYTES_FPU-2))begin
                rCntRx <= rCntRx;
                rFPUOpB <= { rBuffer[NBYTES_FPU*8-9:0], wRxByte };      
                rFSM <= s_START_FPU;
            end else if (wRxDone == 1) begin
                rCntRx <= rCntRx + 1;
                rBuffer <= { rBuffer[NBYTES_FPU*8-9:0], wRxByte };  
                rFPUOpB <= rFPUOpB;    
                rFSM <= s_WAIT_RX_FPU_OP2;
            end else begin
                rCntRx <= rCntRx;
                rBuffer <= rBuffer;
                rFPUOpB <= rFPUOpB;
                rFSM <= s_WAIT_RX_FPU_OP2;
            end   
          end
        s_START_FPU:
          begin
            rStartFpu <= 1;
            rFSM <= s_WAIT_FPU;
          end
        s_WAIT_FPU:
          begin
            rStartFpu <= 0;
            if (wDoneFpu) begin
                rBufferFPUOut <= { {(NBYTES_FPU*8 - 32){1'b0}}, wFpuResult };
                rFSM <= s_TX_FPU;
            end else begin
                rFSM <= s_WAIT_FPU;
            end
          end
        s_START_ADD:
          begin
            rStartAdd <= 1;
            rFSM <= s_WAIT_ADD;
          end
        s_WAIT_ADD:
          begin
            rStartAdd <= 0;
            if(wDoneAdd==1)
              begin
                rBufferOut<=wResAdd;
                rFSM <= s_TX;
              end
            else begin
                rBufferOut<=rBufferOut;
                rFSM <= s_WAIT_ADD;
              end
          end     
        s_TX :
          begin
            if ( (rCnt < NBYTES) && (wTxBusy ==0) ) 
              begin
                rFSM <= s_WAIT_TX;
                rTxStart <= 1; 
                rTxByte <= rBufferOut[NBYTES*8-1:NBYTES*8-8];            // we send the uppermost byte
                rBufferOut <= {rBufferOut[NBYTES*8-9:0] , 8'b0000_0000};    // we shift from right to left
                rCnt <= rCnt + 1;
              end 
            else 
              begin
                rFSM <= s_DONE;
                rTxStart <= 0;
                rTxByte <= 0;
                rCnt <= 0;
              end
            end 
            
            s_WAIT_TX :
              begin
                if (wTxDone) begin
                  rFSM <= s_TX;
                end else begin
                  rFSM <= s_WAIT_TX;
                  rTxStart <= 0;                   
                end
              end 
            s_TX_FPU:
              begin
          
            if ( (rCnt < NBYTES_FPU) && (wTxBusy ==0) ) 
              begin
                rFSM <= s_WAIT_TX_FPU;
                rTxStart <= 1; 
                rTxByte <= rBufferFPUOut[NBYTES_FPU*8-1:NBYTES_FPU*8-8];            // we send the uppermost byte
                rBufferFPUOut <= {rBufferFPUOut[NBYTES_FPU*8-9:0] , 8'b0000_0000};    // we shift from right to left
                rCnt <= rCnt + 1;
              end 
            else 
              begin
                rFSM <= s_DONE;
                rTxStart <= 0;
                rTxByte <= 0;
                rCnt <= 0;
              end 
              end
            s_WAIT_TX_FPU:
              begin
                if (wTxDone) begin
                  rFSM <= s_TX_FPU;
                end else begin
                  rFSM <= s_WAIT_TX_FPU;
                  rTxStart <= 0;                   
                end
              end
            s_DONE :
              begin
                rFSM <= s_IDLE;
              end 

            default :
              rFSM <= s_IDLE;
             
          endcase
      end
    end       
    
endmodule