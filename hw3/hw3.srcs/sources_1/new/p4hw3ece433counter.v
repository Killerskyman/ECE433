`timescale 1ns / 1ps

//name: skyler Cleland
//cm: 2284
//date: 2021-11-27
//ece433hw3p4

module p4hw3ece433counter #(parameter Bit_length=5, StartCount=6, EndCount=22)(
input [1:0] control,
input CLK,
input RST,
output reg [Bit_length-1:0] counter
);
reg [Bit_length-1:0] nextCnt;

always @ (posedge CLK or posedge RST) begin
    if(RST==1) counter <= StartCount; else counter <= nextCnt;
end

always @ (control, counter) begin
    case(control)
        0:case (counter)
            EndCount:nextCnt <= StartCount;
            default: nextCnt <= counter + 1;
        endcase
        1:case (counter)
            31: nextCnt <= 0;
            EndCount: nextCnt <= StartCount;
            EndCount-1: nextCnt <= StartCount;
            default: nextCnt <= counter + 2;
        endcase
        2:case (counter)
            31: nextCnt <= 0;
            30: nextCnt <= 0;
            EndCount: nextCnt <= StartCount;
            EndCount-1: nextCnt <= StartCount;
            EndCount-2: nextCnt <= StartCount;
            default: nextCnt <= counter + 3;
        endcase
        3:case (counter)
            StartCount: nextCnt <= EndCount;
            StartCount+1: nextCnt <= EndCount;
            default: nextCnt <= counter - 2;
        endcase
    endcase
end

endmodule
