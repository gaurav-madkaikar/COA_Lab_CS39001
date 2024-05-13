`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:24:25 09/29/2021 
// Design Name: 
// Module Name:    LFSR_main 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
//
// Group No: 54
// Members: Gaurav Madkaikar (19CS30018), Girish Kumar (19CS30019)
// Lab Assignment 5, Problem 1 - LFSR Design
//////////////////////////////////////////////////////////////////////////////////

// 4-bit Linear Feedback Shift Register
module LFSR_main(wOut, seed, clk, rst, sel);
	// Input/Output Ports
	input clk, rst, sel;
	input[3:0] seed;

	wire[3:0] wInp;		// inputs from the MUX to each Flip Flop
	wire nextBit;        // w1 i.e. the next input bit to the LFSR

	output[3:0] wOut;		// current state of the LFSR

	// Instantiate 2-to-1 Multiplexors
	mux_2X1 MUX3(.f(wInp[3]), .a(seed[3]), .b(nextBit), .sel(sel));
	mux_2X1 MUX2(.f(wInp[2]), .a(seed[2]), .b(wOut[3]), .sel(sel));
	mux_2X1 MUX1(.f(wInp[1]), .a(seed[1]), .b(wOut[2]), .sel(sel));
	mux_2X1 MUX0(.f(wInp[0]), .a(seed[0]), .b(wOut[1]), .sel(sel));

	// Instantiate flip flops
	d_flip_flop DFF3(.Q(wOut[3]), .D(wInp[3]), .clk(clk), .async_rst(rst));
	d_flip_flop DFF2(.Q(wOut[2]), .D(wInp[2]), .clk(clk), .async_rst(rst));
	d_flip_flop DFF1(.Q(wOut[1]), .D(wInp[1]), .clk(clk), .async_rst(rst));
	d_flip_flop DFF0(.Q(wOut[0]), .D(wInp[0]), .clk(clk), .async_rst(rst));

	// Compute the next input bit
	xor(nextBit, wOut[0], wOut[1]);

endmodule
