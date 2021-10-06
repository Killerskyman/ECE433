`timescale 1ns / 1ps
//interver

module inverter4bits(A,Y);
parameter NumberOfBits=4;
input [NumberOfBits-1:0] A;
output	[NumberOfBits-1:0] Y;

assign Y=~A;

endmodule
