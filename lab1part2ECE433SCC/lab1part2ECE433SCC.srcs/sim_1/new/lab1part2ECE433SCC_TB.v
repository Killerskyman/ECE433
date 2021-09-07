`timescale 1ns / 1ps 
//Author: Jianjian Song 
//CM 111 
//Date: August 31, 2021 
//Purpose: Test bench for ECE433-01 Lab #1 Part 2 
//Motorola 3-to-8 Line Decoder 
//Part Number: MC74VHC138 
 
module lab1part2ECE433JJS_tb; 
parameter Ninputs=3, Noutputs=8; 
reg [Ninputs-1:0] A, E; 
wire [Noutputs-1:0] Y; 
 
//initial begin #0; A=3'b000; E=3'b000; end 
initial begin 
    E=3'b000; A=3'b101; #5; 
    E=3'b110; A=3'bxxx; #5; 
    E=3'b100; A=3'b000; #5; 
    E=3'b100; A=3'b001; #5; 
    E=3'b100; A=3'b010; #5; 
    E=3'b100; A=3'b011; #5; 
    E=3'b100; A=3'b100; #5; 
    E=3'b100; A=3'b101; #5; 
    E=3'b100; A=3'b110; #5; 
    E=3'b100; A=3'b111; #5; 
    E=3'b100; A=3'bxxx; #5; 
    $stop; 
end 
lab1part2SCC DUT (A[2], A[1], A[0], E[2], E[1], E[0],  
Y[7], Y[6], Y[5], Y[4], Y[3], Y[2], Y[1], Y[0]); 
endmodule