module DECODER (
    input[3:0] BCD,
    output reg [6:0] segment
);
    always @(*) begin
        case (BCD)
            0 : segment = ~ 7'b0111111;
            1 : segment = ~ 7'b0000110;
            2 : segment = ~ 7'b1011011;
            3 : segment = ~ 7'b1001111;
            4 : segment = ~ 7'b1100110;
            5 : segment = ~ 7'b1101101;
            6 : segment = ~ 7'b1111101;
            7 : segment = ~ 7'b0000111;
            8 : segment = ~ 7'b1111111;
            9 : segment = ~ 7'b1100111;  
            default: segment = 7'bx; 
        endcase
    end
endmodule
