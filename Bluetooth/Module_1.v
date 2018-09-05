`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:12:28 10/23/2017 
// Design Name: 
// Module Name:    Module_1 
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
module Module_1(input clk,output reg z
    );
reg j=1;
reg i=1;
reg nclk;
reg x;
always@(posedge clk)
	begin
		if(x<=329)
		begin
		nclk<=1;
		x<=x+1;
		end
		else if (329<x<1316)
		begin
		nclk <=0;
		x<=x+1;
		end
		else
		x<=0;
	end
always@(posedge nclk)
		if(i<=21)
			begin
			z<=nclk;
			i<=i+1;
			end
		else if (21<i<=84)
			begin
			i<=i+1;
			z<=0;
		end
		else
		i<=1;
endmodule


