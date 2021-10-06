
`timescale 1ns / 100ps 
 
// File name : hw2p6ece433fall2021detect11010.v 
// Skyler Cleland
// ECE433 Fall 2021 
// Problem 6, Homework #2 
// Detect sequence of 11010 recursively. 
 
module hw2p6ece433fall2021detect11010 ( 
input InputBit, CLK, Reset, output reg Det); 
// State variables 
reg [2:0] CurrentState, NextState; 
 
// State codes 
parameter  SInitial = 3'd0, S1 = 3'd1, S11 = 3'd2, S110= 3'd3, S1101=3'd4, S11010=3'd5; 
 
// State registers 
always @ (posedge CLK or posedge Reset) begin
    if(Reset==1) CurrentState <= SInitial;
    else CurrentState <= NextState;
end

always @ (CurrentState or InputBit) begin
    case(CurrentState)
            SInitial: if(InputBit==1) NextState <= S1; else NextState <= SInitial;
            S1: if(InputBit==1) NextState <= S11; else NextState <= SInitial;
            S11: if(InputBit==1) NextState <= S1; else NextState <= S110;
            S110: if(InputBit==1) NextState <= S1101; else NextState <= SInitial;
            S1101: if(InputBit==1) NextState <= S1; else NextState <= S11010;
            S11010: if(InputBit==1) NextState <= S1; else NextState <= SInitial;
        endcase
    if(CurrentState==S11010) Det <= 1;
    else Det <= 0;
end
endmodule