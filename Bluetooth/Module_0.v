`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:46:47 10/21/2017 
// Design Name: 
// Module Name:    Module_0 
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
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:26:57 10/21/2017 
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
module Module_0(input clk ,output reg z
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
		if(j<=21)
			begin
			z<=nclk;
			j<=j+1;
			end
		else if (21<j<=42)
			begin
			j<=j+1;
			z<=0;
			end
		else
			j<=1;
			
endmodule

