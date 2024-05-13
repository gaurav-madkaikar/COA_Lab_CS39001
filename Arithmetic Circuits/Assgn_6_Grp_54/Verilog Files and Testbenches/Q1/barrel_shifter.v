`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:32:14 10/10/2021 
// Design Name: 
// Module Name:    barrel_shifter 
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
// Lab Assignment 6, Problem 1 - Barrel Shifter
//////////////////////////////////////////////////////////////////////////////////

// 8-bit Barrel Shifter
module barrel_shifter (input [7:0] inp, input [2:0] shamt, input dir, output [7:0] out);
	 // dir = 1 (left shift), dir = 0 (right shift)

    // Intermediary wires
	wire [7:0] tmp1, tmp2;

	// Instantiate 2X1 MUXes
	// 4-bit shift 
	mux_2X1  fbit_M1 (.inp({inp[3], 1'b0, inp[7]}), .sel(shamt[2]), .out(tmp1[7]), .sft(dir));
	mux_2X1  fbit_M2 (.inp({inp[2], 1'b0, inp[6]}), .sel(shamt[2]), .out(tmp1[6]), .sft(dir));
	mux_2X1  fbit_M3 (.inp({inp[1], 1'b0, inp[5]}), .sel(shamt[2]), .out(tmp1[5]), .sft(dir));
	mux_2X1  fbit_M4 (.inp({inp[0], 1'b0, inp[4]}), .sel(shamt[2]), .out(tmp1[4]), .sft(dir));
	mux_2X1  fbit_M5 (.inp({1'b0, inp[7], inp[3]}), .sel(shamt[2]), .out(tmp1[3]), .sft(dir));
	mux_2X1  fbit_M6 (.inp({1'b0, inp[6], inp[2]}), .sel(shamt[2]), .out(tmp1[2]), .sft(dir));
	mux_2X1  fbit_M7 (.inp({1'b0, inp[5], inp[1]}), .sel(shamt[2]), .out(tmp1[1]), .sft(dir));
	mux_2X1  fbit_M8 (.inp({1'b0, inp[4], inp[0]}), .sel(shamt[2]), .out(tmp1[0]), .sft(dir));
	 
	// 2-bit shift 
	mux_2X1  tbit_M1 (.inp({tmp1[5], 1'b0, tmp1[7]}), .sel(shamt[1]),.out(tmp2[7]),.sft(dir));
	mux_2X1  tbit_M2 (.inp({tmp1[4], 1'b0, tmp1[6]}), .sel(shamt[1]),.out(tmp2[6]),.sft(dir));
	mux_2X1  tbit_M3 (.inp({tmp1[3], tmp1[7], tmp1[5]}),.sel(shamt[1]),.out(tmp2[5]),.sft(dir));
	mux_2X1  tbit_M4 (.inp({tmp1[2], tmp1[6], tmp1[4]}),.sel(shamt[1]),.out(tmp2[4]),.sft(dir));
	mux_2X1  tbit_M5 (.inp({tmp1[1], tmp1[5], tmp1[3]}),.sel(shamt[1]),.out(tmp2[3]),.sft(dir));
	mux_2X1  tbit_M6 (.inp({tmp1[0], tmp1[4], tmp1[2]}),.sel(shamt[1]),.out(tmp2[2]),.sft(dir));
	mux_2X1  tbit_M7 (.inp({1'b0, tmp1[3], tmp1[1]}),.sel(shamt[1]),.out(tmp2[1]),.sft(dir));
	mux_2X1  tbit_M8 (.inp({1'b0, tmp1[2], tmp1[0]}),.sel(shamt[1]),.out(tmp2[0]),.sft(dir));
	 
	// 1-bit shift 
	mux_2X1  obit_M1 (.inp({tmp2[6], 1'b0, tmp2[7]}),.sel(shamt[0]),.out(out[7]),.sft(dir));
	mux_2X1  obit_M2 (.inp({tmp2[5], tmp2[7], tmp2[6]}),.sel(shamt[0]),.out(out[6]),.sft(dir));
	mux_2X1  obit_M3 (.inp({tmp2[4], tmp2[6], tmp2[5]}),.sel(shamt[0]),.out(out[5]),.sft(dir));
	mux_2X1  obit_M4 (.inp({tmp2[3], tmp2[5], tmp2[4]}),.sel(shamt[0]),.out(out[4]),.sft(dir));
	mux_2X1  obit_M5 (.inp({tmp2[2], tmp2[4], tmp2[3]}),.sel(shamt[0]),.out(out[3]),.sft(dir));
	mux_2X1  obit_M6 (.inp({tmp2[1], tmp2[3], tmp2[2]}),.sel(shamt[0]),.out(out[2]),.sft(dir));
	mux_2X1  obit_M7 (.inp({tmp2[0], tmp2[2], tmp2[1]}),.sel(shamt[0]),.out(out[1]),.sft(dir));
	mux_2X1  obit_M8 (.inp({1'b0, tmp2[1], tmp2[0]}),.sel(shamt[0]),.out(out[0]),.sft(dir));
	 
endmodule
