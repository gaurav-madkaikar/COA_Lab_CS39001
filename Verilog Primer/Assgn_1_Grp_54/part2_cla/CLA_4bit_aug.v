`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:24:07 08/27/2021 
// Design Name: 
// Module Name:    CLA_4bit_aug 
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
module CLA_4bit_aug(sum, Pg, Gg, A, B, Cin);
    input[3:0] A, B;
    input Cin;
    output [3:0] sum;
    output Pg, Gg;

    wire[3:0] P, G, C;

    // P(i) = A(i) ^ B(i) 
    assign P[0] = (A[0] ^ B[0]),
           P[1] = (A[1] ^ B[1]),
           P[2] = (A[2] ^ B[2]),
           P[3] = (A[3] ^ B[3]);

    // G(i) = A(i) & B(i) 
    assign G[0] = (A[0] & B[0]),
           G[1] = (A[1] & B[1]),
           G[2] = (A[2] & B[2]),
           G[3] = (A[3] & B[3]);

    // C(i+1) = G(i) | (P(i) & C(i))
    assign C[0] = Cin,
           C[1] = G[0] | (Cin & P[0]),
           C[2] = G[1] | (G[0] & P[1]) | (Cin & P[0] & P[1]),
           C[3] = G[2] | (G[1] & P[2]) | (G[0] & P[1] & P[2]) | (Cin & P[0] & P[1] & P[2]);

    assign sum = P ^ C;

    assign Pg = (P[3] & P[2] & P[1] & P[0]);
	 assign Gg = G[3] | (P[3] & G[2]) | (P[3] & P[2] & G[1]) | (P[3] & P[2] & P[1] & G[0]);
endmodule
