`timescale 1ns / 1ps
//Problem 4 HW1 ECE433 Fall2021
//Test bench for 5-bit comparator

module comparator5bits_tb;
parameter Nbits=5;
reg [Nbits-1:0] A,B;
wire AeqB, AgeqB, AltB;

comparatorBehavior5bits DUT(A,B,AeqB, AgeqB, AltB);
initial begin
    A=22; B=12; #5;
    A=5; B=12; #5;
    A=19; B=19; #5;
    A=31; B=10; #5;
    A=10; B=15; #5;
    A=0; B=0; #5;
    A=9; B=14; #5;
    A=23; B=12; #5;
    $stop;
    end
endmodule