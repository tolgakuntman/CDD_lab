`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/05/2025 02:29:03 PM
// Design Name: 
// Module Name: uart_rx
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module uart_rx #(
parameter   CLK_FREQ      = 125_000_000,
parameter   BAUD_RATE     = 115_200,
// Example: 125 MHz Clock / 115200 baud UART -> CLKS_PER_BIT = 1085 
parameter   CLKS_PER_BIT  = CLK_FREQ / BAUD_RATE
)
(
input wire        iClk, iRst,
input wire        iRxSerial,
output wire [7:0] oRxByte, 
output wire       oRxDone
);
    reg rRx1, rRx2;
    
    always @(posedge iClk)
    begin
    rRx1 <= iRxSerial;
    rRx2 <= rRx1;
    end
    
    localparam sIDLE         = 3'b000;
    localparam sRX_START     = 3'b001;
    localparam sRX_DATA      = 3'b010;
    localparam sRX_STOP      = 3'b011;
    localparam sDONE         = 3'b100;
      // -> FSM state
  reg [2:0] rFSM_Current, wFSM_Next; 
  
  // -> counter to keep track of the clock cycles
  reg [$clog2(CLKS_PER_BIT):0]   rCnt_Current, wCnt_Next;
    
  // -> counter to keep track of sent bits
  // (between 0 and 7)
  reg [2:0] rBit_Current, wBit_Next;
  
  // -> the byte we want to receive (we store an internal copy)
  reg [7:0] rRxData_Current, wRxData_Next, rRxByteOut;
  
 //clock update block
  always @(posedge iClk)
  begin
    if (iRst==1)
      begin
        rFSM_Current <= sIDLE;
        rCnt_Current <= 0;
        rBit_Current <= 0;
        rRxData_Current <= 0;
        rRxByteOut <= 0;
      end
    else
      begin
        rFSM_Current <= wFSM_Next;
        rCnt_Current <= wCnt_Next;
        rBit_Current <= wBit_Next;
        rRxData_Current <= wRxData_Next;
        if (rFSM_Current == sRX_STOP)
            rRxByteOut <= rRxData_Current;
        else
            rRxByteOut <= 0;
      end
  end
   //sequential logic for 'next' FSM states
  always @(*)
    begin
      
      case (rFSM_Current)
      
        // IDLE STATE:
        // -> we simply wait here until iTxStart is asserted
        // -> when iTxStart is asserted, we copy the byte to send
        //    (iTxByte) into our local register (rTxData_Current)  
        //    and we are ready to start the frame transmission    
        sIDLE :
          begin
            wCnt_Next = 0;
            wBit_Next = 0;
             
            if (rRx2 == 0)
              begin
                wFSM_Next = sRX_START;
              end
            else
             begin    
                wFSM_Next = sIDLE;
             end
          end 
           
        // TX_START STATE:
        // -> we stay here for the duration of the start bit,
        //    which takes CLKS_PER_BIT clock cycles
        // -> we use rCnt_Current to keep track of clock cycles 
        sRX_START :
            begin
              wRxData_Next = rRxData_Current;
              wBit_Next = 0;
              
              if (rCnt_Current < (CLKS_PER_BIT - 1) )
                begin
                  wFSM_Next = sRX_START;
                  wCnt_Next = rCnt_Current + 1;
                end
              else
                begin
                  wFSM_Next = sRX_DATA;
                  wCnt_Next = 0;
                end
            end 
           
           
          // TX_DATA STATE:
          // -> we stay here for the duration of the byte sending,
          //    which takes 8 * CLKS_PER_BIT clock cycles     
          // -> we use rCnt_Current to keep track of clock cycles 
          // -> we use rBit_Current to keep track of number of bits
        
          // -> when rBit_Current increases, we shift the contents of the
          //    rTxData_Current register
          // -> why? by doing so, the LSB of rTxData_Current contains the
          //    bit we need to send
          // -> see below, where oTxSerial is assigned the value of rTxData_Current[0]
          
          sRX_DATA :
            begin
              if  (rCnt_Current==(CLKS_PER_BIT/2))
                begin
                    if (rBit_Current < 7)
                        begin
                          wFSM_Next = sRX_DATA;
                          wBit_Next = rBit_Current + 1;
                          wCnt_Next = rCnt_Current + 1;
                          wRxData_Next = { rRx2, rRxData_Current[7:1] }; // shift rTxData_Current one bit to the right
                        end
                      else
                        begin
                          wFSM_Next = sRX_STOP;
                          wBit_Next = 0;
                          wCnt_Next = rCnt_Current + 1;
                          wRxData_Next = { rRx2, rRxData_Current[7:1] };
                        end
                    end
                
              else if (rCnt_Current < (CLKS_PER_BIT - 1) )
                begin
                  wFSM_Next = sRX_DATA;
                  wCnt_Next = rCnt_Current + 1;
                  wRxData_Next = rRxData_Current;
                  wBit_Next = rBit_Current;
                end
              else
                begin
                  wCnt_Next = 0;
                  wFSM_Next = sRX_DATA;
                  wRxData_Next = rRxData_Current;
                  wBit_Next = rBit_Current;
            end  
            
         end
          // TX_STOP STATE:
          // -> we stay here for the duration of the stop bit,
          //    which takes CLKS_PER_BIT clock cycles
          // -> we use rCnt_Current to keep track of clock cycles 
          sRX_STOP :
            begin
              wRxData_Next = rRxData_Current;
              wBit_Next = 0;
               
              if (rCnt_Current < 2*(CLKS_PER_BIT - 1) )
                begin
                  wFSM_Next = sRX_STOP;
                  wCnt_Next = rCnt_Current + 1;
                end
              else
                begin
                  wFSM_Next = sDONE;
                  wCnt_Next = 0;
                end
            end 
           
           
          // DONE STATE:
          // -> we stay here 1 clock cycle, we will use this state
          //    to assert the output oDone 
          sDONE :
            begin
              wRxData_Next = rRxData_Current;
              wBit_Next = 0;
              wCnt_Next = 0;
              wFSM_Next = sIDLE;
            end
           
           
          default :
            begin
              wFSM_Next = sIDLE;
              wCnt_Next = 0;
              wBit_Next = 0;
              wRxData_Next = rRxData_Current;
            end 
        endcase
    end
  assign oRxDone = (rFSM_Current == sDONE); // we are done if current state is sDone
  assign oRxByte = rRxByteOut; // output byte is data in RxData_Current register (updated in sDone only)
  endmodule 
