`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:12:23 10/15/2017
// Design Name:   Bluetooth
// Module Name:   E:/XY/Bluetooth/Bluetooth_tb.v
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

module Bluetooth_tb;

	// Inputs
	reg clk;
	reg reset;
	reg rx;

	// Outputs
	wire [7:0] leds;

	// Instantiate the Unit Under Test (UUT)
	Bluetooth uut (
		.clk(clk), 
		.reset(reset), 
		.rx(rx), 
		.leds(leds)
	);

	initial 
	
		begin
		clk=0;
		// Initialize Inputs
		reset = 0;
		rx=1;
		// Wait 100 ns for global reset to finish
		forever
		begin
		#20 clk=~clk;
		end
		#104160
		rx=0;
		#104160
		rx=1;
		#104160
		rx=1;
		#104160
		rx=1;
		#104160
		rx=1;
		#104160
		rx=1;
		#104160
		rx=1;
		#104160
		rx=1;
		#104160
		rx=1;
		#104160
		rx=1;
		// Add stimulus here

	end
endmodule

