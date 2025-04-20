`timescale 1ns / 1ps

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

    // EXTENDED MULTIPLICATION TEST CASES INCLUDING LARGE & PRECISE VALUES
    send_fpu_op(8'h03, 32'h3F800000, 32'h3F800000); // 1.0 * 1.0
    send_fpu_op(8'h03, 32'h40000000, 32'h40400000); // 2.0 * 3.0
    send_fpu_op(8'h03, 32'h3FC00000, 32'h00000001); // 1.5 * denorm
    send_fpu_op(8'h03, 32'h3F000000, 32'h3F000000); // denorm * denorm
    send_fpu_op(8'h03, 32'hC0000000, 32'h40400000); // -2.0 * 3.0
    send_fpu_op(8'h03, 32'h3F800000, 32'hBF800000); // 1.0 * -1.0
    send_fpu_op(8'h03, 32'h7F800000, 32'h3F800000); // inf * 1.0
    send_fpu_op(8'h03, 32'h7FC00000, 32'h3F800000); // NaN * 1.0
    send_fpu_op(8'h03, 32'h00000000, 32'h3F800000); // 0.0 * 1.0
    send_fpu_op(8'h03, 32'h3F800000, 32'h00000000); // 1.0 * 0.0
    send_fpu_op(8'h03, 32'h00000000, 32'h00000000); // 0.0 * 0.0
    send_fpu_op(8'h03, 32'hFF800000, 32'h3F800000); // -inf * 1.0
    send_fpu_op(8'h03, 32'h3F800000, 32'hFF800000); // 1.0 * -inf
    send_fpu_op(8'h03, 32'h7F800000, 32'h00000000); // inf * 0.0
    send_fpu_op(8'h03, 32'hFF800000, 32'h00000000); // -inf * 0.0
    send_fpu_op(8'h03, 32'h7FC00000, 32'h7FC00000); // NaN * NaN
    send_fpu_op(8'h03, 32'h3EAAAAAB, 32'h3F800000); // ~0.333 * 1.0
    send_fpu_op(8'h03, 32'h3F800000, 32'h3EAAAAAB); // 1.0 * ~0.333
    send_fpu_op(8'h03, 32'h3EAAAAAB, 32'h3EAAAAAB); // ~0.333 * ~0.333
    send_fpu_op(8'h03, 32'h3F800000, 32'h3F000000); // 1.0 * 0.5
    send_fpu_op(8'h03, 32'h3F000000, 32'h3F800000); // 0.5 * 1.0
    send_fpu_op(8'h03, 32'h3F000000, 32'h3F000000); // 0.5 * 0.5
    send_fpu_op(8'h03, 32'h00000001, 32'h3F800000); // smallest denorm * 1.0
    send_fpu_op(8'h03, 32'h3F800000, 32'h00000001); // 1.0 * smallest denorm
    send_fpu_op(8'h03, 32'hFF800000, 32'h7F800000); // -inf * +inf
    send_fpu_op(8'h03, 32'h4F000000, 32'h4F000000); // large * large (2^31 * 2^31)
    send_fpu_op(8'h03, 32'h3E4CCCCD, 32'h3DCCCCCD); // 0.2 * 0.1
    send_fpu_op(8'h03, 32'h3F4CCCCD, 32'h3F19999A); // 0.8 * 0.6
    send_fpu_op(8'h03, 32'h3FC00000, 32'h3FA00000); // 1.5 * 1.25
    send_fpu_op(8'h03, 32'h3DCCCCCD, 32'h3DCCCCCD); // 0.1 * 0.1
    send_fpu_op(8'h03, 32'h41200000, 32'h40A00000); // 10.0 * 5.0

    $stop;
  end

endmodule