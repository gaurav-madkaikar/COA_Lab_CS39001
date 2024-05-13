`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    07:17:42 08/27/2021 
// Design Name: 
// Module Name:    ripple_carry_adder_64 
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

// 64-bit Ripple Carry Adder
module ripple_carry_adder_64(sum, Cout, A, B, Cin);
	 // Input/Output ports
    input[63:0] A, B;
	 input Cin; 
	 output[63:0] sum;
	 output Cout;
	
	 // intermediary wires
	 wire temp;

	 // Instantiate 2 32-bit RCAs
    ripple_carry_adder_32 rca_32_1(.Cin(Cin), .A(A[31:0]), .B(B[31:0]), .Cout(temp), .sum(sum[31:0]));
    ripple_carry_adder_32 rca_32_2(.Cin(temp), .A(A[63:32]), .B(B[63:32]), .Cout(Cout), .sum(sum[63:32]));
	
endmodule
