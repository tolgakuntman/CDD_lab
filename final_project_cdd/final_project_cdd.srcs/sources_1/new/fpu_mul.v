`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/18/2025
// Design Name: 
// Module Name: fpu_mul
// Description: 4-stage pipelined Radix-4 Booth Multiplier with start/done handshake
//////////////////////////////////////////////////////////////////////////////////

module fpu_mul #(
    parameter MANT_WIDTH = 24,
    parameter EXT_WIDTH  = MANT_WIDTH + 2,
    parameter PROD_WIDTH = 2 * EXT_WIDTH
)(
    input  wire                   iClk,
    input  wire                   iRst,
    input  wire                   iStart,
    input  wire                   iSignA, iSignB,
    input  wire [7:0]            iExpA, iExpB,
    input  wire [MANT_WIDTH-1:0] iMantA, iMantB,
    output reg                   oDone,
    output reg                   oSign,
    output reg  [7:0]            oExp,
    output reg  [PROD_WIDTH-1:0] oMantProd
);

    localparam NUM_PARTIALS = EXT_WIDTH / 2;

    reg [2:0] stage;

    wire [EXT_WIDTH-1:0] signed_mantA = {2'b00, iMantA};
    wire [EXT_WIDTH-1:0] signed_mantB = {2'b00, iMantB};
    wire [EXT_WIDTH:0]   padded_multiplier = {signed_mantB, 1'b0};
    wire signed [PROD_WIDTH-1:0] multiplicand = {{(PROD_WIDTH-EXT_WIDTH){signed_mantA[EXT_WIDTH-1]}}, signed_mantA};

    wire signed [PROD_WIDTH-1:0] adds [2:0];
    assign adds[0] = 0;
    assign adds[1] = multiplicand;
    assign adds[2] = multiplicand <<< 1;

    wire signed [PROD_WIDTH-1:0] minuses [2:0];
    assign minuses[0] = 0;
    assign minuses[1] = -adds[1];
    assign minuses[2] = -adds[2];

    wire [PROD_WIDTH-1:0] booth_partial_products [NUM_PARTIALS-1:0];

    genvar i;
    generate
        for (i = 1; i < EXT_WIDTH; i = i + 2) begin : booth_gen
            wire [2:0] booth_block = padded_multiplier[i+1:i-1];
            wire [2:0] booth_encoded;
            assign booth_encoded[2] = booth_block[2];
            assign booth_encoded[1] = ~^booth_block[1:0] & (booth_block[2] ^ booth_block[1]);
            assign booth_encoded[0] = ^booth_block[1:0];

            wire [PROD_WIDTH-1:0] pos_pp = adds[booth_encoded[1:0]] <<< (i-1);
            wire [PROD_WIDTH-1:0] neg_pp = minuses[booth_encoded[1:0]] <<< (i-1);

            assign booth_partial_products[(i-1)/2] = (booth_encoded[2] == 0) ? pos_pp : neg_pp;
        end
    endgenerate

    reg [PROD_WIDTH-1:0] r_partial_products [NUM_PARTIALS-1:0];
    reg [PROD_WIDTH-1:0] r_csa_sum, r_csa_carry;
    reg [PROD_WIDTH-1:0] r_final_sum;
    reg [7:0] r_exp_sum, r_exp_bias;

    wire [PROD_WIDTH-1:0] wi1 [NUM_PARTIALS-2:0];
    wire [PROD_WIDTH:0]   wi2 [NUM_PARTIALS-2:0];

    genvar k;
    generate
        for (k = 0; k < NUM_PARTIALS-2; k = k + 1) begin : csa_chain
            wire [PROD_WIDTH-1:0] s, c;
            carry_save_adder #(.WIDTH(PROD_WIDTH)) CSA (
                .iA(wi1[k]),
                .iB(wi2[k][PROD_WIDTH-1:0]),
                .iC(r_partial_products[k+2]),
                .oS(wi1[k+1]),
                .oC(wi2[k+1])
            );
        end
    endgenerate

    wire [PROD_WIDTH-1:0] final_sum;
    wire carry_out;
    carry_lookahead_adder #(.WIDTH(PROD_WIDTH)) CLA (
        .iA(r_csa_sum),
        .iB(r_csa_carry),
        .iC(1'b0),
        .oS(final_sum),
        .oC(carry_out)
    );

    integer j;
    always @(posedge iClk or posedge iRst) begin
        if (iRst) begin
            stage <= 0;
            oDone <= 0;
            oSign <= 0;
            oExp  <= 0;
            oMantProd <= 0;
            r_exp_sum <= 0;
            r_final_sum <= 0;
            r_exp_bias <= 0;
        end else begin
            case (stage)
                0: begin
                    oDone <= 0;
                    if (iStart) begin
                        oSign <= iSignA ^ iSignB;
                        r_exp_sum <= iExpA + iExpB;
                        stage <= 1;
                    end
                end

                1: begin
                    for (j = 0; j < NUM_PARTIALS; j = j + 1) begin
                        r_partial_products[j] <= booth_partial_products[j];
                    end
                    stage <= 2;
                end

                2: begin
                    r_csa_sum   <= wi1[NUM_PARTIALS-2];
                    r_csa_carry <= wi2[NUM_PARTIALS-2][PROD_WIDTH-1:0];
                    r_exp_bias  <= r_exp_sum - 8'd127;
                    stage <= 3;
                end

                3: begin
                    r_final_sum <= final_sum;
                    stage <= 4;
                end

                4: begin
                    oMantProd <= r_final_sum;
                    oExp      <= r_exp_bias;
                    oDone     <= 1;
                    stage     <= 0;
                end
            endcase
        end
    end

    assign wi1[0] = r_partial_products[0];
    assign wi2[0] = {1'b0, r_partial_products[1]};

endmodule
