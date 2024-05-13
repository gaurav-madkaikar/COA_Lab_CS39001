`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:27:31 09/29/2021
// Design Name:   LFSR_main
// Module Name:   C:/Users/gmadk/Desktop/KGP Acad/5th Sem/COA/COA Laboratory/Assignment 5 - FSM Design/LFSR_Q1/LFSR_tst.v
// Project Name:  LFSR_Q1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: LFSR_main
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// 
// Group No: 54
// Members: Gaurav Madkaikar (19CS30018), Girish Kumar (19CS30019)
// Lab Assignment 5, Problem 1 - LFSR Design
////////////////////////////////////////////////////////////////////////////////

// Testbench for the LFSR module
module LFSR_tst;

	// Inputs
	reg[3:0] seed;
	reg clk;
	reg rst;
	reg sel;

	// Outputs
	wire[3:0] wOut;

	// Instantiate the Unit Under Test (UUT)
	LFSR_main uut (
		.wOut(wOut), 
		.seed(seed), 
		.clk(clk), 
		.rst(rst), 
		.sel(sel)
	);

	// Run the clock
	always begin
		#10 clk = !clk;
		if(clk)
			$monitor("%d ns:\tState %d - %4b", $time, ($time/20), wOut);
	end

	initial begin
		// Initialize Inputs
		seed = 4'b0000;
		clk = 1;
		sel = 0;
		rst = 1;
		
		#10 rst = 0;
			 seed = 4'b1111;	// Provide the initial seed
		#10 sel = 1;
		
		#320 $finish;
	end	
      
endmodule

