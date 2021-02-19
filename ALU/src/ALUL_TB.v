`timescale 1ps/1ps

module ALUL_TB;

    integer i;
    integer j;
    reg [7:0] A;
    reg [7:0] B;
    reg [2:0] SEL;

    wire [7:0] OUT;

    ALUL uut(.A(A), .B(B), .SEL(SEL), .OUT(OUT));
    initial begin
        A = 0;
        B = 0;
        SEL = 0;
        #100;

        for ( i = 0; i < 15; i = i + 1) begin
            A = i;
            B = i + 1;
            for (j = 0; j < 8; j = j + 1 ) begin
                SEL = j;
                #100;
            end
        end
    end
endmodule
