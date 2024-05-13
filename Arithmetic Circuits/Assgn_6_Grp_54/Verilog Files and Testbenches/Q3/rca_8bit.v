`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:00:30 10/10/2021 
// Design Name: 
// Module Name:    rca_8bit 
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

// 8-bit Ripple Carry Adder
module rca_8bit(sum, Cout, A, B, Cin);
	// Input / Output ports
	input[7:0] A, B;
	input Cin; 
	output[7:0] sum;
	output Cout;
	
	// intermediary wires
	wire[6:0] temp;
	
	// Instantiate 8 full adders
	full_adder fa_1(.Cin(Cin), .A(A[0]), .B(B[0]), .Cout(temp[0]), .sum(sum[0]));
	full_adder fa_2(.Cin(temp[0]), .A(A[1]), .B(B[1]), .Cout(temp[1]), .sum(sum[1]));
	full_adder fa_3(.Cin(temp[1]), .A(A[2]), .B(B[2]), .Cout(temp[2]), .sum(sum[2]));
	full_adder fa_4(.Cin(temp[2]), .A(A[3]), .B(B[3]), .Cout(temp[3]), .sum(sum[3]));
	full_adder fa_5(.Cin(temp[3]), .A(A[4]), .B(B[4]), .Cout(temp[4]), .sum(sum[4]));
	full_adder fa_6(.Cin(temp[4]), .A(A[5]), .B(B[5]), .Cout(temp[5]), .sum(sum[5]));
	full_adder fa_7(.Cin(temp[5]), .A(A[6]), .B(B[6]), .Cout(temp[6]), .sum(sum[6]));
	full_adder fa_8(.Cin(temp[6]), .A(A[7]), .B(B[7]), .Cout(Cout), .sum(sum[7]));

endmodule
