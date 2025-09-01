`timescale 1ns / 1ps

module Design_2(y,a,b,c,d,sel);
input a,b,c,d;
input[1:0] sel;
output y;
wire y1,y2;

Design_1 m1(y1,a,b,sel[0]);
Design_1 m2(y2,c,d,sel[0]);
Design_1 m3(y,y1,y2,sel[1]);
endmodule
