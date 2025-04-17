`timescale 1ns / 1ps

module uart_top #(
    parameter   OPERAND_WIDTH = 1024,
    parameter   ADDER_WIDTH   = 256,
    parameter   NBYTES        = OPERAND_WIDTH / 8 + 1,    
    // values for the UART (in case we want to change them)
    parameter   CLK_FREQ      = 125_000_000,
    parameter   BAUD_RATE     = 115_200
  )  
  (
    input   wire   iClk, iRst,
    input   wire   iRx,
    output  wire   oTx
  );
  
  // Buffer to exchange data between Pynq-Z2 and laptop
  reg [NBYTES*8-1:0] rBuffer;
  
  // State definition  
  localparam s_IDLE         = 3'b000;   //0
  localparam s_WAIT_RX_OP1  = 3'b001;   //1
  localparam s_WAIT_RX_OP2  = 3'b010;   //2
  localparam s_START_ADD    = 3'b011;   //3
  localparam s_WAIT_ADD     = 3'b100;   //4
  localparam s_TX           = 3'b101;   //5
  localparam s_WAIT_TX      = 3'b110;   //6
  localparam s_DONE         = 3'b111;   //7
   
  // Declare all variables needed for the finite state machine 
  // -> the FSM state
  reg [2:0]   rFSM;  
  
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
            rFSM <= s_WAIT_RX_OP1;
            rTxStart <= 0;
            rCnt <= 0;
            rCntRx <= 0;
            rTxByte <= 0;
            rOpA <= 0;
            rOpB <= 0;
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