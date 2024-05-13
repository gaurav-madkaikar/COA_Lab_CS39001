`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:19:22 08/27/2021 
// Design Name: 
// Module Name:    CLA_16bit 
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

// 16-bit Carry Look Ahead Adder (with Look Ahead Unit)
module CLA_16bit(sum, Plcu, Glcu, Cout, A, B, Cin);
    // Input Ports
    input[15:0] A, B;
    input Cin;
	 
	 // Output Ports
    output[15:0] sum;
    output Plcu, Glcu, Cout;

	 // Intermediary wires
    wire[3:0] P, G; 
    wire C4, C8, C12;

	 // Instantiate 4 ripple carry adders and compute the corresponding Cin bits
    CLA_4bit_aug cla1 (.sum(sum[3:0]), .Pg(P[0]), .Gg(G[0]), .A(A[3:0]), .B(B[3:0]), .Cin(Cin));
    assign C4 = G[0] | (Cin & P[0]);
    CLA_4bit_aug cla2 (.sum(sum[7:4]), .Pg(P[1]), .Gg(G[1]), .A(A[7:4]), .B(B[7:4]), .Cin(C4));
    assign C8 = G[1] | (C4 & P[1]);
    CLA_4bit_aug cla3 (.sum(sum[11:8]), .Pg(P[2]), .Gg(G[2]), .A(A[11:8]), .B(B[11:8]), .Cin(C8));
    assign C12 = G[2] | (C8 & P[2]);
    CLA_4bit_aug cla4 (.sum(sum[15:12]), .Pg(P[3]), .Gg(G[3]), .A(A[15:12]), .B(B[15:12]), .Cin(C12));

    // Assign the outputs
    assign Cout = G[3] | (C12 & P[3]);
	assign Plcu = P[3] & P[2] & P[1] & P[0];
	assign Glcu = G[3] | (P[3] & G[2]) | (P[3] & P[2] & G[1]) | (P[3] & P[2] & P[1] & G[0]);

endmodule
