`timescale 1ns / 1ps
// File name : hw2p6ece433fall2021detect11010_tb.v 
// Skyler Cleland
// ECE433 Fall 2021 
// Problem 6, Homework #2 
// tb for Detect sequence of 11010 recursively. 


module hw2p6ece433fall2021detect11010_tb;
    reg InputBit, R, clk;
    wire Det;
    
    initial begin #0 clk = 0; end
    always #5 clk=~clk;
        initial fork
            #0 R=0; #8 R=1; #12 R=0;
            #0 InputBit = 0;
            #10 InputBit = 0;
            #20 InputBit = 1;
            #30 InputBit = 1;
            #40 InputBit = 0;
            #50 InputBit = 1;
            #60 InputBit = 0;
            #70 InputBit = 1;
            #80 InputBit = 1;
            #90 InputBit = 1;
            #100 InputBit = 0;
            #110 InputBit = 1;
            #120 InputBit = 1;
            #130 InputBit = 0;
            #140 InputBit = 1;
            #150 InputBit = 0;
            #160 InputBit = 0;
            #170 InputBit = 1;
            #180 InputBit = 1;
            #190 InputBit = 0;
            #200 InputBit = 1;
            #210 InputBit = 0;
            #220 $stop;
        join
        
    hw2p6ece433fall2021detect11010 tb(InputBit, clk, R, Det);
endmodule
