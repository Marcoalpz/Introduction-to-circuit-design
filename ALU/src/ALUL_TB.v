`timescale 1ns/1ps

module ALUL_TB;

	reg [7:0]A;
	reg [7:0]B;
	reg [1:0]S;
	
	wire [7:0] OUT;
	
	ALUL uut(
	
		.A(A),
		.B(B),
		.SEL(S),
		.OUT(OUT)
	);
	
	initial begin 
		A = 0;
		B = 0;
		S = 2'b00;
		
		//Times scale
		#100
		
		A = 7'b00001111;
		B = 7'b00000101;
			//Expected -> 00000101
		
		#100
		
		A = 7'b00001111;
		B = 7'b00000101;
		S = 2'b01;
			//Expected -> 00001111
		#100
		
		A = 7'b00001111;
		B = 7'b00000101;
		S = 2'b10;
			//Expected -> 00001010
		#100
		
		A = 7'b00001111;
		B = 7'b00000101;
		S = 2'b11;
			//Expected -> 11110000
		end
endmodule
		
		
