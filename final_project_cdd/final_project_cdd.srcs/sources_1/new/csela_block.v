`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/17/2025 12:04:50 PM
// Design Name: 
// Module Name: csela_block
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

module csela_block #(
    parameter WIDTH = 32,
    parameter SUB_BLOCK_WIDTH = 4
)(
    input  wire [WIDTH-1:0] iA,
    input  wire [WIDTH-1:0] iB,
    input  wire             iCin,
    output wire [WIDTH-1:0] oSum,
    output wire             oCout
);

    wire [WIDTH-1:0] sum_c0, sum_c1;
    wire carry_c0, carry_c1;

    // BCLA with carry = 0
    blocked_carry_lookahead_adder #(
        .WIDTH(WIDTH),
        .BLOCK_WIDTH(SUB_BLOCK_WIDTH)
    ) bcla_0 (
        .iA(iA),
        .iB(iB),
        .iC(1'b0),
        .oS(sum_c0),
        .oC(carry_c0)
    );

    // BCLA with carry = 1
    blocked_carry_lookahead_adder #(
        .WIDTH(WIDTH),
        .BLOCK_WIDTH(SUB_BLOCK_WIDTH)
    ) bcla_1 (
        .iA(iA),
        .iB(iB),
        .iC(1'b1),
        .oS(sum_c1),
        .oC(carry_c1)
    );

    // Mux logic
    assign oSum  = (iCin) ? sum_c1  : sum_c0;
    assign oCout = (iCin) ? carry_c1 : carry_c0;

endmodule
