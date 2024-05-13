`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:08:23 08/29/2021 
// Design Name: 
// Module Name:    CLA_16bit_ripple 
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

// 16-bit Carry Look Ahead Adder (carry is rippled)
module CLA_16bit_ripple(sum, Cout, A, B, Cin);
    // Input ports
    input[15:0] A, B;
    input Cin;
	 
	 // Output ports
    output[15:0] sum;
    output Cout;

	 // Intermediary wires
    wire w1, w2, w3, w4;

	 // Instantiate 4 4-bit Carry Look Ahead Adders
    CLA_4bit cla1(.sum(sum[3:0]), .Cout(w1), .A(A[3:0]), .B(B[3:0]), .Cin(Cin));
    CLA_4bit cla2(.sum(sum[7:4]), .Cout(w2), .A(A[7:4]), .B(B[7:4]), .Cin(w1));
    CLA_4bit cla3(.sum(sum[11:8]), .Cout(w3), .A(A[11:8]), .B(B[11:8]), .Cin(w2));
    CLA_4bit cla4(.sum(sum[15:12]), .Cout(Cout), .A(A[15:12]), .B(B[15:12]), .Cin(w3));

endmodule
