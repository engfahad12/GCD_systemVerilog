`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Fahad Hussain
// 
// Create Date: 11/30/2024 09:46:00 PM
// Design Name: 
// Module Name: comp
// Project Name: GCD_SystemVerilog
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


module comp(
input logic [31:0] A,
input logic [31:0] B,
output x_lt_y,
output x_gt_y,
output x_eq_y
    );
    
    assign x_lt_y = (A < B);
    assign x_gt_y = (A > B);
    assign x_eq_y = (A == B);
endmodule
