`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:11:52 10/10/2021 
// Design Name: 
// Module Name:    bit_adder 
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
module bit_adder( A , B , sum , clk , load );
	input clk , load  ;
	input [7:0] A , B;
	output [7:0] sum ;
	wire outA , outB , sumout ,Cout ;
	wire Cin ;
	
	
	
	// 1 bit Full adder , take input from above shift registers (outA , outB) , initial cin =0
	full_adder 				 fa( .sum(sumout) , .Cout(Cout) , .A(outA) , .B(outB) , .Cin(Cin));

	// d flip flop , , input from fa as cout  , output as Cin , which is again input to fa as Cin 
	D_flip_flop 			 dff( .D(Cout) , .clk(clk) , .Q(Cin) );
	
	//output register of bit adder , serial input as sumout of fa , and shift it to sum reg
	shift_Register_sipo   sum_( .in(sumout) , .clk(clk) , .out(sum) );
	
	//load the shift register with inpt A 
	shift_registerpiso 	 A_in (.in(A) , .load(load) , .clk(clk) , .out(outA));
	
	// load shift register with input B
	shift_registerpiso	 B_in (.in(B) , .load(load) , .clk(clk) , .out(outB));
endmodule
