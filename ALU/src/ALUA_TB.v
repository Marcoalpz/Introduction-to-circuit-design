`timescale 1ns/1ps

module ALUA_TB;

	reg [7:0]A;
	reg [7:0]B;
	reg [1:0]S;
	
	wire [7:0] OUT;
	wire V;
	wire C;
	
	ALUA uut(
	
		.A(A),
		.B(B),
		.SEL(S),
		.OUT(OUT),
		.V(V),
		.C(C)
		
	);
	
	initial begin 
		A = 0;
		B = 0;
		S = 2'b00;
		
		//Times scale
		#100
		
		A = 7'b00001111;
		B = 7'b00000101;
			//Expected -> 00010100
		
		#100
		
		A = 7'b00001111;
		B = 7'b00000101;
		S = 2'b01;
			//Expected -> 00001010
		#100
		
		A = 7'b00001111;
		B = 7'b00000101;
		S = 2'b10;
			//Expected -> 00010000
		#100
		
		A = 7'b00001111;
		B = 7'b00000101;
		S = 2'b11;
			//Expected -> 00001111
		end
endmodule
		
		
