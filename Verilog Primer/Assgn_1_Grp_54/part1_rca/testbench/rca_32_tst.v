`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:58:56 08/27/2021
// Design Name:   ripple_carry_adder_32
// Module Name:   C:/Users/gmadk/Desktop/KGP Acad/5th Sem/COA/COA Laboratory/Assignment 1 - Verilog/ripple_ca/rca_32_tst.v
// Project Name:  ripple_ca
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ripple_carry_adder_32
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

// Testbench for 32-bit Ripple Carry Adder
module rca_32_tst;

	// Inputs
	reg [31:0] A;
	reg [31:0] B;
	reg Cin;

	// Outputs
	wire [31:0] sum;
	wire Cout;

	// Instantiate the Unit Under Test (UUT)
	ripple_carry_adder_32 uut (
		.sum(sum), 
		.Cout(Cout), 
		.A(A), 
		.B(B), 
		.Cin(Cin)
	);

	initial begin
        
		// Initialize Inputs
		A = 32'b1;
		B = 32'b1;
		Cin = 1'b0;

        $monitor($time, "\t A = %d\tB = %d\tCin = %d\tsum = %d\tCout = %d\n", A, B, Cin, sum, Cout);
		
		// Add stimulus here
		#10 A = 32'b00101010010011100110101001011110; B = 32'b01011110110000011110010001001010;
		#10 A = 32'b10100010010010100010101001000111; B = 32'b11010010110110011000110000000001; 
		#10 A = 32'b00010111001010100010001100001100; B = 32'b01010100001010100010000000001101; 
		#10 A = 32'b11101110010101000100011000011001; B = 32'b11010100111010001010000000001101; 
		#10 A = 32'b11111111111111111111111111111111; B = 32'b11111111111111111111111111111111;
		
		#10 $finish;


	end
      
endmodule

