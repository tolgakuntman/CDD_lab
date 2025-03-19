`timescale 1ns / 1ps

module uart_top_TB ();
 
  // Define signals for module under test
  reg  rClk = 0;
  reg  rRst = 0;
  wire wRx, wTx;
  reg rTxStart;
  reg [7:0] rTxByte;
  wire [7:0] wRxByte;
  wire wTxBusy, wTxDone, wRxDone;
  integer i;
  
  // We downscale the values in the simulation
  // this will give CLKS_PER_BIT = 100 / 10 = 10
  localparam CLK_FREQ_inst  = 100;
  localparam BAUD_RATE_inst = 10;
  
  // Instantiate DUT  
  uart_top 
  #(  .CLK_FREQ(CLK_FREQ_inst), .BAUD_RATE(BAUD_RATE_inst) )
  uart_top_inst
  ( .iClk(rClk), .iRst(rRst), .iRx(wRx), .oTx(wTx) );
  
  
  
  // Instantiate TX instance
 uart_tx #(  .CLK_FREQ(CLK_FREQ_inst), .BAUD_RATE(BAUD_RATE_inst) )
  UART_TX_INST
    (.iClk(rClk),
     .iRst(rRst),
     .iTxStart(rTxStart),
     .iTxByte(rTxByte),
     .oTxSerial(wRx),
     .oTxBusy(wTxBusy),
     .oTxDone(wTxDone)
     );
     
  // Instantiate RX instance
  uart_rx #(  .CLK_FREQ(CLK_FREQ_inst), .BAUD_RATE(BAUD_RATE_inst) )
  UART_RX_INST
    (.iClk(rClk),
     .iRst(rRst),
     .iRxSerial(wTx),
     .oRxByte(wRxByte),
     .oRxDone(wRxDone)
     );
  
  // Define clock signal
  localparam CLOCK_PERIOD = 5;
  
  always
    #(CLOCK_PERIOD/2) rClk <= !rClk;
 
  // Input stimulus
  initial
    begin
    
        rRst = 1;
        #CLOCK_PERIOD
        rRst = 0;
    
       #(10*CLOCK_PERIOD);
       
      // send bytes
      for(i = 0; i < 128; i = i + 1) begin
          rTxByte = 8'h0F;
          rTxStart = 1;
          #CLOCK_PERIOD
          rTxStart = 0;
          
          wait(wTxDone == 1);
          #CLOCK_PERIOD;
      end
      
      // Let it run for a while
      #(1000*CLOCK_PERIOD);
      
      
      
            
      $stop;
           
    end
   
endmodule