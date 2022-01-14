`timescale 1ns / 1ps
//file name: UARTmodulefall2021oneshots.v
//Author: Jianjian Song
//Date:	Sept 26, 2021
//ECE433 Fall 2021
//A complete UART module based on files from Xilinx
//One shots are added to receive and transmit modules so that
//a high level signal will make read or write one byte only.
module UARTmodulefall2021oneshots 
#(parameter DataLength=8, BAUDRATE=20'd57600, FREQUENCY=30'd100000000)
(input rx, output tx,  output tx_full, rx_data_present,
input read_from_uart, write_to_uart,  output [DataLength-1:0] 	rx_data,
input [DataLength-1:0] tx_data,
output reg [DataLength-1:0] transmitted_bits,  input  clock, reset);

wire  en_16_x_baud, read_one_shot, write_one_shot;
wire  tx_half_full, rx_full, rx_half_full;

always@(posedge clock) transmitted_bits<=tx_data;
BaudRateGenerator BaudRateUnit(en_16_x_baud, reset, clock, BAUDRATE, FREQUENCY);
PositiveClockedOneShot ReadOneShotUnit(read_from_uart,  reset, clock, read_one_shot) ;
PositiveClockedOneShot WriteOneShotUnit(write_to_uart, reset, clock, write_one_shot) ;

uart_tx TransmitUnit(	.data_in(tx_data), .write_buffer(write_one_shot),
    	.reset_buffer(1'b0), .en_16_x_baud(en_16_x_baud),
    	.serial_out(tx),.buffer_full(tx_full), .buffer_half_full(),.clk(clock));
		
uart_rx ReceiveUnit
(	.serial_in(rx),
    	.data_out(rx_data), .read_buffer(read_one_shot),
    	.reset_buffer(1'b0), .en_16_x_baud(en_16_x_baud),
    	.buffer_data_present(rx_data_present), .buffer_full(rx_full),
    	.buffer_half_full(rx_half_full), .clk(clock));
endmodule
