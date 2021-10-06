`timescale 1ns / 1ps
///Mux
module mux4bits(A,B,Y,choice);
parameter	NumberOfBits = 4;
input [NumberOfBits-1:0] A,B;
input choice;	//choose either A or B 
output reg [NumberOfBits-1:0] Y;

always @(choice,A,B)		//A,B, and Select are associated with this alway block
case (choice) 
0:	begin Y<=A; end
1:	begin Y<=B; end
default:	begin Y<=A; end
endcase
endmodule
