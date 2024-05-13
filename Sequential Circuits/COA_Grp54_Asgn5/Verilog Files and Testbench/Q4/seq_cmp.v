`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:12:06 09/29/2021 
// Design Name: 
// Module Name:    seq_cmp 
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
// Lab Assignment 5, Problem 4 - Unsigned Sequential Comparator
//////////////////////////////////////////////////////////////////////////////////

// FSM for an unsigned sequential comparator
module seq_cmp(leg , op,  A , B , clk , rst );
	 // Input/Output Ports
	 input [31:0] A;
	 input [31:0] B;
	 input clk, rst;
	 
	 output reg [2:0] leg = 3'b000; // leg will store the bits which decide whether A < B or A > B or A = B; Initially leg = {000}
	 output reg op = 0; 

	 reg [31:0] tempA , tempB;																// temporary reg variables
	 parameter reset = 3'b000 , L = 3'b100 , E = 3'b010 , G = 3'b001; 		// States of the FSM
	 
	 reg [2:0] state ;																		// stores the current state
	 reg msbA = 1'b0 , msbB = 1'b0 ;														// store the MSB of inputs A and B
	
	 always@(posedge clk )
		begin 
			if(rst) 																				// Reset condition (restore the reg values)
			begin 
				state= reset; 
				leg = 0; 
				tempA = A; 
				tempB = B; 
				op = 0; 
			end
			if(tempA == 32'b0 && tempB == 32'b0) 										// Terminate Condition
				begin 
				   op = 1;
					leg = E;
				end
		
		//find MSB of both A and B
		msbA = tempA[31];
		msbB = tempB[31];
		
		case(state) 																			// State Transitions
				reset: 
					begin 
						leg =0; 
						op = 0;
						if(msbA == msbB) 
							state = E;
						else if(msbA > msbB) 
							state =  G;
						else 
							state = L; 
					end
				L: 
					begin  
						state = L; 
						op = 1 ; 
						leg = L ; 
					end
				E: 
					begin 
						if(msbA == msbB) 
							state = E;
						else if(msbA > msbB) 
							state =  G;
						else 
							state = L; 
					end
				G: 
					begin  
						state = G; 
						op = 1 ; 
						leg = G; 
					end
		endcase
		
		// Left-shift at each clock cycle (iteration)
		tempA = tempA<<1;
		tempB = tempB<<1;
	
	end
			
endmodule
