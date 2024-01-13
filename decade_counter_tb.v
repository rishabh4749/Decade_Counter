`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.12.2023 11:31:09
// Design Name: 
// Module Name: decade_counter_tb
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


module decade_counter_tb(

    );
    reg clk;
    reg reset;
    wire [3:0] q;
    always #5 clk=~clk;
    Decade_counter dut(.clk(clk),.reset(reset),.q(q));
    initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
    $monitor("time=%0t reset=%0b q=%b",$time,reset,q);
    clk<=0;
    reset<=0;
    #4; reset<=1;
    #5; reset<=0;
    #34; reset<=1;
    #9; reset<=0;
    #100 $finish;
    end
endmodule
