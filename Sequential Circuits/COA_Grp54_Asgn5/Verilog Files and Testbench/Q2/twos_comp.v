`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:16:52 09/29/2021 
// Design Name: 
// Module Name:    twos_comp 
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
// Lab Assignment 5, Problem 2 - 2's Complement FSM
//////////////////////////////////////////////////////////////////////////////////

// FSM for 2's complement of given bit stream
module twos_comp(out, inp, reset, clk);
	// Input/Output Ports
	output out;
	input inp, reset, clk;
	reg out;												//	Output bit stored as a reg			
	reg state;
	
	parameter A = 1'd0 , B = 1'd1;				// states A and B, B is the accept state
	
	always@(posedge clk or posedge reset)
		if(reset) 										// Reset condition
			begin 	
				state = A; 
				out = 0; 
			end
		else
			begin
				case(state)								// State transitions (Mealy M/C)
					A: 
						if(inp == 0) 
						begin 
							state = A; 
							out = 0; 
						end 		
						else 
						begin 
							state = B; 
							out = 1; 
						end
				
					B: 
						if(inp == 1) 
						begin 
							state = B; 
							out = 0; 
						end 
						else 
						begin 
							state = B; 
							out = 1; 
						end
				
					default: 
						begin 
							state = A; 
							out = 1;
						end
				endcase 
			end 
			
endmodule
