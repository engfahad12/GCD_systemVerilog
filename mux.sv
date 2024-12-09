`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Fahad Hussain
// 
// Create Date: 11/30/2024 09:46:00 PM
// Design Name: 
// Module Name: mux
// Project Name: GCD_SystemVerilog
// Target Devices: GCD_SystemVerilog
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


module mux(
    input logic sel,
    input logic [31:0] s0,
    input logic [31:0] s1,
    output logic [31:0] y
    );
    assign y=sel?s1:s0;
endmodule
