`timescale 1ns/1ps

module COUNTER #(
    parameter width = 4
)
(
    input clk, // 1 bit input clock signal
    input rst, // 1 bit input reset signal
    input en, // 1 bit input enable signal
    output reg [width - 1:0] count // 8 bit output
);

    wire [width - 1:0] nxt_count;
    
    assign nxt_count = count + 1; //This implements a 2 to 1 mux

    always @(posedge clk) begin
        if (rst)
            count <= 0;
        else if (en)
            count <= nxt_count;
    end
    
endmodule
