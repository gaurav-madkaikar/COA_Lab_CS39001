`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:48:45 10/10/2021 
// Design Name: 
// Module Name:    shift_register 
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
//
// Group No: 54
// Members: Gaurav Madkaikar (19CS30018), Girish Kumar (19CS30019)
// assignment 6 
//////////////////////////////////////////////////////////////////////////////////
module shift_registerpiso(in , load , clk , out );
	input clk, load;
	input [7:0] in;
	output reg out;
	
	reg [7:0] temp ;
	
	always@(posedge clk)
	begin 
	if(load) begin
		temp <= in;	out<=0;	//if load is 1 then temp = input (in)
		end
	else
		begin
		   // assign lsb as output and shift remaining each bit to the right  
			out <= temp[0];
			temp <= temp>>1;
		end		
	end
	
endmodule
