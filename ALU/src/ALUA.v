module ALUA (
    input [7:0] A, // 8 bit input
    input [7:0] B, // 8 bit input
    input [1:0] SEL, // 2 bit input selector
    output [7:0] OUT, // 8 bit output
    output V, // 1 bit overflow flag
    output C // 1 bit carry out flag
);
    wire [7:0] c0, c1, c3; 
    wire c2;

    ALUEXT aluext(.A(A), .B(B), .S(SEL), .OPA(c0), .OPB(c1), .c(c2) );
    ADDER adder(.IA(c0), .IB(c1), .cin(c2), .IS(c3), .cout(C) );

    //V = A'B'C + ABC'
    assign V = (~A[0] & ~B[0] & c3[0] | A[0] & B[0] & ~c3[0]) ? 1 : 0; // Carry out flag
    assign OUT = c3;


endmodule
