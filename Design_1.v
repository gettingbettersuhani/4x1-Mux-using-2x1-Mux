`timescale 1ns / 1ps

module Design_1(y,a,b,sel);
input a,b,sel;
output y;
assign y = sel ? b:a;
endmodule
