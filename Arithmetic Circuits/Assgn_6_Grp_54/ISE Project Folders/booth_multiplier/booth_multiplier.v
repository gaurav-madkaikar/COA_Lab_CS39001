`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:35:22 10/10/2021 
// Design Name: 
// Module Name:    booth_multiplier 
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
// Lab Assignment 6, Problem 3 - Booth's Multiplier
//////////////////////////////////////////////////////////////////////////////////

// 8-bit Booth's Multiplier
module booth_multiplier(product, Mcand, Mplier, clk, reset);

input [7:0] Mcand, Mplier;
input clk, reset;
output [15:0] product;

reg Q_minus_1;
reg [7:0] A, B, Q;
wire [7:0] sum, diff;
wire Cout;
	
    always @(posedge clk)
    begin
        if (reset) 	// Load the inputs
            begin
                A <= 8'b00000000;
                Q <= Mplier;
					 B <= Mcand;
                Q_minus_1 <= 1'b0;
            end
        else 			// Conditionally add or subtract
            begin
					 if(Q[0] == Q_minus_1)
						begin
							A <= {A[7], A[7:1]};
                     Q <= {A[0], Q[7:1]};
                     Q_minus_1 <= Q[0];
						end
					 else if((Q[0] == 1) && (Q_minus_1 == 0))
						begin
                      A <= {diff[7], diff[7:1]};
                      Q <= {diff[0], Q[7:1]};
                      Q_minus_1 <= Q[0];
						end
					 else if((Q[0] == 0) && (Q_minus_1 == 1))
						begin
                      A <= {sum[7], sum[7:1]};
                      Q <= {sum[0], Q[7:1]};
                      Q_minus_1 <= Q[0];

						end
            end
    end
// Instantiate adders to add and subtract
rca_8bit addRes(.sum(sum), .A(A), .B(B), .Cin(1'b0), .Cout(Cout));
rca_8bit subRes(.sum(diff), .A(A), .B(~B), .Cin(1'b1), .Cout(Cout));

assign product = {A, Q};
endmodule
