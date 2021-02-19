module ALU (
    input [7:0] A, //8 bit input
    input [7:0] B, //8 bit input
    input [2:0] XYZ,
    output [7:0] OUT
);
    wire [7:0] c1, c2;
    ALUA alua(.A(A), .B(B), .SEL({XYZ[1], XYZ[0]}), .OUT(c1) );
    ALUL alul(.A(A), .B(B), .SEL({XYZ[1], XYZ[0]}), .OUT(c2) );
    MUX2TO1 mux2to1 (.A(c1), .B(c2), .SEL(XYZ[2]), .OUT(OUT) );
endmodule
