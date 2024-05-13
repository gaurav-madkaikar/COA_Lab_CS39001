`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:22:43 08/26/2021 
// Design Name: 
// Module Name:    half_adder 
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
// Lab Assignment 1, Problem 1

//////////////////////////////////////////////////////////////////////////////////

// 1-bit Half Adder 
module half_adder(sum, Cout, A, B);
	// Input Ports
	input A, B;
	
	// Output Ports
	output sum, Cout;
	
	// Logic gates
	xor(sum, A, B);
	and(Cout, A, B);

endmodule
