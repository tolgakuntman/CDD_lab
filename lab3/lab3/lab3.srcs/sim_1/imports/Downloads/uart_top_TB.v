`timescale 1ns / 1ps

module uart_top_TB ();
   localparam CLOCK_PERIOD_NS = 100;
  
  localparam OPERAND_WIDTH   = 512; 
  localparam ADDER_WIDTH     = 8; 
      localparam   NBYTES        = OPERAND_WIDTH / 8 + 1;

  // Define signals for module under test
  reg  rClk = 0;
  reg  rRst = 0;
  wire wRx, wTx;
  reg rTxStart;
  reg [7:0] rTxByte;
  wire [7:0] wRxByte;
  wire wTxBusy, wTxDone, wRxDone;
  integer i;
      reg [OPERAND_WIDTH-1:0]   rA, rB;

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
             rA <=  512'h9f1f1e4aa803fd562fdf6769a1d881566987156aa3c628590c55bdf3f0a3fcdf3381a49febcdb5370a28672cce61332f9ac74025d3ebb8340a262a785e71ec72;
      rB <= 512'he39ff3431ba8575e5480a5cca6dd873fdf1671e578d85b3d78c5a8507a6ce39a9493a701d04a0ccef7de1d844bdeb16e7071cf720edb42efa21229ccf588fff7;
      #CLOCK_PERIOD;
      // send bytes
      for(i = 0; i < 256; i = i + 1) begin
          rTxByte = rA[8*NBYTES-1:NBYTES*8-8];
          rTxStart = 1;
          #CLOCK_PERIOD
          rTxStart = 0;
          
          wait(wTxDone == 1);
          #CLOCK_PERIOD;
      end
       for(i = 0; i < 256; i = i + 1) begin
          rTxByte = rB[8*NBYTES-1:NBYTES*8-8];
          rTxStart = 1;
          #CLOCK_PERIOD
          rTxStart = 0;
          
          wait(wTxDone == 1);
          #CLOCK_PERIOD;
      end
      wait(wRxDone);
      
      
      // Let it run for a while
      #(10000*CLOCK_PERIOD);
      
      
      
            
      $stop;
           
    end
   
endmodule