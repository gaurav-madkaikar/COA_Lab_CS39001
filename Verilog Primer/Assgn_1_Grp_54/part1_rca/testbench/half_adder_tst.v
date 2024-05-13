`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   07:23:38 08/27/2021
// Design Name:   half_adder
// Module Name:   C:/Users/gmadk/Desktop/KGP Acad/5th Sem/COA/COA Laboratory/Assignment 1 - Verilog/ripple_ca/half_adder_tst.v
// Project Name:  ripple_ca
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: half_adder
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

// Testbench for 1-bit half adder
module half_adder_tst;

	// Inputs
	reg A;
	reg B;

	// Outputs
	wire sum;
	wire Cout;
	
	reg[2:0] tmp = 3'd0;

	// Instantiate the Unit Under Test (UUT)
	half_adder uut (
		.sum(sum), 
		.Cout(Cout), 
		.A(A), 
		.B(B)
	);
	

	initial begin
		// Initialize inputs
		A = 1'b0;
		B = 1'b0;
        
		// Print to console
		$monitor($time,"\tA = %d\tB = %d\tsum = %d\tCout = %d\n", A, B, sum, Cout);
		
		// Add stimulus here
		for(; tmp < 4; tmp = tmp + 1'b1)
			begin
				{A, B} = {A, B} + 1'b1;
				
				#5;
			end
			
		#5 $finish;
	end
      
endmodule

