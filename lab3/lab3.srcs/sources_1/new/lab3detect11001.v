`timescale 1ns / 1ps
//name: Skyler Cleland
//CM: 2284
//date: 2021-10-06
//detect unit for lab3
module lab3Detect11001fall2021(
input x, rst, clk,
output reg det, reg [4:0] inBuf, reg [2:0] curState
);
parameter s0=0,s1=1,s2=2,s3=3,s4=4,s5=5;
reg [2:0] nState;

always @ (posedge clk) begin
    if(rst==1)inBuf<=5'b0;
    else inBuf<= {inBuf[3:0],x};
end

always @ (posedge clk or posedge rst) begin
    if(rst==1) curState<=s0;
    else curState <= nState;
end

always @ (x, curState) begin
    case (curState)
        s0:if(x==1) nState<=s1; else nState<=s0;
        s1:if(x==1) nState<=s2; else nState<=s0;
        s2:if(x==1) nState<=s2; else nState<=s3;
        s3:if(x==1) nState<=s1; else nState<=s4;
        s4:if(x==1) nState<=s5; else nState<=s0;
        s5:if(x==1) nState<=s2; else nState<=s0;
    endcase
end

always @ (curState) begin
    if(curState==s5) det<=1;
    else det<=0;
end

endmodule