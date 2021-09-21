`timescale 1ns / 1ps
//arthur: Skyler Cleland
//CM: 2284
//DATE:2021-09-14
//Purpose: hw1 question4, 5-bit comparator

module comparatorBehavior5bits #(parameter Nbits=5)
(input [Nbits-1:0] A, B, 
output reg AeqB, AgeqB, AltB);

always @ (A,B) begin
    if(A==B) {AeqB, AgeqB, AltB} = 3'b110;
    else if(A>B) {AeqB, AgeqB, AltB} = 3'b010;
    else if(A<B) {AeqB, AgeqB, AltB} = 3'b001;
    end
endmodule
