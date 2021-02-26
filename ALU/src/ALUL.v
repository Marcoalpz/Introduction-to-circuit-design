module ALUL (
    input [7:0] A, // 8 bit input
    input [7:0] B, // 8 bit input
    input [1:0] SEL, // 2 bit selector
    output reg [7:0] OUT // 8 bit output
);
    always @(*) begin
        case (SEL)
            2'b00 : OUT = A & B; // AND bitwise
            2'b01 : OUT = A | B; // OR bitwise
            2'b10 : OUT = A ^ B; // XOR bitwise
            2'b11 : OUT = ~ A; // Negate A bitwise
            default : OUT = 8'bxx; // Default : x
        endcase
    end
endmodule
