`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Fahad Hussain
// 
// Create Date: 11/30/2024 09:46:00 PM
// Design Name: 
// Module Name: sub
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


module sub(
    input logic [31:0] A,
    input logic [31:0] B,
    output logic [31:0] Res
    );
    assign Res= A - B;
endmodule
