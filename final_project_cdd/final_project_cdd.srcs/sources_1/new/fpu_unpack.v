`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Tolga Kuntman
// 
// Module Name: fpu_unpack
// Description: Unpacks a 32-bit IEEE-754 floating-point number into
//              sign, exponent, mantissa (with hidden bit),
//              and classification flags.
//
// IEEE-754 single-precision: [sign][8-bit exponent][23-bit fraction]
// Representation: (-1)^sign * (1.fraction) * 2^(exponent - 127)
//
// Special Cases:
// - If exponent == 0 and fraction ? 0 => denormalized (no leading 1)
// - If exponent == 255 and fraction == 0 => infinity
// - If exponent == 255 and fraction ? 0 => NaN
//////////////////////////////////////////////////////////////////////////////////

module fpu_unpack (
    input  wire [31:0] iIn,              // IEEE-754 float input
    output wire        oSign,            // Sign bit
    output wire [7:0]  oExp,             // Raw exponent
    output wire [23:0] oMant,            // Mantissa + hidden bit
    output wire        oIsZero,          // All bits zero
    output wire        oIsInf,           // Exponent = 255, Mantissa = 0
    output wire        oIsNaN,           // Exponent = 255, Mantissa ? 0
    output wire        oIsDenorm         // Exponent = 0 (denormalized)
);

    wire [22:0] rawMant = iIn[22:0];
    wire [7:0]  rawExp  = iIn[30:23];

    assign oSign = iIn[31];
    assign oExp  = rawExp;

    // Denormalized if exp == 0 (no implicit leading 1)
    assign oIsDenorm = (rawExp == 8'b0);

    // NaN if exp == 255 and mantissa ? 0
    assign oIsNaN = (rawExp == 8'hFF) && (rawMant != 0);

    // Inf if exp == 255 and mantissa == 0
    assign oIsInf = (rawExp == 8'hFF) && (rawMant == 0);

    // Zero if all bits except sign are 0
    assign oIsZero = (iIn[30:0] == 31'b0);

    // Mantissa with hidden bit (1 for normalized, 0 for denormalized)
    assign oMant = oIsDenorm ? {1'b0, rawMant} : {1'b1, rawMant};

endmodule
