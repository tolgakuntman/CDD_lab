`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/17/2025 11:06:32 PM
// Design Name: 
// Module Name: uart_top_TB
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

module uart_top_TB ();
 
  reg  rClk = 0;
  reg  rRst = 0;
  wire wRx, wTx;
  reg rTxStart;
  reg [7:0] rTxByte;
  wire [7:0] wRxByte;
  wire wTxBusy, wTxDone, wRxDone;
  integer i;

  localparam CLK_FREQ_inst  = 100;
  localparam BAUD_RATE_inst = 10;

  uart_top #(  .CLK_FREQ(CLK_FREQ_inst), .BAUD_RATE(BAUD_RATE_inst) )
  uart_top_inst
  ( .iClk(rClk), .iRst(rRst), .iRx(wRx), .oTx(wTx) );

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

  uart_rx #(  .CLK_FREQ(CLK_FREQ_inst), .BAUD_RATE(BAUD_RATE_inst) )
  UART_RX_INST
    (.iClk(rClk),
     .iRst(rRst),
     .iRxSerial(wTx),
     .oRxByte(wRxByte),
     .oRxDone(wRxDone)
     );

  localparam CLOCK_PERIOD = 5;
  always #(CLOCK_PERIOD/2) rClk <= !rClk;

  task send_byte;
    input [7:0] byte;
    begin
      rTxByte = byte;
      rTxStart = 1;
      #CLOCK_PERIOD;
      rTxStart = 0;
      wait (wTxDone);
      #CLOCK_PERIOD;
    end
  endtask

  task send_fpu_op;
    input [7:0] opcode;
    input [31:0] opA, opB;
    begin
      send_byte(opcode);
      send_byte(opA[31:24]);
      send_byte(opA[23:16]);
      send_byte(opA[15:8]);
      send_byte(opA[7:0]);

      send_byte(opB[31:24]);
      send_byte(opB[23:16]);
      send_byte(opB[15:8]);
      send_byte(opB[7:0]);

      #(1000 * CLOCK_PERIOD);
    end
  endtask

  initial begin
    rRst = 1;
    #CLOCK_PERIOD;
    rRst = 0;
    #(10*CLOCK_PERIOD);

//    // ADDITION TESTS
//    send_fpu_op(8'h01, 32'h40600000, 32'h3FA00000); // 3.5 + 1.25 = 4.75
//    send_fpu_op(8'h01, 32'h40000000, 32'h40000000); // 2.0 + 2.0 = 4.0
//    send_fpu_op(8'h01, 32'h3F800000, 32'h00000000); // 1.0 + 0.0 = 1.0
//    send_fpu_op(8'h01, 32'h00000001, 32'h3F800000); // denorm + 1.0
//    send_fpu_op(8'h01, 32'h7F800000, 32'h3F800000); // +inf + 1.0 = inf
//    send_fpu_op(8'h01, 32'h7FC00001, 32'h3F800000); // NaN + 1.0 = NaN
//    send_fpu_op(8'h01, 32'hBF800000, 32'h3F000000); // -1.0 + 0.5 = -0.5
//    send_fpu_op(8'h01, 32'hBFC00000, 32'hC0200000); // -1.5 + (-2.5) = -4.0
//    send_fpu_op(8'h01, 32'h3eaaa64c, 32'h3eaaa64c); // ~0.3333 + ~0.3333 = ~0.6666
//    send_fpu_op(8'h01, 32'h00000001, 32'h00000001); // tiny + tiny

//    // SUBTRACTION TESTS
//    send_fpu_op(8'h02, 32'h40000000, 32'h3F800000); // 2.0 - 1.0 = 1.0
//    send_fpu_op(8'h02, 32'h3F800000, 32'h3F800000); // 1.0 - 1.0 = 0.0
//    send_fpu_op(8'h02, 32'hBF800000, 32'h3F000000); // -1.0 + 0.5 = -0.5
//    send_fpu_op(8'h02, 32'h3F000000, 32'hBF800000); // -1.0 + 0.5 = -0.5
//    send_fpu_op(8'h02, 32'h3F800000, 32'h00000001); // 1.0 - denorm = ~1.0
//    send_fpu_op(8'h02, 32'h00000001, 32'h3F800000); // denorm - 1.0 = -1.0
//    send_fpu_op(8'h02, 32'h7F800000, 32'h3F800000); // inf - 1.0 = inf
//    send_fpu_op(8'h02, 32'h7FC00001, 32'h3F800000); // NaN - 1.0 = NaN

    // MULTIPLICATION TESTS
    send_fpu_op(8'h03, 32'h3F800000, 32'h3F800000); // 1.0 * 1.0 = 1.0
    send_fpu_op(8'h03, 32'h40000000, 32'h40400000); // 2.0 * 3.0 = 6.0
    send_fpu_op(8'h03, 32'h3FC00000, 32'h40000000); // 1.0 * denorm
    send_fpu_op(8'h03, 32'h3F000000, 32'h3F000000); // denorm * 1.0
    send_fpu_op(8'h03, 32'hC0000000, 32'h40400000); // -2.0 * 3.0 = -6.0
    send_fpu_op(8'h03, 32'h3F800000, 32'hBF800000); // 1.0 * -1.0 = -1.0
    send_fpu_op(8'h03, 32'h3e99999a, 32'h4019999a); // 1.0 * inf = inf
    send_fpu_op(8'h03, 32'h40200000, 32'h40800000); // 1.0 * NaN = NaN

    $stop;
  end

endmodule