`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:38:15 11/03/2017
// Design Name:   test
// Module Name:   E:/XY/Bluetooth/t.v
// Project Name:  Bluetooth
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: test
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module t;

	// Inputs
	reg clk;

	// Outputs
	wire c;
	wire [7:0] d;

	// Instantiate the Unit Under Test (UUT)
	test uut (
		.clk(clk), 
		.c(c), 
		.d(d)
	);

	initial begin
		// Initialize Inputs
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
forever
		begin
		# 10;
		clk=~clk;
		end

	end
      
endmodule

