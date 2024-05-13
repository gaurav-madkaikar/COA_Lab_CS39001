`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:30:00 10/10/2021
// Design Name:   barrel_shifter
// Module Name:   C:/Users/gmadk/Desktop/KGP Acad/5th Sem/COA/COA Laboratory/Assignment 6 - Verilog/barrel_shifter/barrel_shifter_tst.v
// Project Name:  barrel_shifter
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: barrel_shifter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
// Group No: 54
// Members: Gaurav Madkaikar (19CS30018), Girish Kumar (19CS30019)
// Lab Assignment 6, Problem 1 - Barrel Shifter
////////////////////////////////////////////////////////////////////////////////

// 8-bit Barrel Shifter Testbench
module barrel_shifter_tst;

	// Inputs
	reg [7:0] inp;
	reg [2:0] shamt;
	reg dir;

	// Outputs
	wire [7:0] out;

	// Instantiate the Unit Under Test (UUT)
	barrel_shifter uut (
		.inp(inp), 
		.shamt(shamt), 
		.dir(dir), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		inp = 0;
	   shamt = 0;
		dir = 0;
        
		// Add stimulus here 
		
		// Input 1 - Expected Output: 00010100
		#10 inp = 8'b10100110; shamt = 3'b011; dir = 0;
		
		$monitor($time, "%8b >> %d = %8b\n", inp, shamt, out);
		
		// Input 2 - Expected Output: 01000000
		#10 inp = 8'b00000001; shamt = 3'b110; dir = 1;
		
		// Input 3 - Expected Output: 10101100
		#10 inp = 8'b10101011; shamt = 3'b010; dir = 1;
		
		#10 $finish;
	end
   
endmodule

