`timescale 1ns / 1ps
//skyler cleland
//date 2021-11-30
//updates ram address.

module RAMAddressUpdate #(parameter addressBits=6)(
input osn, rst, clk, 
output reg [addressBits-1:0] RAMaddressUpdate);

always @(posedge clk) begin
    if(rst==1) RAMaddressUpdate <= 0;
    else begin
        if(osn) RAMaddressUpdate <= RAMaddressUpdate + 1;
        else RAMaddressUpdate <= RAMaddressUpdate;
    end
end

endmodule
