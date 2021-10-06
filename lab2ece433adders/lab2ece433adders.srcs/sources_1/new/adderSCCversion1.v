`timescale 1ns / 1ps
//Author: Skyler Cleland
//Date: 2021-09-21
//4bit adder and subtracter

module adderSCCversion1 #(parameter NumberOfBits = 4)  
( 
input Mode, 
input [NumberOfBits-1:0] Minuend, Subtrahend, 
output [NumberOfBits-1:0] SumDiff, 
output CarryOut 
); 
wire [NumberOfBits-1:0] NotSubtrahend, MuxOut; 
wire [NumberOfBits-1:0] Cout; 

inverter4bits inv(Subtrahend, NotSubtrahend);
mux4bits mux(Subtrahend, NotSubtrahend, MuxOut, Mode);
Adder1bitV1 add0(MuxOut[0], Minuend[0], SumDiff[0], Mode, Cout[0]);
Adder1bitV1 add1(MuxOut[1], Minuend[1], SumDiff[1], Cout[0], Cout[1]);
Adder1bitV1 add2(MuxOut[2], Minuend[2], SumDiff[2], Cout[1], Cout[2]);
Adder1bitV1 add3(MuxOut[3], Minuend[3], SumDiff[3], Cout[2], Cout[3]);
xor XOR1(CarryOut, Mode, Cout[3]);
endmodule 