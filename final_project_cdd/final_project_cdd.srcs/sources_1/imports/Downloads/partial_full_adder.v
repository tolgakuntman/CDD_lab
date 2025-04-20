`timescale 1ns / 1ps

module partial_full_adder(
    input wire iA, iB, iC,
    output wire oS, oP, oG
    );
    
    
    assign oS = (iA ^ iB) ^ (iC);
    assign oP = iA | iB;
    assign oG = iA & iB;
    
endmodule
