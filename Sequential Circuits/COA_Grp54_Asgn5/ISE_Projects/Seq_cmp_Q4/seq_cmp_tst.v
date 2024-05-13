`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:21:48 09/29/2021
// Design Name:   seq_cmp
// Module Name:   C:/Users/gmadk/Desktop/KGP Acad/5th Sem/COA/COA Laboratory/Assignment 5 - FSM Design/Seq_cmp_Q4/seq_cmp_tst.v
// Project Name:  Seq_cmp_Q4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: seq_cmp
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
// Group No: 54
// Members: Gaurav Madkaikar (19CS30018), Girish Kumar (19CS30019)
// Lab Assignment 5, Problem 4 - Unsigned Sequential Comparator
////////////////////////////////////////////////////////////////////////////////

// Testbench for the unsigned sequential comparator
module seq_cmp_tst;

	// Inputs
	reg [31:0] A;
	reg [31:0] B;
	reg clk;
	reg rst;

	// Outputs
	wire [2:0] leg;
	wire op;

	// Instantiate the Unit Under Test (UUT)
	seq_cmp uut (
		.leg(leg), 
		.op(op), 
		.A(A), 
		.B(B), 
		.clk(clk), 
		.rst(rst)
	);

	// Start the clock and display the results
	always
	begin 
		#10 clk =~clk;
		if(clk && op) 		// Stop when op is set to 1
			begin
				if(leg == 3'b001)
					$display("\nA =%d is greater than B =%d\n", A, B);
				else if(leg == 3'b010)
					$display("\nA =%d is equal to B =%d\n", A, B);
				else if(leg == 3'b100)
					$display("\nA =%d is less than B =%d\n", A, B);

				#5 $finish;
			end
			
		else if(clk)
			$monitor("A= %d\tB = %d\tLEG = %3b", A, B, leg);
	end
	
	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;
		clk = 1;
		rst = 1;
		
		// Provide 32-bit inputs to A and B
		// A = 2147393637, B = 2147323346 => A > B
		// A = 783833733,  B = 793782311  => A < B
		// A = 2147483647, B = 2147483647 => A = B
		A = 783833733; B = 793782311;
		#10 rst = 0;
			
		#750 $finish;
	end
      
endmodule

