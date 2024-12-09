`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Fahad Hussain
// 
// Create Date: 11/30/2024 09:46:00 PM
// Design Name: 
// Module Name: FSM
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


module FSM(
input clk,
input rst,
input logic   x_lt_y, x_gt_y, x_eq_y,
output logic  x_sel, y_sel, x_en, y_en, out_en, done
    );
    always@(*)
    if (rst) begin
        x_sel<=0;
        y_sel<=0;
        x_en<=1;
        y_en<=1;
        out_en=0;
        done<=0;
    end else begin 
        if (x_gt_y) begin
            x_sel<=1;
            y_sel<=1'b0;
            x_en<=1;
            y_en<=0;
            done<=0;
            
        end else if(x_lt_y) begin
            x_sel<=1'b0;
            y_sel<=1;
            y_en<=1;
            x_en<=0;
            done<=0;
        end else if(x_eq_y) begin
            out_en<=1;
            done<=1;
            x_sel<=1'b1;
            y_sel<=1'b1;
            y_en<=0;
            x_en<=0;
        end
    end
endmodule
