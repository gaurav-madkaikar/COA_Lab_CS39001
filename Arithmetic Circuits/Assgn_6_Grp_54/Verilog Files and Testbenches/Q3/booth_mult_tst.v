`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:36:43 10/10/2021
// Design Name:   booth_multiplier
// Module Name:   C:/Users/gmadk/Desktop/KGP Acad/5th Sem/COA/COA Laboratory/Assignment 6 - Verilog/booth_multiplier/booth_mult_tst.v
// Project Name:  booth_multiplier
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: booth_multiplier
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
////////////////////////////////////////////////////////////////////////////////

// Testbench for 8-bit booth's multiplier
module booth_mult_tst;

	// Inputs
	reg [7:0] Mcand;
	reg [7:0] Mplier;
	reg clk;
	reg reset;

	// Outputs
	wire [15:0] product;

	// Instantiate the Unit Under Test (UUT)
	booth_multiplier uut (
		.product(product), 
		.Mcand(Mcand), 
		.Mplier(Mplier), 
		.clk(clk), 
		.reset(reset)
	);
	
	// Run the clock
	always begin
		#10 clk = !clk;
		// Display the result on the positive edge
		if(clk)
			$monitor("Example %d: The product of %d and %d is %8b !",($time/10), Mcand, Mplier, product);
	end
	
	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;
        
		// Add stimulus here
		// Example 1: A = 475, B = 79
		#10 Mcand = 475; Mplier = 79;
			 reset = 1;
		#10 reset = 0;
		
		// Example 2: A = 255, B = 255
		#10 Mcand = 255; Mplier = 255;
			 reset = 1;
		#10 reset = 0;
		
		#500 $finish;
	end
      
endmodule

