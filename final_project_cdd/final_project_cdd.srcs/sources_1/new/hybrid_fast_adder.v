`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// University: KU Leuven Group T Campus 
// Engineer: Tolga Kuntman
//
// Module Name: hybrid_fast_adder
// Description: {32, 64, 64, 64, 32} CSelA + BCLA hybrid
//////////////////////////////////////////////////////////////////////////////////

module hybrid_fast_adder
#(
    parameter WIDTH = 256
)(
    input  wire iC,
    input  wire [WIDTH-1:0] iA, iB,
    output wire [WIDTH-1:0] oS,
    output wire             oC
);

    wire [4:0] wCs;
    assign wCs[0] = iC;

    /////////////////////////////////////////////
    // Block 0: 32-bit BCLA (real carry-in)
    /////////////////////////////////////////////
    blocked_carry_lookahead_adder #(
        .WIDTH(32),
        .BLOCK_WIDTH(8)
    ) BCLA_0 (
        .iA(iA[0 +: 32]),
        .iB(iB[0 +: 32]),
        .iC(iC),
        .oS(oS[0 +: 32]),
        .oC(wCs[1])
    );

    /////////////////////////////////////////////
    // Block 1: 64-bit CSelA
    /////////////////////////////////////////////
    wire [63:0] wS1_0, wS1_1;
    wire wC1_0, wC1_1;

    blocked_carry_lookahead_adder #(.WIDTH(64), .BLOCK_WIDTH(16)) BCLA_1_0 (
        .iA(iA[32 +: 64]),
        .iB(iB[32 +: 64]),
        .iC(1'b0),
        .oS(wS1_0),
        .oC(wC1_0)
    );

    blocked_carry_lookahead_adder #(.WIDTH(64), .BLOCK_WIDTH(16)) BCLA_1_1 (
        .iA(iA[32 +: 64]),
        .iB(iB[32 +: 64]),
        .iC(1'b1),
        .oS(wS1_1),
        .oC(wC1_1)
    );

    assign oS[32 +: 64] = wCs[1] ? wS1_1 : wS1_0;
    assign wCs[2]       = wCs[1] ? wC1_1 : wC1_0;

    /////////////////////////////////////////////
    // Block 2: 64-bit CSelA
    /////////////////////////////////////////////
    wire [63:0] wS2_0, wS2_1;
    wire wC2_0, wC2_1;

    blocked_carry_lookahead_adder #(.WIDTH(64), .BLOCK_WIDTH(16)) BCLA_2_0 (
        .iA(iA[96 +: 64]),
        .iB(iB[96 +: 64]),
        .iC(1'b0),
        .oS(wS2_0),
        .oC(wC2_0)
    );

    blocked_carry_lookahead_adder #(.WIDTH(64), .BLOCK_WIDTH(16)) BCLA_2_1 (
        .iA(iA[96 +: 64]),
        .iB(iB[96 +: 64]),
        .iC(1'b1),
        .oS(wS2_1),
        .oC(wC2_1)
    );

    assign oS[96 +: 64] = wCs[2] ? wS2_1 : wS2_0;
    assign wCs[3]       = wCs[2] ? wC2_1 : wC2_0;

    /////////////////////////////////////////////
    // Block 3: 64-bit CSelA
    /////////////////////////////////////////////
    wire [63:0] wS3_0, wS3_1;
    wire wC3_0, wC3_1;

    blocked_carry_lookahead_adder #(.WIDTH(64), .BLOCK_WIDTH(16)) BCLA_3_0 (
        .iA(iA[160 +: 64]),
        .iB(iB[160 +: 64]),
        .iC(1'b0),
        .oS(wS3_0),
        .oC(wC3_0)
    );

    blocked_carry_lookahead_adder #(.WIDTH(64), .BLOCK_WIDTH(16)) BCLA_3_1 (
        .iA(iA[160 +: 64]),
        .iB(iB[160 +: 64]),
        .iC(1'b1),
        .oS(wS3_1),
        .oC(wC3_1)
    );

    assign oS[160 +: 64] = wCs[3] ? wS3_1 : wS3_0;
    assign wCs[4]        = wCs[3] ? wC3_1 : wC3_0;

    /////////////////////////////////////////////
    // Block 4: 32-bit CSelA
    /////////////////////////////////////////////
    wire [31:0] wS4_0, wS4_1;
    wire wC4_0, wC4_1;

    blocked_carry_lookahead_adder #(.WIDTH(32), .BLOCK_WIDTH(8)) BCLA_4_0 (
        .iA(iA[224 +: 32]),
        .iB(iB[224 +: 32]),
        .iC(1'b0),
        .oS(wS4_0),
        .oC(wC4_0)
    );

    blocked_carry_lookahead_adder #(.WIDTH(32), .BLOCK_WIDTH(8)) BCLA_4_1 (
        .iA(iA[224 +: 32]),
        .iB(iB[224 +: 32]),
        .iC(1'b1),
        .oS(wS4_1),
        .oC(wC4_1)
    );

    assign oS[224 +: 32] = wCs[4] ? wS4_1 : wS4_0;
    assign oC            = wCs[4] ? wC4_1 : wC4_0;

endmodule
