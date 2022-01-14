`timescale 1ns / 1ps
//File: vsyncModule2021fall_template.v
//To be completed by students. Add your name and date after you have revised this file
//Author: 
//Date: October 28, 2021
//ECE433 Fall 2021
//The line increment is synchronized with the hsync pulse
//synch pulse is generated at the end of the line: Active Video-BackPorch-SynchPulse-FrontPorch
//this is how it is done by the video timer of the pong game
//LineEnd and FrameEnd are ANDed to restart frame

module vsyncModule2021fall #(parameter yresolution=10)(
input reset, clock, LineEnd, 
input [yresolution-1:0] SynchPulse, BackPorch, ActiveVideo, FrontPorch, 
output vsync, output reg [yresolution-1:0] yposition);

wire [yresolution-1:0] ycount;

RisingEdgePositiveOneShot lineClockUnit(reset, clock, LineEnd, LineEndOne);

wire [yresolution-1:0] EndCount=SynchPulse+FrontPorch+ActiveVideo+BackPorch;
assign FrameEnd=ycount==EndCount;	//reset counter
//synch pulse appears at the end of the line and after front porch to mimic the pong video_timer
//hsync <= ~(xpos > 664 && xpos <= 760);  // active for 95 clocks
assign vsync = ~(ycount>=(ActiveVideo+FrontPorch)&&ycount<=(ActiveVideo+FrontPorch+SynchPulse));
always@(*) 
	yposition<=ycount;	//the game circuit does not work if xposition does not run from 0 to 800. JJS
//module UniversalCounter2021fall #(parameter length = 10) (
//input Reset, CLOCK, S1,S0,
//input	[length-1:0] P, BeginCount, EndCount, 
//output reg [length-1:0] count_value,
//output reg TerminalCount);

UniversalCounter2021fall YPositionCounter( reset, clock, FrameEnd, FrameEnd||LineEndOne,
10'd0, 10'd0, EndCount, ycount, ) ;

endmodule
