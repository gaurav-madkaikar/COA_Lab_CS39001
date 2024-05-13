`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   08:15:27 08/27/2021
// Design Name:   full_adder
// Module Name:   C:/Users/gmadk/Desktop/KGP Acad/5th Sem/COA/COA Laboratory/Assignment 1 - Verilog/ripple_ca/full_adder_tst.v
// Project Name:  ripple_ca
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: full_adder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Group No: 54
// Members: Gaurav Madkaikar (19CS30018), Girish Kumar (19CS30019)
// Lab Assignment 1, Problem 1

////////////////////////////////////////////////////////////////////////////////

// Tetsbench for 1-bit full adder
module full_adder_tst;

	// Inputs
	reg A;
	reg B;
	reg Cin;

	// Outputs
	wire sum;
	wire Cout;
	
	reg[3:0] tmp = 4'd0;

	// Instantiate the Unit Under Test (UUT)
	full_adder uut (
		.sum(sum), 
		.Cout(Cout), 
		.A(A), 
		.B(B), 
		.Cin(Cin)
	);

	initial begin
		// Initialize Inputs
		A = 1'b0;
		B = 1'b0;
		Cin = 1'b0;
		
		$monitor("%d:\t A = %d\tB = %d\tCin = %d\tsum = %d\tCout = %d\n", $time, A, B, Cin, sum, Cout);
		
		// Add stimulus here
		for(; tmp < 8; tmp = tmp + 1'b1)
			begin
				
				{A, B, Cin} = {A, B, Cin} + 1'b1;
				 
				#5;
			end
		#5 $finish;
	end
      
endmodule

