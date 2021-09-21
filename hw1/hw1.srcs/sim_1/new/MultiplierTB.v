`timescale 1ns / 1ps
//arthur: Skyler Cleland
//CM: 2284
//DATE:2021-09-14
//Purpose: hw1 question3, 2-bit multiplier

module MultiplierTB();
reg [1:0] A, B;
wire [2:0] ProductBgates, ProductExpressions, ProductTruthTable, ProductBbehavior;

MultiplierGates mgates(A, B, ProductBgates);
MultiplierExpressions mexper(A, B, ProductExpressions);
MultiplierTruthTable mtruth(A, B, ProductTruthTable);
MultiplierBehavior mbehav(A, B, ProductBbehavior);

initial begin
    {A[1],A[0],B[1],B[0]} = 0; #5;
    {A[1],A[0],B[1],B[0]} = 1; #5;
    {A[1],A[0],B[1],B[0]} = 2; #5;
    {A[1],A[0],B[1],B[0]} = 3; #5;
    {A[1],A[0],B[1],B[0]} = 4; #5;
    {A[1],A[0],B[1],B[0]} = 5; #5;
    {A[1],A[0],B[1],B[0]} = 6; #5;
    {A[1],A[0],B[1],B[0]} = 7; #5;
    {A[1],A[0],B[1],B[0]} = 8; #5;
    {A[1],A[0],B[1],B[0]} = 9; #5;
    {A[1],A[0],B[1],B[0]} = 10; #5;
    {A[1],A[0],B[1],B[0]} = 11; #5;
    {A[1],A[0],B[1],B[0]} = 12; #5;
    {A[1],A[0],B[1],B[0]} = 13; #5;
    {A[1],A[0],B[1],B[0]} = 14; #5;
    {A[1],A[0],B[1],B[0]} = 15; #5;
    $stop;
end
endmodule
