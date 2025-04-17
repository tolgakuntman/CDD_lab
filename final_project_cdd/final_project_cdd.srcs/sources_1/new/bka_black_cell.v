`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/16/2025 03:52:04 PM
// Design Name: 
// Module Name: bka_black_cell
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


module bka_black_cell (
    input  wire Pi, Gi,  // Right input (higher index)
    input  wire Pj, Gj,  // Left input (lower index)
    output wire Po, Go
);
    assign Po = Pi & Pj;
    assign Go = Gi | (Pi & Gj);  // Correct generate logic
endmodule


