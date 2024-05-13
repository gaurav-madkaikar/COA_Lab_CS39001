`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:49:57 09/29/2021 
// Design Name: 
// Module Name:    multi_3_fsm 
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
// Lab Assignment 5, Problem 3 - FSM for multiple of 3
//////////////////////////////////////////////////////////////////////////////////

// FSM for multiple of 3
module multi_3_fsm( out, in , reset , clk );
	// Input/Output Ports
	input in , reset , clk;
	output reg out;										// Output = 1, implies the input bit stream is divisible by 3
	
	reg[1:0] state;										// store the current state
	parameter A = 2'd0, B = 2'd1 , C = 2'd2;		// All states associated with the FSM (A, B, C)
	
	always@(posedge clk ) 
	begin 
		if(reset) 											// Reset condition
		begin 
			state = A; 
			out = 0 ; 
		end
		else 
		begin
			case(state) 									// State Transitions according to the state diagram
				A: 
					if(in == 0) 
					begin 
						state = A; 
						out = 1; 
					end
					else 
					begin 
						state = B; 
						out = 0; 
					end
					
				B: 
					if(in == 0) 
					begin 
						state = C; 
						out = 0;
					end
					else 
					begin 
						state = A; 
						out = 1; 
					end
					
				C:
					if(in == 0) 
					begin  
						state = B; 
						out = 0;
					end
					else 
					begin 
						state = C; 
						out = 0;
					end
		
			endcase
		end
	end
endmodule
