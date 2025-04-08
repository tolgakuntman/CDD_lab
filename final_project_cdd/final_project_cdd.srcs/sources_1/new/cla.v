`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/02/2025 10:36:26 AM
// Design Name: 
// Module Name: cla
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

`timescale 1ns / 1ps

module cla #(
    parameter WIDTH = 32
)(
    input  wire [WIDTH-1:0] iA,
    input  wire [WIDTH-1:0] iB,
    input  wire             Cin,
    output wire [WIDTH-1:0] oSum,
    output wire             Cout
);

    // Generate and Propagate signals
    wire [WIDTH-1:0] G;   // Generate: A & B
    wire [WIDTH-1:0] P;   // Propagate: A ^ B

    // Carry signals: one extra bit for final carry-out
    wire [WIDTH:0] C;

    assign C[0] = Cin;

    genvar i;
    generate
        for (i = 0; i < WIDTH; i = i + 1) begin : CLA_BIT
            assign G[i] = iA[i] & iB[i];
            assign P[i] = iA[i] ^ iB[i];
            assign C[i+1] = G[i] | (P[i] & C[i]);
            assign oSum[i] = P[i] ^ C[i];
        end
    endgenerate

    assign Cout = C[WIDTH];

endmodule

