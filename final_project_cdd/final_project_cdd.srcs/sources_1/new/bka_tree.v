module bka_tree #(
    parameter WIDTH = 128
)(
    input  wire [WIDTH-1:0] iA,
    input  wire [WIDTH-1:0] iB,
    input  wire             iCin,
    output wire [WIDTH-1:0] oSum,
    output wire             oCout
);

    localparam LEVELS = $clog2(WIDTH);

    wire [WIDTH-1:0] P_lvl0, G_lvl0;
    wire [WIDTH-1:0] Carry;
    assign Carry[0] = iCin;

    // Step 1: Pre-processing
    bka_propagate_generate #(.ADDER_WIDTH(WIDTH)) pg_inst (
        .iA(iA),
        .iB(iB),
        .oP(P_lvl0),
        .oG(G_lvl0)
    );

    // Step 2: Black cell prefix tree (P_tree and G_tree)
    wire [WIDTH-1:0] P_tree [0:LEVELS-1];
    wire [WIDTH-1:0] G_tree [0:LEVELS-1];

    genvar l, i;
    generate
        for (l = 0; l < LEVELS; l = l + 1) begin : level_loop
            localparam STRIDE = 1 << (l + 1);
            for (i = STRIDE - 1; i < WIDTH; i = i + STRIDE) begin : node_loop
                wire Pi, Gi, Pj, Gj;

                assign Pi = (l == 0) ? P_lvl0[i] : P_tree[l-1][i];
                assign Gi = (l == 0) ? G_lvl0[i] : G_tree[l-1][i];
                assign Pj = (l == 0) ? P_lvl0[i - (STRIDE >> 1)] : P_tree[l-1][i - (STRIDE >> 1)];
                assign Gj = (l == 0) ? G_lvl0[i - (STRIDE >> 1)] : G_tree[l-1][i - (STRIDE >> 1)];

                bka_black_cell blk (
                    .Pi(Pi), .Gi(Gi),
                    .Pj(Pj), .Gj(Gj),
                    .Po(P_tree[l][i]),
                    .Go(G_tree[l][i])
                );
            end
        end
    endgenerate

    // Step 3: Gray cells for carry-in computation
    genvar j;
    generate
        for (j = 1; j < WIDTH; j = j + 1) begin : gray_cells
            wire Gi, Pj_chain, Gj_chain;

            assign Gi       = G_lvl0[j-1];
            assign Pj_chain = P_lvl0[j-1];
            assign Gj_chain = Carry[j-1];

            bka_gray_cell gray (
                .Gi(Gi),
                .Pj(Pj_chain),
                .Gj(Gj_chain),
                .Go(Carry[j])
            );
        end
    endgenerate

    // Step 4: Post-processing - compute final sum
    genvar k;
    generate
        for (k = 0; k < WIDTH; k = k + 1) begin : sum_loop
            assign oSum[k] = P_lvl0[k] ^ Carry[k];
        end
    endgenerate

    assign oCout = Carry[WIDTH-1];

endmodule