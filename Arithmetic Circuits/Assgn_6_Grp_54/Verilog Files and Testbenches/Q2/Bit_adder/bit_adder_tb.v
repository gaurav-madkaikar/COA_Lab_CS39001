`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:47:49 10/10/2021
// Design Name:   bit_adder
// Module Name:   F:/xilinxFiles/BitAdder/bit_adder_tb.v
// Project Name:  BitAdder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: bit_adder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//Group No: 54
// Members: Gaurav Madkaikar (19CS30018), Girish Kumar (19CS30019)
// assignment 6 
// 
////////////////////////////////////////////////////////////////////////////////

module bit_adder_tb;

	// Inputs
	reg [7:0] A;
	reg [7:0] B;
	reg clk;
	reg load;
	

	// Outputs
	wire [7:0] sum;

	// Instantiate the Unit Under Test (UUT)
	bit_adder uut (
		.A(A), 
		.B(B), 
		.sum(sum), 
		.clk(clk), 
		.load(load)
	);

	initial begin
		// Initialize Inputs
		A = 8'b00110111;  // 55
		B = 8'b00011111;	// 31
		clk = 1;
		load = 1;
	
		#5 load = 0 ;   // A and B loaded to shift registers piso
		// finsih after 8 clock cycles 
		#85 $finish;
	end
	
        
	
	always  #5 clk = ~clk;

	always #10 $monitor("sum = %d A= %d , B = %d", sum , A , B);
  
endmodule

