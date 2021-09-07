`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//ARTHOR: SKYLER CLELAND
//CM: 2844
//DATE: 2021-09-07
//PURPOSE: ECE433 LAB1PART2
//////////////////////////////////////////////////////////////////////////////////

module lab1part2SCC(
    input A2, A1, A0, E2, E1, E0,
    output Y7, Y6, Y5, Y4, Y3, Y2, Y1, Y0
    );
    wire NOTA0, NOTA1, NOTA2, NOR0out, AND0out;
    not NOT0(NOTA0, A0);
    not NOT1(NOTA1, A1);
    not NOT2(NOTA2, A2);
    
    nor NOR0(NOR0out, E0, E1);
    and AND0(AND0out, E2, NOR0out);
    
    nand NAND0(Y0, NOTA0, NOTA1, NOTA2, AND0out);
    nand NAND1(Y1, A0, NOTA1, NOTA2, AND0out);
    nand NAND2(Y2, NOTA0, A1, NOTA2, AND0out);
    nand NAND3(Y3, A0, A1, NOTA2, AND0out);
    nand NAND4(Y4, NOTA0, NOTA1, A2, AND0out);
    nand NAND5(Y5, A0, NOTA1, A2, AND0out);
    nand NAND6(Y6, NOTA0, A1, A2, AND0out);
    nand NAND7(Y7, A0, A1, A2, AND0out);
    
endmodule
