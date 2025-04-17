`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/16/2025 03:51:09 PM
// Design Name: 
// Module Name: bka_gray_cell
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

module bka_gray_cell (
    input  wire Gi,
    input  wire Pj, Gj,
    output wire Go
);
    assign Go = Gj | (Pj & Gi);
endmodule

