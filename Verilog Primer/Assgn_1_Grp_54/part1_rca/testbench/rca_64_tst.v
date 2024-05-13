`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   07:39:04 08/29/2021
// Design Name:   ripple_carry_adder_64
// Module Name:   C:/Users/gmadk/Desktop/KGP Acad/5th Sem/COA/COA Laboratory/Assignment 1 - Verilog/ripple_ca/rca_64_tst.v
// Project Name:  ripple_ca
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ripple_carry_adder_64
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module rca_64_tst;

	// Inputs
	reg [63:0] A;
	reg [63:0] B;
	reg Cin;

	// Outputs
	wire [63:0] sum;
	wire Cout;

	// Instantiate the Unit Under Test (UUT)
	ripple_carry_adder_64 uut (
		.sum(sum), 
		.Cout(Cout), 
		.A(A), 
		.B(B), 
		.Cin(Cin)
	);

	initial begin
		// Initialize Inputs
		A = 64'b1;
		B = 64'b1;
		Cin = 1'b0;

      $monitor($time, "\t A = %d\tB = %d\tCin = %d\tsum = %d\tCout = %d\n", A, B, Cin, sum, Cout);
		
		// Add stimulus here
		#10 A = 64'b0010101001001001010100100111001101010010111101100110101001011110; B = 64'b0101111011001011110110000011110010001001010000011110010001001010;
		#10 A = 64'b1101000100100101000101010010001110100010010010100010101001000111; B = 64'b1101001011011001100011000110100101101100110001100000000010000001; 
		#10 A = 64'b0001011100101010000101110010101000100011000011000010001100001100; B = 64'b0101010000101010001000010101000010101000100000000011010000001101; 
		#10 A = 64'b1110111001010100010001100001100010101000010101000100000000011011; B = 64'b1101010011101000101000110101001110100010100000000011010000001101; 
		#10 A = 64'b1111111111111111111111111111111111111111111111111111111111111111; B = 64'b1111111111111111111111111111111111111111111111111111111111111111;
		
		#10 $finish;

	end
      
endmodule

