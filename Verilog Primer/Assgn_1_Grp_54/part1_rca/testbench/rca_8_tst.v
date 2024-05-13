`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:17:24 08/27/2021
// Design Name:   ripple_carry_adder_8
// Module Name:   C:/Users/gmadk/Desktop/KGP Acad/5th Sem/COA/COA Laboratory/Assignment 1 - Verilog/ripple_ca/rca_8_tst.v
// Project Name:  ripple_ca
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ripple_carry_adder_8
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
//
// Group No: 54
// Members: Gaurav Madkaikar (19CS30018), Girish Kumar (19CS30019)
// Lab Assignment 1, Problem 1

////////////////////////////////////////////////////////////////////////////////

// Testbench for 8-bit Ripple Carry Adder
module rca_8_tst;

	// Inputs
	reg [7:0] A;
	reg [7:0] B;
	reg Cin;

	// Outputs
	wire [7:0] sum;
	wire Cout;

	// Instantiate the Unit Under Test (UUT)
	ripple_carry_adder_8 uut (
		.sum(sum), 
		.Cout(Cout), 
		.A(A), 
		.B(B), 
		.Cin(Cin)
	);

	initial begin
		// Initialize Inputs
		A = 8'b00000001;
		B = 8'b00000001;
		Cin = 1'b0;
		
		
		$monitor("%d:\t A = %d\tB = %d\tCin = %d\tsum = %d\tCout = %d\n", $time, A, B, Cin, sum, Cout);
		
		// Add stimulus here
		#5 A = 8'b00100010; B = 8'b00010011;
	   #5 A = 8'b10000100; B = 8'b10010001; 
	   #5 A = 8'b00101001; B = 8'b01001010; 
		#5 A = 8'b11010011; B = 8'b01100000; 
		#5 A = 8'b11111111; B = 8'b11111111;
		
	   #5 $finish;

	end
      
endmodule

