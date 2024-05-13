`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:31:35 10/10/2021 
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
// Additional Comments: 
//
// Group No: 54
// Members: Gaurav Madkaikar (19CS30018), Girish Kumar (19CS30019)
// Lab Assignment 6, Problem 1 - Barrel Shifter
//////////////////////////////////////////////////////////////////////////////////
module mux_2X1(output out, input[2:0] inp, input sel, input sft);
	reg var;
	
	always @(*)
	begin
		if (sft)
			begin
				 var <= (sel) ? inp[2] : inp[0];
			end
		else
			begin
				 var <= (sel) ? inp[1] : inp[0];
			end
	end
	
	assign out = var;
endmodule
