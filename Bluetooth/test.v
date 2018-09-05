`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:26:43 11/03/2017 
// Design Name: 
// Module Name:    test 
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
//////////////////////////////////////////////////////////////////////////////////
module test(input clk, output reg c);
reg [3:0]a=4'b0010;
reg [3:0]b=4'b0111;
reg [7:0]d=8'b11100011;

always@(posedge clk)
begin 
	c=d[0];
	d=d>>1;
end
endmodule
