`timescale 1ns / 1ps
//arthur: Skyler Cleland
//CM: 2284
//DATE:2021-09-14
//Purpose: hw1 question3, 2-bit multiplier

module MultiplierBehavior(input [1:0] A, B, output [2:0] Product);
    assign Product[0] = A[0]&B[0];
    assign Product[1] = ((~(A[1]))&A[0]&B[1]) | (A[0]&B[1]&(~(B[0]))) | (A[1]&(~(B[1]))&B[0]) | (A[1]&(~(A[0]))&B[0]);
    assign Product[2] = (A[1]&(~(A[0]))&B[1]) | (A[1]&B[1]&(~(B[0])));
endmodule
