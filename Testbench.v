`timescale 1ns / 1ps

module Testbench_1;
reg a_tb,b_tb,c_tb,d_tb;
reg[1:0] sel_tb;
wire y_tb;

Design_2 uut(.y(y_tb), .a(a_tb), .b(b_tb), .c(c_tb), .d(d_tb), .sel(sel_tb));

initial
begin
$monitor("Time=%0t  a=%b  b=%b  c=%b  d=%b  sel=%b || y=%b",$time,a_tb,b_tb,c_tb,d_tb,sel_tb,y_tb);

a_tb=0; b_tb=1; c_tb=0; d_tb=1; 

  sel_tb=2'b00; #10;  
  sel_tb=2'b01; #10;  
  sel_tb=2'b10; #10;  
  sel_tb=2'b11; #10;  
$finish;
end
endmodule
