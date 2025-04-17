`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
// Engineer: You
// 
// Module Name: fpu_add (sequential)
// Description: IEEE-754 single-precision floating-point addition
//              using carry_lookahead_adder. Now pipelined to improve timing.
//////////////////////////////////////////////////////////////////////////////////

module fpu_add (
    input  wire        iClk,
    input  wire        iRst,
    input  wire        iStart,
    input  wire        iSignA, iSignB,
    input  wire [7:0]  iExpA,  iExpB,
    input  wire [23:0] iMantA, iMantB,
    output reg  [24:0] oMantSum,
    output reg  [7:0]  oExp,
    output reg         oSign,
    output reg         oDone,
    output wire        oInvalid
);

    localparam IDLE = 2'b00, ALIGN = 2'b01, ADD = 2'b10, DONE = 2'b11;
    reg [1:0] rState;

    reg [24:0] rAlignedA, rAlignedB;
    reg [7:0]  rExpDiff, rResultExp;
    reg        rDoSub, rSignA, rSignB;
    reg [24:0] rOpA, rOpB;
    reg        rAGreater;

    wire [24:0] wCLA_Sum;
    wire        wCLA_Carry;

    // CLA instance
    carry_lookahead_adder #(.WIDTH(25)) CLA (
        .iC(rDoSub),
        .iA(rOpA),
        .iB(rOpB),
        .oS(wCLA_Sum),
        .oC(wCLA_Carry)
    );

    assign oInvalid = 1'b0;

    always @(posedge iClk) begin
        if (iRst) begin
            rState <= IDLE;
            oDone  <= 0;
        end else begin
            case (rState)
                IDLE: begin
                    oDone <= 0;
                    if (iStart) begin
                        rExpDiff <= (iExpA >= iExpB) ? (iExpA - iExpB) : (iExpB - iExpA);
                        rResultExp <= (iExpA >= iExpB) ? iExpA : iExpB;
                        rAlignedA <= (iExpA >= iExpB) ? {1'b0, iMantA} : ({1'b0, iMantA} >> (iExpB - iExpA));
                        rAlignedB <= (iExpA >= iExpB) ? ({1'b0, iMantB} >> (iExpA - iExpB)) : {1'b0, iMantB};
                        rSignA <= iSignA;
                        rSignB <= iSignB;
                        rDoSub <= (iSignA != iSignB);
                        rAGreater <= ((iExpA > iExpB) || (iExpA == iExpB && iMantA >= iMantB));
                        rState <= ALIGN;
                    end
                end

                ALIGN: begin
                    if (rDoSub) begin
                        if (rAGreater) begin
                            rOpA <= rAlignedA;
                            rOpB <= ~rAlignedB;
                            oSign <= rSignA;
                        end else begin
                            rOpA <= rAlignedB;
                            rOpB <= ~rAlignedA;
                            oSign <= rSignB;
                        end
                    end else begin
                        rOpA <= rAlignedA;
                        rOpB <= rAlignedB;
                        oSign <= rSignA;
                    end
                    oExp <= rResultExp;
                    rState <= ADD;
                end

                ADD: begin
                    oMantSum <= wCLA_Sum;
                    rState <= DONE;
                end

                DONE: begin
                    oDone <= 1;
                    if (!iStart)
                        rState <= IDLE;
                end
            endcase
        end
    end

endmodule
