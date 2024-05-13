`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:18:18 10/10/2021
// Design Name:   shift_registerpiso
// Module Name:   F:/xilinxFiles/BitAdder/shr_piso_tb.v
// Project Name:  BitAdder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: shift_registerpiso
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module shr_piso_tb;

	// Inputs
	reg [7:0] in;
	reg load;
	reg clk;

	// Outputs
	wire out;

	// Instantiate the Unit Under Test (UUT)
	shift_registerpiso uut (
		.in(in), 
		.load(load), 
		.clk(clk), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		in = 8'b10010110;
		load = 1;
		clk = 1;

		// Wait 100 ns for global reset to finish
		#5 load =0;
        #85 $finish;
		// Add stimulus here

	end
   always 	#5 clk =~clk ;
	always@(posedge clk) $monitor("out =%d , in =%d " , out , in);
endmodule

