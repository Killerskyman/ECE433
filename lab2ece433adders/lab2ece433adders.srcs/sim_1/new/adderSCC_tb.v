`timescale 1ns / 1ps 
// Lab #2, ECE433 Fall 2021 
// Author: Skyler Cleland
// Date:  2021-09-21
// A test bench for Two versions of 4-bit adder and subtractor 
// SumDiff=Minuend+Subtrahend if Mode=0 to add 
// SumDiff=Minuend-Subtrahend if Mode=1 to subtract 
module adderSubtractorTB; 
  reg [3:0] D1, D2;      reg AddOrSub;       
  wire [3:0] Sum1, Sum2;       
  wire Cout1, Cout2; 
//version 1 
//module AdderJJSversion1 (Minuend, Subtrahend, SumDiff, CarryOut, Mode); 
   adderSCCversion1 TestBench1(.Minuend(D1),.Subtrahend(D2),.SumDiff(Sum1),.CarryOut(Cout1),.Mode(AddOrSub)); 
//version 2 
   adderSCCversion2 TestBench2(AddOrSub, D1, D2, Sum2, Cout2); 
//test patterns AddOrSub=0 for addition = 1 for subtraction 
  initial begin 
 D1=0; D2=0; AddOrSub=0;  #10; //#10 states the values remain for 10 ns 
 D1=3; D2=4; AddOrSub=0;  #20; 
 D1=5; D2=2; AddOrSub=1;  #10; 
 D1=6; D2=5; AddOrSub=0;  #10; 
 D1=7; D2=7; AddOrSub=1;  #10; 
 D1=7; D2=7; AddOrSub=0;  #10; 
 D1=8; D2=9; AddOrSub=0;  #10; 
 D1=15; D2=12; AddOrSub=1;  #10; 
 $stop; 
  end 
endmodule 