`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:42:10 10/10/2021 
// Design Name: 
// Module Name:    full_Adder 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
// Group No: 54
// Members: Gaurav Madkaikar (19CS30018), Girish Kumar (19CS30019)
// assignment 6 
//////////////////////////////////////////////////////////////////////////////////
module full_adder(sum, Cout, A, B, Cin);
	// Input Ports
	input A, B,Cin ;
		
	
	// Output Ports
	output sum, Cout;	
	//assign {Cout, sum } = A+B+Cin; 
	assign sum  = (A ^ B) ^ Cin;
	assign Cout = (A & B) | (B & Cin) | (A & Cin); 

endmodule
