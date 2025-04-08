`timescale 1ns / 1ps

module wrap_adder #(
    parameter OPERAND_WIDTH = 128
)(
    input  wire iClk,
    input  wire iRst,
    output wire oXorResult
);

    // --------------------------------------------
    // Counter to generate input patterns
    // --------------------------------------------
    reg [OPERAND_WIDTH-1:0] rCnt = 0;
    always @(posedge iClk) begin
        if (iRst) rCnt <= 0;
        else      rCnt <= rCnt + 1;
    end

    // --------------------------------------------
    // Adder output wires
    // --------------------------------------------
    wire [OPERAND_WIDTH-1:0] wSum;
    wire                     wCout;

    // --------------------------------------------
    // Instantiate CLA directly with counter as both inputs
    // --------------------------------------------
    cla #(
        .WIDTH(OPERAND_WIDTH)
    ) cla_inst (
        .A(rCnt),
        .B(rCnt),
        .Cin(1'b0),
        .Sum(wSum),
        .Cout(wCout)
    );

    // --------------------------------------------
    // Output registers (after adder)
    // --------------------------------------------
    reg [OPERAND_WIDTH:0] oRes_reg;
    always @(posedge iClk) begin
        if (iRst) oRes_reg <= 0;
        else      oRes_reg <= {wCout, wSum};
    end

    // --------------------------------------------
    // XOR reduction to force usage
    // --------------------------------------------
    assign oXorResult = ^oRes_reg; // XOR all bits

endmodule
