`timescale 1ns/1ps

module COUNTER (
    input clk, // 1 bit input clock signal
    input rst, // 1 bit input reset signal
    input en, // 1 bit input enable signal
    input ld, // 1 bit input load signal
    input [7:0] din, // 8 bit input
    output reg [7:0] count // 8 bit output
);

    wire [7:0] nxt_count;
    
    assign nxt_count = ld ? din : count + 1; //This implements a 2 to 1 mux

    always @(posedge clk) begin
        if (rst)
            count <= 0;
        else if (en)
            count <= nxt_count;
    end
    
endmodule