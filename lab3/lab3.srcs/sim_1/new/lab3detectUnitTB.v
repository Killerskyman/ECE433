`timescale 1ns / 1ps
//name: Skyler Cleland
//CM: 2284
//date: 2021-10-06
//test bench for detect unit for lab3

module lab3detectUnitTB;
reg x, clk, rst;
reg x, rst, clk;
wire det; wire [4:0] inBuf; wire [2:0] curState;
lab3Detect11001fall2021 uut(x, rst, clk, det, inBuf, curState);

initial begin
    x = 0;
    clk = 0;
    rst = 0;
end

always #10 clk = ~clk;

initial fork
    #0 rst = 0; #5 rst=1; #15 rst=0;
    #0 x = 0; #50 x=1; #100 x=0; #140 x=1; #180 x=0; #200 x=1; #220 x=0; #240 x=1; #280 x=0;
    #340 $stop;
join

endmodule
