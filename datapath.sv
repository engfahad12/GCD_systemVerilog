`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Fahad Hussain
// 
// Create Date: 11/30/2024 09:46:00 PM
// Design Name: 
// Module Name: datapath
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


module datapath(
input reg clk,
input reg rst,
input reg [31:0] X,
input reg [31:0] Y,
output  done,
output logic [31:0] Result 
    );
    
    assign #10 clk=~clk;
     
    wire x_sel, y_sel, x_en, y_en, out_en;
    wire [31:0] sub_mux_1, sub_mux_2, mux_reg_1, mux_reg_2, reg_1_out, reg_2_out; 
    
    mux m0(x_sel, X, sub_mux_1, mux_reg_1);
    mux m1(y_sel, Y, sub_mux_2, mux_reg_2);
    
    Register r0(clk, rst, mux_reg_1, x_en, reg_1_out);
    Register r1(clk, rst, mux_reg_2, y_en, reg_2_out);
    
    sub s0(reg_1_out, reg_2_out, sub_mux_1);
    sub s1(reg_2_out, reg_1_out, sub_mux_2);
    
    comp c1(reg_1_out, reg_2_out, x_lt_y, x_gt_y, x_eq_y);
    FSM fsm(clk, rst, x_lt_y, x_gt_y, x_eq_y, x_sel, y_sel, x_en, y_en, out_en, done);
    
    assign Result = out_en? reg_2_out : 32'hzzzz;
    
    initial begin
        rst=1;
        clk=0;
        X=48;
        Y=18;
        #20;
        rst=0;
        #120;
        $stop;
    end
endmodule
