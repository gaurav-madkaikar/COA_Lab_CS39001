`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:22:45 09/29/2021 
// Design Name: 
// Module Name:    mux_2X1 
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

// 2-to-1 Multiplexor
module mux_2X1(f, a, b, sel);
	// Input/Output Ports
	output reg f;
	input a, b, sel;
	
	always @(a or b or sel)
	begin
		if (sel) 
			f <= b;
		else
			f <= a;
	end
endmodule
