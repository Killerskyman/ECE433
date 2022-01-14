`timescale 1ns / 1ps
//one read port and one write port
//both read and write are synchronized by clock
//WriteOrRead=1 to write and 0 to read
//ECE433 Fall 2020
//RAM Initial Content: RAM ECE433 Fall 2020 Advanced Digital Design with Verilog
module RAM64x7bitsJJS #(parameter DataWidth=7, MemorySize=64, AddressBits=7)
(input reset, clock, writeOrread,
input [AddressBits:0] address,
input [DataWidth-1:0] din,
output reg [DataWidth-1:0] dout);

reg[DataWidth-1:0] memory [MemorySize-1:0]; 
parameter LineFeed=8'h0A, CarriageReturn=8'h0D, NUL=8'h00;
always@(posedge clock)
	if(reset==1) begin
	memory[0]<=LineFeed;	memory[1]<=CarriageReturn;	memory[2]<="R";	memory[3]<="A";
	memory[4]<="M";	memory[5]<=" ";	memory[6]<="E";	memory[7]<="C";
	memory[8]<="E";	memory[9]<="4";	memory[10]<="3";	memory[11]<="3";
	memory[12]<=" ";	memory[13]<="F";	memory[14]<="a";	memory[15]<="l";
	memory[16]<="l";	memory[17]<="2";	memory[18]<="0";	memory[19]<="2";
	memory[20]<="0";	memory[21]<=" ";	memory[22]<="A";	memory[23]<="d";
	memory[24]<="v";	memory[25]<="a";	memory[26]<="n";	memory[27]<="c";
	memory[28]<="e";	memory[29]<="d";	memory[30]<=" ";	memory[31]<="D";
	memory[32]<="i";	memory[33]<="g";	memory[34]<="i";	memory[35]<="t";
	memory[36]<="a";    memory[37]<="l";    memory[38]<=" ";    memory[39]<="D";
	memory[40]<="e";    memory[41]<="s";    memory[42]<="i";    memory[43]<="g";
	memory[44]<="n";    memory[45]<=" ";    memory[46]<="w";    memory[47]<="i";
	memory[48]<="t";    memory[49]<="h";    memory[50]<=" ";    memory[51]<="V";
	memory[52]<="e";    memory[53]<="r";    memory[54]<="i";    memory[55]<="l";
	memory[56]<="o";    memory[57]<="g";    memory[58]<=" ";    memory[59]<=" ";
	memory[60]<=CarriageReturn;
	memory[61]<=LineFeed;	//line feed
	memory[62]<=NUL;
	end 
	else if (writeOrread==0)	//read memory
		dout<=memory[address];
	else memory[address]<=din; 
endmodule
