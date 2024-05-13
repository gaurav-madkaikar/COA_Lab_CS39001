`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:24:47 09/29/2021
// Design Name:   twos_comp
// Module Name:   C:/Users/gmadk/Desktop/KGP Acad/5th Sem/COA/COA Laboratory/Assignment 5 - FSM Design/Twos_Comp_Q2/tws_comp_tst.v
// Project Name:  Twos_Comp_Q2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: twos_comp
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
//
// Group No: 54
// Members: Gaurav Madkaikar (19CS30018), Girish Kumar (19CS30019)
// Lab Assignment 5, Problem 2 - 2's Complement FSM
////////////////////////////////////////////////////////////////////////////////

// Testbench for 2's complement FSM
module tws_comp_tst;

	// Inputs
	reg inp;
	reg reset;
	reg clk;

	// Outputs
	wire out;

	// Instantiate the Unit Under Test (UUT)
	twos_comp uut (
		.out(out), 
		.inp(inp), 
		.reset(reset), 
		.clk(clk)
	);

	// Clock
	always begin
		#10 clk = ~clk;
		if(clk)
			$monitor (" Input_bit = %d\t => \tOutput_bit = %d ", inp, out);
	end

	// Initialisations
	initial begin
		clk = 1;
		reset = 1; 
		#10 reset = 0; 
		// Provide inputs from LSB to MSB (from right-to-left)
		// inp = 10110, out = 01010
		#10 inp = 0;
		#20 inp = 1;
		#20 inp = 1;
		#20 inp = 0;
		#20 inp = 1; 
		
		#20 $finish; 
	end
      
endmodule

