`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/17/2025 10:21:41 PM
// Design Name: 
// Module Name: fpu_core
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
//////////////////////////////////////////////////////////////////////////////////

module fpu_core (
    input  wire        iClk,
    input  wire        iRst,
    input  wire        iStart,
    input  wire [7:0]  iOpCode,
    input  wire [31:0] iA,
    input  wire [31:0] iB,
    output reg  [31:0] oResult,
    output reg         oDone
);

    localparam IDLE      = 3'b000;
    localparam UNPACK    = 3'b001;
    localparam START_EXE = 3'b010;
    localparam WAIT_EXE  = 3'b011;
    localparam NORMALIZE = 3'b100;
    localparam PACK      = 3'b101;
    localparam DONE      = 3'b110;
    localparam ROUND     = 3'b111;
    reg [2:0] rState;

    reg        signA, signB;
    reg [7:0]  expA, expB;
    reg [23:0] mantA, mantB;

    reg        signRes;
    reg [7:0]  expRes;
    reg [24:0] mantRes;
    reg [23:0] mantLowProduct;
    reg rStartExe;
    wire wDoneExe;

    reg guardBit, roundBit, stickyBit;
    wire [24:0] wMantSum;
    wire [7:0]  wExpOut;
    wire        wSignOut;
    wire        wInvalid;

    wire [47:0] wMantProd;
    wire [7:0]  wExpMul;
    wire        wSignMul;
    wire        wDoneMul;

    localparam OP_FPU_ADD = 8'b00000001;
    localparam OP_FPU_SUB = 8'b00000010;
    localparam OP_FPU_MUL = 8'b00000011;

    fpu_add fpu_add_inst (
        .iClk(iClk),
        .iRst(iRst),
        .iStart(rStartExe),
        .iSignA(signA),
        .iSignB(signB),
        .iExpA(expA),
        .iExpB(expB),
        .iMantA(mantA),
        .iMantB(mantB),
        .oMantSum(wMantSum),
        .oExp(wExpOut),
        .oSign(wSignOut),
        .oDone(wDoneExe),
        .oInvalid(wInvalid)
    );

    fpu_mul fpu_mul_inst (
        .iClk(iClk),
        .iRst(iRst),
        .iStart(rStartExe),
        .iSignA(signA),
        .iSignB(signB),
        .iExpA(expA),
        .iExpB(expB),
        .iMantA(mantA),
        .iMantB(mantB),
        .oSign(wSignMul),
        .oExp(wExpMul),
        .oMantProd(wMantProd),
        .oDone(wDoneMul)
    );

    always @(posedge iClk) begin
        if (iRst) begin
            rState   <= IDLE;
            oDone    <= 0;
            oResult  <= 32'b0;
            rStartExe <= 0;
        end else begin
            case (rState)
                IDLE: begin
                    oDone <= 0;
                    if (iStart && (iOpCode >= OP_FPU_ADD)) begin
                        rState <= UNPACK;
                    end
                end

                UNPACK: begin
                    signA <= iA[31];
                    expA  <= iA[30:23];
                    mantA <= (iA[30:23] == 8'b0) ? {1'b0, iA[22:0]} : {1'b1, iA[22:0]};

                    signB <= (iOpCode == OP_FPU_SUB) ? ~iB[31] : iB[31];
                    expB  <= iB[30:23];
                    mantB <= (iB[30:23] == 8'b0) ? {1'b0, iB[22:0]} : {1'b1, iB[22:0]};

                    rStartExe <= 1;
                    rState <= START_EXE;
                end

                START_EXE: begin
                    rStartExe <= 0;
                    rState <= WAIT_EXE;
                end

                WAIT_EXE: begin
                    rStartExe <= 0;
                    if (iOpCode == OP_FPU_MUL && wDoneMul) begin
                        mantRes <= wMantProd[47:23];
                        stickyBit <= |wMantProd[20:0];
                        roundBit <= wMantProd[21];
                        guardBit <= wMantProd[22];
                        expRes  <= wExpMul;
                        signRes <= wSignMul;
                        rState  <= ROUND;
                    end else if ((iOpCode == OP_FPU_ADD || iOpCode == OP_FPU_SUB) && wDoneExe) begin
                        mantRes <= wMantSum;
                        expRes  <= wExpOut;
                        signRes <= wSignOut;
                        rState  <= NORMALIZE;
                    end
                end

                ROUND: begin
                    if (guardBit && (roundBit || stickyBit)) begin
                        mantRes <= mantRes + 1;
                    end
                    rState <= NORMALIZE;
                end

                NORMALIZE: begin
                    if (mantRes[24]) begin
                        mantRes <= mantRes >> 1;
                        expRes  <= expRes + 1;
                    end else if (mantRes[23] == 0 && expRes > 0) begin
                        mantRes <= mantRes << 1;
                        expRes  <= expRes - 1;
                    end else begin
                        rState <= PACK;
                    end
                end

                PACK: begin
                    oResult <= {signRes, expRes, mantRes[22:0]};
                    rState <= DONE;
                end

                DONE: begin
                    oDone <= 1;
                    rState <= IDLE;
                end
            endcase
        end
    end
endmodule
