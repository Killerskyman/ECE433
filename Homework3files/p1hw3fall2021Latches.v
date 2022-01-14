`timescale 1ns / 100ps
// File name	: p1hw3fall2021Latches.v
// Jianjian Song
//ECE433 Fall 2021
// Verify this circuit has latches

module p1hw3fall2021Latches(input X, RESET, CLOCK,
output reg Z,
// State variables
output reg [2:0] CurrentState);
reg [2:0] NextState;

// State codes
parameter State1=0, State0=1, State011=2, State01=3, State10=5, State1010=7;

// Output logic
always @ (CurrentState)
	if (CurrentState == State1010) Z <= 1;

// State registers
always @ (posedge CLOCK)
	if (RESET==1) CurrentState <= State1; else CurrentState <= NextState;
	always@ (CurrentState, X)
	case (CurrentState)
		State1: if (X==1) NextState <= State0; else NextState <= State1;
		State0: if (X==1) NextState <= State10; else NextState <= State10;
		State011: if (X==0) NextState <= State0; else NextState <= State1;
		State01: if (X==1) NextState <= State1; 
		State10: if(X==0) NextState <= State1010; else NextState <= State011;
		State1010: if(X==0) NextState <= State01;  
	endcase

endmodule
