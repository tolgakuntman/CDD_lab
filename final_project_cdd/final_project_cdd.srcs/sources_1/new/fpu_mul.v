`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/18/2025 05:01:36 PM
// Design Name: 
// Module Name: fpu_mul
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

module fpu_mul (
    input  wire        iSignA, iSignB,
    input  wire [7:0]  iExpA, iExpB,
    input  wire [23:0] iMantA, iMantB, // includes hidden bit
    output wire        oSign,
    output wire [7:0]  oExp,
    output wire [47:0] oMantProd // full product before normalization
);
    assign oSign = iSignA ^ iSignB;
    assign oExp = iExpA + iExpB - 8'd127;
    wire [47:0] partial_products [11:0];

    genvar i;
    generate
        wire [24:0] padded_multiplier;
        wire [24:0] rawminuses [1:0];
        assign padded_multiplier = {iMantB, 1'b0};
        
        wire signed [47:0] multiplicand = {24'b0, iMantA};
        
        wire signed [47:0] adds [2:0];
        assign adds[0] = 48'd0;
        assign adds[1] = multiplicand;
        assign adds[2] = multiplicand << 1;
        
        wire signed [47:0] minuses [2:0];
        assign minuses[0] = 48'd0;
        twos_complementer #(.WIDTH(25)) comp1 (.iA(adds[1][24:0]), .oA(rawminuses[0]));
        twos_complementer #(.WIDTH(25)) comp2 (.iA(adds[2][24:0]), .oA(rawminuses[1]));
        // sign extend
        assign minuses[1] = {{(23){1'b1}}, rawminuses[0]}; 
        assign minuses[2] = {{(23){1'b1}}, rawminuses[1]}; 
//        assign minuses[1] = -adds[1];
//        assign minuses[2] = -adds[2];
        for(i=1; i < 24; i = i+2)
        begin
            // extract current booth block
            wire [2:0] booth_block;
            assign booth_block = padded_multiplier[i+1:i-1];
            
            // booth encode based on table
            wire [2:0] booth_encoded; // NEG-TWO-ONE encoding table
            assign booth_encoded[2] = booth_block[2];
            assign booth_encoded[1] = ~^booth_block[1:0] & (booth_block[2] ^ booth_block[1]);
            assign booth_encoded[0] = ^booth_block[1:0];
           
            // decode booth block into partial products
            // and sign extend negative partial product
            wire [47:0] positive_partial_product, raw_negative_partial_product, negative_partial_product;
            assign positive_partial_product = adds[booth_encoded[1:0]] << (i-1);
            assign negative_partial_product = minuses[booth_encoded[1:0]] << (i-1);
            
            // assign final partial product based on sign bit in booth encoding
            assign partial_products[(i-1)/2] = 
            (booth_encoded[2] == 0) ? positive_partial_product : negative_partial_product ;
        end
    endgenerate
        // compress partial products with CSA
    // wires for inputs to each CSA
    wire [47:0] wi1 [10:0];
    wire [47:0] wi2 [10:0];
    assign wi1[0] = partial_products[0];
    assign wi2[0] = {1'b0, partial_products[1] };
    generate
        for(i=0; i < 10; i = i+1)
        begin
            carry_save_adder #(.WIDTH(48)) 
            CSA (
                .iA(wi1[i]), .iB(wi2[i][47:0]), .iC(partial_products[i+2]), .oS(wi1[i+1]), .oC(wi2[i+1])
            );
        end
    endgenerate
    
    wire carry_out;
    carry_lookahead_adder #( .WIDTH(48) ) 
        adder_inst   (
            .iA( wi1[10] ), 
            .iB( wi2[10][47:0] ),
            .iC( 1'b0 ),
            .oS( oMantProd ),
            .oC( carry_out )
          );
    
endmodule

