module COUNTERto7SEGMENT (
    input clk,
    input rst,
    output [6:0] segment
);
    wire clk_div;
    wire [6:0] BCD;
    CLOCK_DIVIDER clock_divider(
        .clk(clk), 
        .rst(rst), 
        .clk_div(clk_div)
    );
    COUNTER counter(
        .clk(clk),
        .rst(rst),
        .en(clk_div),
        .count(BCD)
    );
    DECODER decoder(
        .BCD(BCD),
        .segment(segment)
    );

endmodule
