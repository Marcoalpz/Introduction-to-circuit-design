module ALUA (
    input [7:0] A,
    input [7:0] B,
    input [1:0] SEL,
    output [7:0] OUT
);
    wire [7:0] c0, c1, c3; 
    wire c2;

    ALUEXT aluext(.A(A), .B(B), .S(SEL), .OPA(c0), .OPB(c1), .c(c2) );
    ADDER adder(.IA(c0), .IB(c1), .cin(c2), .IS(c3), .cout() );
    assign OUT = c3;

endmodule
