`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:18:11 08/27/2021 
// Design Name: 
// Module Name:    RCA_4bit 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
//
// Group No: 54
// Members: Gaurav Madkaikar (19CS30018), Girish Kumar (19CS30019)
// Lab Assignment 1, Problem 2

//////////////////////////////////////////////////////////////////////////////////

// 4-bit Ripple Carry Adder
module RCA_4bit(sum, Cout, A, B, Cin);

	 // Input Ports
    input[3:0] A, B ;
    input Cin ;
	 
	 // Output Ports
    output[3:0] sum ;
    output Cout ;

	 // Intermediary wires
    wire c1, c2, c3 ;

    // Implemented as 4 instantiated 1-bit full adders
    full_adder fa0 (.A(A[0]), .B(B[0]), .Cin(Cin), .Cout(c1), .sum(sum[0])) ;
    full_adder fa1 (.A(A[1]), .B(B[1]), .Cin(c1), .Cout(c2), .sum(sum[1])) ;
    full_adder fa2 (.A(A[2]), .B(B[2]), .Cin(c2), .Cout(c3), .sum(sum[2])) ;
    full_adder fa3 (.A(A[3]), .B(B[3]), .Cin(c3), .Cout(Cout), .sum(sum[3])) ;

endmodule
