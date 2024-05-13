`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:10:19 09/29/2021 
// Design Name: 
// Module Name:    d_flip_flop 
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

// 1-bit D-Flip Flop
module d_flip_flop(Q, D, clk, async_rst);
	input D; 			  // Data input 
	input clk;		     // clock  
	input async_rst;    // asynchronous reset 
	output reg Q;       // output Q 

	always @(posedge clk or posedge async_rst) 
		begin
			if(async_rst)		// reset: setting the bit to '0'
				Q <= 1'b0; 
			else 
				Q <= D; 
		end 
endmodule 
