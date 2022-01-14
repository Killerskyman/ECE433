`timescale 1ns / 1ps

//name: Skyler cleland
//CM:   2284
//Date: 2021-11-28
//ECE433hw3p5

module TxController_ece433TB();

reg start, RST, CLK;
reg [3:0] Speed;

wire load, shiftOut;

TxController_ece433fall2021 uut(start, RST, CLK, Speed, load, shiftOut);

initial begin start = 0; RST = 0; CLK = 0; Speed = 3; end
always begin CLK <= ~CLK; #5; end
initial begin
    #5;
    RST <= 1;
    #10;
    RST <= 0;
    #10;
    start <= 1;
    #10;
    start <= 0;
    #400;
    $stop;
end

endmodule
