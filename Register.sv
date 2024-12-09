`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Fahad Hussain
// 
// Create Date: 12/01/2024 08:57:58 AM
// Design Name: 
// Module Name: Register
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


module Register(
input logic clk,
input logic rst,
input logic[31:0] d_in,
input logic en,
output logic [31:0] d_out
    );
    reg [31:0] x0;
    
    
    initial begin
    x0 =32'dz;
    end
    
    always @(posedge clk) begin
        if(!rst && en) begin
            x0 <= d_in;
        end
    end
    
    assign d_out=x0;
    
endmodule
