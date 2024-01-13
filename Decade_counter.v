`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.12.2023 11:27:07
// Design Name: 
// Module Name: Decade_counter
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


module Decade_counter(
    input clk,
    input reset,
    output reg [3:0] q
    );
    always @ (posedge clk) begin
    if(reset)
    q<=0;
    else begin
    if(q<9)
    q<=q+1;
    else if(q==9)
    q<=0;
    end
    end
endmodule
