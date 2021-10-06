`timescale 1ns / 1ps
module Adder1bitV1(A,B,Sum,Cin,Cout);
//1-bit full adder with gates
input A,B,Cin; 
output	Sum,Cout;

	wire w1,w2,w3,w4,w5,w6,w7,w8,w9,w10;
//for carry bit
	and U1(w1,A,B); and U2(w2,A,Cin); and U3(w3,B,Cin);
	or U4(Cout,w1,w2,w3);
//for sum
		not U5(w4,A); not U6(w5,Cin); not U7(w6,B);
		and  U12(w7,w4,w5,B); and U8(w8,A,w5,w6); 
		and U9(w9,w4,w6,Cin); and U10(w10,A,B,Cin);
		or U11(Sum,w7,w8,w9,w10);
endmodule

