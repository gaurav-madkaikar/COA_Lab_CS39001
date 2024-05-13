`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   08:07:15 08/29/2021
// Design Name:   CLA_16bit
// Module Name:   C:/Users/gmadk/Desktop/KGP Acad/5th Sem/COA/COA Laboratory/Assignment 1 - Verilog/carry_look_ahead_adder/cla_16_tst.v
// Project Name:  carry_look_ahead_adder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: CLA_16bit
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

// Testbench for 16-bit Carry Look Ahead Adder (with Look Ahead Unit)
module cla_16_tst;

	// Inputs
	reg [15:0] A;
	reg [15:0] B;
	reg Cin;

	// Outputs
	wire [15:0] sum;
	wire Plcu;
	wire Glcu;
	wire Cout;

	// Instantiate the Unit Under Test (UUT)
	CLA_16bit uut (
		.sum(sum), 
		.Plcu(Plcu), 
		.Glcu(Glcu), 
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

      $monitor("%d:\t A = %d\tB = %d\tCin = %d\tsum = %d\tCout = %d\tPlcu = %d\tGlcu = %d\n", $time, A, B, Cin, sum, Cout, Plcu, Glcu);
		
		// Add stimulus here
		#5 A = 16'b0010001001001110; B = 16'b0001001011000001;
		#5 A = 16'b1100010001001010; B = 16'b1001000100000011; 
		#5 A = 16'b0010100000001111; B = 16'b0110101011010001; 
		#5 A = 16'b00000111110001011; B = 16'b111111011010001;
		#5 A = 16'b1111111111111111; B = 16'b1111111111111111;
		
		#5 $finish;

	end
      
endmodule

