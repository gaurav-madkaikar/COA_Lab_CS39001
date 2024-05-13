`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:48:51 10/10/2021 
// Design Name: 
// Module Name:    D_flip_flop 
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
//Group No: 54
// Members: Gaurav Madkaikar (19CS30018), Girish Kumar (19CS30019)
// assignment 6  
//
//////////////////////////////////////////////////////////////////////////////////

module D_flip_flop(D,clk,Q);
input D; 					// Data input 
input clk; 					// clock input 
output reg Q; 					// output Q 
	
	initial begin Q = 0 ;end
	always @(posedge clk) 
		begin
			Q <= D; 
		end 
endmodule 

