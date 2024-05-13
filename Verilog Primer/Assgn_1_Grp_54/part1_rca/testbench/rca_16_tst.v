`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:40:56 08/27/2021
// Design Name:   ripple_carry_adder_16
// Module Name:   C:/Users/gmadk/Desktop/KGP Acad/5th Sem/COA/COA Laboratory/Assignment 1 - Verilog/ripple_ca/rca_16_tst.v
// Project Name:  ripple_ca
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ripple_carry_adder_16
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

// Testbench for 16-bit Ripple Carry Adder
module rca_16_tst;

	// Inputs
	reg [15:0] A;
	reg [15:0] B;
	reg Cin;

	// Outputs
	wire [15:0] sum;
	wire Cout;

	// Instantiate the Unit Under Test (UUT)
	ripple_carry_adder_16 uut (
		.sum(sum), 
		.Cout(Cout), 
		.A(A), 
		.B(B), 
		.Cin(Cin)
	);

	initial begin
		// Initialize Inputs
		A = 16'b0000000000000001;
		B = 16'b0000000000100001;
		Cin = 1'b0;

      $monitor($time, "\t A = %d\tB = %d\tCin = %d\tsum = %d\tCout = %d\n", A, B, Cin, sum, Cout);
		
		// Add stimulus here
		#5 A = 16'b0010001001001110; B = 16'b0001001011000001;
		#5 A = 16'b1100010001001010; B = 16'b1001000100000011; 
		#5 A = 16'b0010100000001111; B = 16'b0110101011010001; 
		#5 A = 16'b00000111110001011; B = 16'b111111011010001;
		#5 A = 16'b1111111111111111; B = 16'b1111111111111111;
		
		#5 $finish;

	end
      
endmodule

