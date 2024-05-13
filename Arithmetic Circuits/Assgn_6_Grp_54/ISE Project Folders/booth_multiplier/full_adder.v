`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:46:02 10/10/2021 
// Design Name: 
// Module Name:    full_adder 
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
// Lab Assignment 6, Problem 3 - Booth's Multiplier
//////////////////////////////////////////////////////////////////////////////////

// 1-bit Full Adder 
module full_adder(sum, Cout, A, B, Cin);
	// Input Ports
	input A, B, Cin;	
	
	// Output Ports
	output sum, Cout;
	
	// Assign statements
	assign sum  = (A ^ B) ^ Cin;
	assign Cout = (A & B) | (B & Cin) | (A & Cin);

endmodule
