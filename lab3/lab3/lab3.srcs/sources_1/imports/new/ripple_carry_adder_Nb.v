`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/19/2025 09:36:52 AM
// Design Name: 
// Module Name: ripple_carry_adder_Nb
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

module ripple_carry_adder_Nb #(
    parameter   ADDER_WIDTH = 16
)
(
    input   wire [ADDER_WIDTH-1:0]  iA, iB, 
    input   wire                    iCarry,
    output  wire [ADDER_WIDTH-1:0]  oSum, 
    output  wire                    oCarry
);
   wire [ADDER_WIDTH:0] wC;
    assign wC[0] = iCarry;
    
    genvar i;
    
    generate 
        for (i=0; i < ADDER_WIDTH; i = i+1)
        begin
            full_adder FAs
                (.iA(iA[i]), .iB(iB[i]), .iCarry(wC[i]),.oCarry(wC[i+1]), .oSum(oSum[i]));
        end 
    endgenerate
     
    assign oCarry = wC[ADDER_WIDTH];
endmodule

