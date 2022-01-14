`timescale 1ns / 1ps
// File name	: DelayLoop.v
// Written by	: Jianjian Song
// Divide a high frequency square wave to 
// generate a lower frequency square wave.

module NoteLength(input clk, rst, inSig,
output reg outSig) ;
parameter	Divider = 2500000;	//delay time in number of clock cycles, 20ns
parameter 	NumberOfBits = 27;

reg 	[NumberOfBits-1:0]	count;
reg run;
	
always @ (posedge clk) begin
	if(~(count==0)) outSig<=1;
	else outSig<=0;
end

always @ (inSig) begin
    case ({inSig, run})
        2: run <= 1;
        default: run <= run;
    endcase
end
	
always @ (posedge clk or posedge rst)
	if(rst==1) begin count <= 0; run <= 0; end
	else if (count>=Divider)
	   begin count<=0; run <= 0; end
	else count <= count + 1;
endmodule
