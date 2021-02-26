module ALU (
    input [7:0] A, // 8 bit input
    input [7:0] B, // 8 bit input
    input [2:0] XYZ, // 3 bit operation selector
    output [7:0] OUT, // 8 bit output
    output N, // 1 bit negative flag
    output Z, // 1 bit zero flag
    output V, // 1 bit overflow flag
    output C // 1 bit carry flag
);
    wire [7:0] c1, c2;
    ALUA alua(.A(A), .B(B), .SEL({XYZ[1], XYZ[0]}), .OUT(c1), .V(V), .C(C) );
    ALUL alul(.A(A), .B(B), .SEL({XYZ[1], XYZ[0]}), .OUT(c2) );
    MUX2TO1 mux2to1 (.A(c1), .B(c2), .SEL(XYZ[2]), .OUT(OUT) );

    assign Z = (OUT == 1'b0) ? 1 : 0; // Zero flag
    assign N = (OUT[7] == 1'b1 & V == 1'b0); //Negative flag
endmodule
