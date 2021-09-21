`timescale 1ns / 1ps
//arthur: Skyler Cleland
//CM: 2284
//DATE:2021-09-14
//Purpose: hw1 question3, 2-bit multiplier

module MultiplierGates(input [1:0] A, B, output [2:0] Product);
    
    wire [1:0] Anot, Bnot;
    not NOT1(Anot[0], A[0]);
    not NOT2(Anot[1], A[1]);
    not NOT3(Bnot[0], B[0]);
    not NOT4(Bnot[1], B[1]);
    
    and AND1(Product[0], A[0], B[0]);
    
    and AND2(AND2out, Anot[1], A[0], B[1]);
    and AND3(AND3out, A[0], B[1], Bnot[0]);
    and AND4(AND4out, A[1], Bnot[1], B[0]);
    and AND5(AND5out, A[1], Anot[0], B[0]);
    or OR1(Product[1], AND2out, AND3out, AND4out, AND5out);
    
    and AND6(AND6out, A[1], Anot[0], B[1]);
    and AND7(AND7out, A[1], B[1], Bnot[0]);
    or OR2(Product[2], AND6out, AND7out);
    
endmodule
