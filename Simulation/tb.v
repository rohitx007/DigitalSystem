`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   03:17:33 11/18/2017
// Design Name:   Simulation
// Module Name:   E:/XY/Simulation/tb.v
// Project Name:  Simulation
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Simulation
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb;

	// Inputs
	reg clk;

	// Outputs
	wire r;

	// Instantiate the Unit Under Test (UUT)
	Simulation uut (
		.clk(clk), 
		.r(r)
	);

	initial begin
		// Initialize Inputs
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
     forever begin
		#10
		clk=~clk;
		end
		// Add stimulus here

	end
      
endmodule

