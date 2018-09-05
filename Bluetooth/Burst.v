`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:48:42 10/23/2017 
// Design Name: 
// Module Name:    Burst 
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
module Burst(input clk, output reg x
    );
reg i=0;
always@(posedge clk)
begin
	if (i<450000)
		begin x<=1;
		i<=i+1; end
	else if(450000<=i<675000)
		begin x<=0;
		i<=i+1; end
end

endmodule
