`timescale 1ns / 1ps

//name: Skyler cleland
//CM:   2284
//Date: 2021-11-28
//ECE433hw3p5

module TxController_ece433fall2021 #(parameter BitLength = 12)(
input start, RST, CLK, 
input [3:0] Speed, 
output reg load, shiftOut
);

reg [3:0] delayCnt;
reg [3:0] shiftCnt;

reg [1:0] curState;
reg [1:0] nextState;

always @(posedge CLK) begin
    if(RST==1) curState <= 0; else curState <= nextState;
    case (curState)
        2: delayCnt <= delayCnt + 1;
        3: delayCnt <= 0;
        0: delayCnt <= 0;
        default: delayCnt <= delayCnt;
    endcase
    case (curState)
        3: shiftCnt <= shiftCnt + 1;
        0: shiftCnt <= 0;
        default: shiftCnt <= shiftCnt;
    endcase
end

always @(start, curState, delayCnt, shiftCnt, Speed) begin
    case (curState)
        0: if(start==1) nextState <= 1; else nextState <= 0;
        1: nextState <= 2;
        2: if(delayCnt==Speed-2) nextState <= 3; else nextState <= 2;
        3: if(shiftCnt==BitLength-1) nextState <= 0; else nextState <= 2;
    endcase
end

always @ (curState) begin
    case (curState)
        1: begin load <= 1; shiftOut <= 0; end
        3: begin load <= 0; shiftOut <= 1; end
        default: begin load <= 0; shiftOut <= 0; end
    endcase
end

endmodule
