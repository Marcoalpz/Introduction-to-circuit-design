module ALUEXT (
    input [7:0] A, //8 bit input
    input [7:0] B, //8 bit input
    input [1:0] S, // 2 bit input to transform 
    output [7:0] OPA,
    output reg [7:0] OPB,
    output c //Carry In
);
    always @(*) begin
        case (S)
            2'b00 : OPB = B;
            2'b01 : OPB = ~B; // Bitwise B
            2'b10 : OPB = 0;
            2'b11 : OPB = 0;
            default : OPB = B;
        endcase
    end

    assign OPA = A;
    assign c = S[1] ^ S[0]; // Y XOR Z to generate the +1 condition adder


endmodule
