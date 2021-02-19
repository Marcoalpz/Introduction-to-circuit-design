module MUX2TO1 (
    input [7:0] A,
    input [7:0] B,
    input       SEL,
    output [7:0] OUT
);
    assign OUT = (SEL) ? A : B; 
    
endmodule
