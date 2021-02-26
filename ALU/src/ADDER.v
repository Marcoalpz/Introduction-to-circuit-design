module ADDER (
    input [7:0] IA, // 8 bit input
    input [7:0] IB, // 8 bit input
    input       cin, // 1 bit input carry in
    output [7:0] IS, // 8 bit output number
    output       cout // 1 bit output sign
);

    assign {cout, IS} = IA + IB + cin; 
    
endmodule
