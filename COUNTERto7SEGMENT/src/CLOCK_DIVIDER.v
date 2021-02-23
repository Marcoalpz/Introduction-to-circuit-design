module CLOCK_DIVIDER (
    input clk,
    input rst,
    output reg clk_div
);
    parameter constantNumber = 50000000; // Each 50 million pulses

    reg [31:0] count; // Register to store the count

    always @(posedge clk or posedge rst) begin
        if (rst == 1'b1)
            count <= 32'b0;
        else if (count == constantNumber - 1)
            count <= 32'b0;
        else
            count <= count + 1;
    end
    
    always @(posedge clk or posedge rst) begin
        if (rst == 1'b1)
            clk_div <= 1'b0;
        else if (count == constantNumber - 1)
            clk_div <= ~clk_div;
        else
            clk_div <= clk_div;
    end
endmodule