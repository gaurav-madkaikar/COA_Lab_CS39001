`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    07:09:14 08/27/2021 
// Design Name: 
// Module Name:    ripple_carry_adder_32 
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

// 32-bit Ripple Carry Adder
module ripple_carry_adder_32(sum, Cout, A, B, Cin);
	// Input / Output ports
   input[31:0] A, B;
	input Cin; 
	output[31:0] sum;
	output Cout;
	
	// intermediary wire
	wire temp;

	// Instantiate 2 16-bit RCAs
   ripple_carry_adder_16 rca_16_1(.Cin(Cin), .A(A[15:0]), .B(B[15:0]), .Cout(temp), .sum(sum[15:0]));
   ripple_carry_adder_16 rca_16_2(.Cin(temp), .A(A[31:16]), .B(B[31:16]), .Cout(Cout), .sum(sum[31:16]));
   
endmodule