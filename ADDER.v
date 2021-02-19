module ADDER (
    input [7:0] IA,
    input [7:0] IB,
    input       cin,
    output [7:0] IS,
    output       cout
);

    assign {cout, IS} = IA + IB + cin;
    
endmodule
