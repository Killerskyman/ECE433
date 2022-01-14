`timescale 1ns / 1ps
//File: CRTClock2021fall_template.v
//Generate 25MHz VGA clock from a SystemClock
//SystemClockFreq and CRTClockFreq are input parameters in MHz
//ECE433-01 Fall 2021
//Term Project on Pong game on VGA
//this is a template to be completed by students

module CRTClock2021fall #(parameter SystemClockSize=10)(
input Reset, Clock,
input [SystemClockSize-1:0] SystemClockFreq, CRTClockFreq, 
output reg PixelClock);

reg [SystemClockSize:0] clockTrack;

always @(posedge Clock) begin
    if(Reset==1) begin PixelClock <= 0; clockTrack <= 0; end
    else begin
        if(clockTrack >= SystemClockFreq) begin clockTrack <= CRTClockFreq + CRTClockFreq; PixelClock <= ~PixelClock; end
        else clockTrack <= clockTrack + CRTClockFreq + CRTClockFreq;
    end
end

endmodule
