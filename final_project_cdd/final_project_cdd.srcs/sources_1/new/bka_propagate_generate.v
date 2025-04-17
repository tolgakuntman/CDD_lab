`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/16/2025 03:19:30 PM
// Design Name: 
// Module Name: bka_propagate_generate
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


module bka_propagate_generate#(
    parameter   ADDER_WIDTH = 8
)
(
    input   wire [ADDER_WIDTH-1:0]  iA, iB, 
    output wire    [ADDER_WIDTH-1:0]  oP, oG
    );
    assign oP = iA ^ iB;
    assign oG = iA & iB;
endmodule
