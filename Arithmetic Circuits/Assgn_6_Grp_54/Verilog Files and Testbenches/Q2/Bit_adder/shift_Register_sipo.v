`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:05:45 10/10/2021 
// Design Name: 
// Module Name:    shift_Register_sipo 
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

//serial in parallel  out register (for the output of bit adder
module shift_Register_sipo(in , clk ,  out);

	input clk , in ;
	output reg [7:0] out;
	reg [7:0] temp = 8'bxxxxxxxx;  // initialise the register 
	reg count = 0;	// counter for 8 clock cycles 
	always@(posedge clk)
		begin
	 
		if(count<8) 
		begin
			temp[7]= in;
			temp = temp>>1; 
			end
		else temp[7]=in; // do not shift in 8th clock cycles 	
		count = count + 1;
		out = temp ;
 
		end
		
endmodule
