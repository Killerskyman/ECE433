`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//Author: Skyler Cleland
//CM: 2844
//DATE: 2021-09-07
//PURPOSE: ECE433 lab01 Gate3
//////////////////////////////////////////////////////////////////////////////////


module gate3SCC(All, Blink, Left, Right);
    input All, Blink;
    output Left, Right;
    wire w1;
    not U1(w1, All);
    nand U2(Right,w1,Blink);
    or U3(Left,All,Blink);
endmodule
