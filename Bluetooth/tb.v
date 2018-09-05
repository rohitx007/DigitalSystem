`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:00:42 10/22/2017
// Design Name:   Bluetooth
// Module Name:   E:/XY/Bluetooth/tb.v
// Project Name:  Bluetooth
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Bluetooth
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
	reg rx;

	// Outputs
	wire [7:0] leds;

	// Instantiate the Unit Under Test (UUT)
	Bluetooth uut (
		.clk(clk), 
		.rx(rx), 
		.leds(leds)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rx = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

