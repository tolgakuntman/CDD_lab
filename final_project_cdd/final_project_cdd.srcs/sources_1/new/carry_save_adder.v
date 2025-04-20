`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: KULeuven
// Engineer: Tolga Kuntman
// 
// Create Date: 04/18/2025 07:02:12 PM
// Design Name: 
// Module Name: carry_save_adder
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


module carry_save_adder
#(
    parameter WIDTH = 8
)
(
    input wire [WIDTH-1:0] iA, iB, iC,
    output wire [WIDTH-1:0] oS,
    output wire [WIDTH:0] oC
);

    assign oS = iA ^ iB ^ iC;
    assign oC = ((iA & iB) | (iB & iC) | (iA & iC)) << 1;
    
endmodule
