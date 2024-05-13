`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   08:01:57 08/29/2021
// Design Name:   CLA_4bit_aug
// Module Name:   C:/Users/gmadk/Desktop/KGP Acad/5th Sem/COA/COA Laboratory/Assignment 1 - Verilog/carry_look_ahead_adder/cla_4_aug_tst.v
// Project Name:  carry_look_ahead_adder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: CLA_4bit_aug
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
//
// Group No: 54
// Members: Gaurav Madkaikar (19CS30018), Girish Kumar (19CS30019)
// Lab Assignment 1, Problem 2 

////////////////////////////////////////////////////////////////////////////////

// Testbench for the augmented 4-bit Carry Look Ahead Adder
module cla_4_aug_tst;

	// Inputs
	reg [3:0] A;
	reg [3:0] B;
	reg Cin;

	// Outputs
	wire [3:0] sum;
	wire Pg;
	wire Gg;

	// Instantiate the Unit Under Test (UUT)
	CLA_4bit_aug uut (
		.sum(sum), 
		.Pg(Pg), 
		.Gg(Gg), 
		.A(A), 
		.B(B), 
		.Cin(Cin)
	);

	initial begin
		// Initialize Inputs
		A = 4'b0001;
		B = 4'b0001;
		Cin = 1'b0;

		$monitor("%d:\t A = %d\tB = %d\tCin = %d\tsum = %d\tPg = %d\tGg = %d\n", $time, A, B, Cin, sum, Pg, Gg);
		
		// Add stimulus here
		#5 A = 4'b0011; B = 4'b1001;
		#5 A = 4'b0010; B = 4'b0001;
		#5 A = 4'b1000; B = 4'b1001; 
		#5 A = 4'b0100; B = 4'b1010; 
		#5 A = 4'b1101; B = 4'b0111; 
		#5 A = 4'b0001; B = 4'b1111;
		#5 A = 4'b1111; B = 4'b1111;
		
	   #5 $finish;

	end
      
endmodule

