`timescale 1ns / 1ps 
// Lab #2 ECE433 Fall 2021 
// Skyler Cleland
// 2021-09-21
// CM 2284
// Version 2 of Adder and Subtractor 
module adderSCCversion2 #(parameter NumberOfBits = 4)  
( 
input Mode, 
input [NumberOfBits-1:0] Minuend, Subtrahend, 
output reg [NumberOfBits-1:0] SumDiff, 
output reg CarryOut 
); 
 always @ (Minuend,Subtrahend, Mode) begin
    case (Mode) 
        0: {CarryOut, SumDiff} <= Minuend + Subtrahend;
        1: {CarryOut, SumDiff} <= Minuend + ~Subtrahend + 1;
    endcase
    end
endmodule