`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:56:03 09/29/2021
// Design Name:   multi_3_fsm
// Module Name:   C:/Users/gmadk/Desktop/KGP Acad/5th Sem/COA/COA Laboratory/Assignment 5 - FSM Design/Multi_3_Q3/multi_3_tst.v
// Project Name:  Multi_3_Q3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: multi_3_fsm
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
// Group No: 54
// Members: Gaurav Madkaikar (19CS30018), Girish Kumar (19CS30019)
// Lab Assignment 5, Problem 3 - FSM for multiple of 3
////////////////////////////////////////////////////////////////////////////////

// Testbench for the FSM
module multi_3_tst;

	// Inputs
	reg in;
	reg reset;
	reg clk;

	// Outputs
	wire out;

	// Instantiate the Unit Under Test (UUT)
	multi_3_fsm uut (
		.out(out), 
		.in(in), 
		.reset(reset), 
		.clk(clk)
	);

	// Clock and display the output
	always begin
		#10 clk = ~clk;
		if(clk)
			$monitor(" Input = %d    =>   Output = %d ", in, out);
	end

	initial
	begin
	// Initialisations
		clk = 1;
		reset = 1; 
		#10 reset = 0; 
		// Input bit stream
		#10 in = 0;
		#20 in = 1;
		#20 in = 1;
		#20 in = 0;
		#20 in = 1;
		#20 in = 1;
		#20 in = 0;
		#20 in = 1; 
		#20 $finish; 	
	end

endmodule


