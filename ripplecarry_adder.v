`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.06.2023 22:09:00
// Design Name: 
// Module Name: ripplecarry_adder
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
module full_adder(a,b,cin,s,c);
input a,b,cin;
output s,c;
assign s=a^b^cin;
assign c=a&b|b&cin|cin&a;
endmodule

module ripplecarry_adder(
    input [3:0] a,
    input [3:0] b,
    output [3:0]s,
    output c0
    );
    wire c1,c2,c3;
    full_adder FA0(a[0],b[0],1'b0,s[0],c1);
    full_adder FA1(a[1],b[1],c1,s[1],c2);
    full_adder FA2(a[2],b[2],c2,s[2],c3);
    full_adder FA3(a[3],b[3],c3,s[3],c0);
endmodule
