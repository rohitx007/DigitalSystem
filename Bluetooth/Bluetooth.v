`timescale 1ns / 1ps
 ////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:24:15 10/13/2017 
// Design Name: 
// Module Name:    Bluetooth 
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
module Bluetooth(input clk, input rx, output reg r, output [7:0]leds1
    );
reg z;
reg [7:0]leds=7'b0000000;
reg [1:0]state,nextstate;
parameter start1=3'b00;
parameter start0=3'b01;

reg control=0;
reg done=0;
reg[8:0]tmp=9'b000000000;

reg [19:0]i=20'b00000000000000000000;
reg [3:0]j=4'b0000;
reg [9:0]c=10'b1111111111;
reg [10:0]x=11'b11111111111;
reg delay = 0;
reg nclk = 0;
reg [1:0]c2=2'b11;
reg capture=0;
reg [31:0]p;
integer q=0;
	

always@(posedge clk)
begin
	if(c<868)
		c=c+1;
	else
	begin
	c=0;
	delay=~delay;
	end
end

always@(posedge delay)
begin
	if (c2>1)
	c2=0;
	else
	c2=c2+1;
end

always@(c2)
	begin
	if(c2==1)
	capture=1;
	else
	capture=0;
	end
	
always@(posedge capture)
state<=nextstate;

always@(*)
begin
case(state)
	start1:
		if(rx==1&&done==0)
		begin
		control=0;
		nextstate=start1;
		end
		else if(rx==0&&done==0)
		begin
		control=1;
		nextstate=start0;
		end
		else
		begin
		control=0;
		nextstate=start1;
		end
	start0:
		begin
			if(done==0)
			begin
			control=1;
			nextstate=start0;
			end
			else
			begin
			control=0;
			nextstate=start1;
			end
		end
	default:	nextstate=start1;
	endcase
end

always@(posedge capture)
begin
	if(control==1 && done==0)
	begin
		tmp<={rx , tmp[8:1]};
	end
end

always@(posedge capture)
begin
	if(control)
		if(j>=9)
		begin
		j=0;
		done=1;
		leds<=tmp[8:1];
		end
		else
		begin
		j=j+1;
		done=0;
		end
	else
		done=0;
end

assign leds1[7:0]=leds[7:0];

	
/*always@(leds)
case(leds)
48: p=32'b0000_0100_1111_1011_0001_0000_1110_1111;
49: p=32'b0000_0100_1111_1011_0001_0001_1110_1110;
endcase
always@(posedge clk)
begin
	if(i<450000)
		begin
		r=1;
		i=i+1;
		end
	else if(450000<i<675000)
		begin
		r=0;
		i=i+1;
		end
	else if(675000<i<703000)
		begin
		r=nclk;
		i=i+1;
		y=10;
		end
	else if(703000<i<703000+y && p[31]==0)
		begin
		r=0;
		y=28000;
		i=i+1;
		end
	else if(703000<i<703000+y && p[31]==1)
		begin
		r=0;
		y=84000;
		i=i+1;
		end
	else
	r=0;
	
end*/
reg[5131:0]E;
reg [683:0]A;
reg [341:0]B;
reg [41:0]T;
reg [41:0]D;
reg [5131:0]H;
integer w =5131;
integer cn=0;
always@(posedge clk)
begin
if(q==654)
begin
	A=684'b1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000;
	B=342'b0000000000_0000000000_0000000000_0000000000_0000000000_0000000000_0000000000_0000000000_0000000000_0000000000_0000000000_0000000000_0000000000_0000000000_0000000000_0000000000_0000000000_0_0000000000_0000000000_0000000000_0000000000_0000000000_0000000000_0000000000_0000000000_0000000000_0000000000_0000000000_0000000000_0000000000_0000000000_0000000000_0000000000_0000000000_0;
	T=42'b1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_10;
	D=42'b00000_00000_00000_00000_00000_00000_00000_00000_00000_00000_00;
	H=E;
	case(leds)
	112:E={A,B,T,D,T,D,T,D,D,D,T,D, T,D,T,D,T,D,T,D ,T,D,D,D, T,D,D,D, T,D,T,D,D,D ,T,D,D,D, T,D,D,D,T,D,D,D,T,D,D,D ,T,D,T,D,T,D,T,D,D,D ,T,D,T,D,T,D,T,D , T,D,D,D,T,D,D,D, T,D,D,D, T,D , T,D,D,D, T,D,D,D, T,D,D,D, T,D,D,D ,A[42:0]};

49:E={A,B,T,D,T,D,T,D,D,D,T,D, T,D,T,D,T,D,T,D ,T,D,D,D, T,D,D,D, T,D,T,D,D,D ,T,D,D,D, T,D,D,D,T,D,D,D,T,D,D,D ,T,D,D,D,T,D,T,D,T,D ,T,D,D,D,T,D,T,D,T,D , T,D,T,D,D,D, T,D,D,D, T,D,D,D , T,D,T,D,D,D, T,D,D,D, T,D,D,D ,A[42:0]};

50:E={A,B,T,D,T,D,T,D,D,D,T,D, T,D,T,D,T,D,T,D ,T,D,D,D, T,D,D,D, T,D,T,D,D,D ,T,D,D,D, T,D,D,D,T,D,D,D,T,D,D,D ,T,D,T,D,D,D,T,D,T,D ,T,D,D,D,T,D,T,D,T,D , T,D,D,D,T,D, T,D,D,D, T,D,D,D , T,D,T,D,D,D, T,D,D,D, T,D,D,D ,A[42:0]};

51:E={A,B,T,D,T,D,T,D,D,D,T,D, T,D,T,D,T,D,T,D ,T,D,D,D, T,D,D,D, T,D,T,D,D,D ,T,D,D,D, T,D,D,D,T,D,D,D,T,D,D,D ,T,D,D,D,T,D,D,D,T,D,T,D ,T,D,D,D,T,D,T,D,T,D , T,D,T,D, T,D,D,D, T,D,D,D , T,D,T,D,D,D, T,D,D,D, T,D,D,D ,A[42:0]};
endcase
	if(H!=E)
		cn=0;
	if(w>-1&&cn==0)
		begin
		r=E[w];
		w=w-1;
		end
	else
		begin
		r=0;
		w=5131;
		cn=1;
		end
q=0;
end
else q=q+1;
end
endmodule
