`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:12:02 08/26/2021 
// Design Name: 
// Module Name:    ripple_carry_adder_16 
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

// 16-bit Ripple Carry Adder
module ripple_carry_adder_16(sum, Cout, A, B, Cin);
	// Input / Output ports
	input[15:0] A, B;
	input Cin; 
	output[15:0] sum;
	output Cout;
	
	// intermediary wire
	wire temp;
	
	// Instantiate 2 8-bit RCAs
	ripple_carry_adder_8 rca_8_1(.Cin(Cin), .A(A[7:0]), .B(B[7:0]), .Cout(temp), .sum(sum[7:0]));
	ripple_carry_adder_8 rca_8_2(.Cin(temp), .A(A[15:8]), .B(B[15:8]), .Cout(Cout), .sum(sum[15:8]));

endmodule
