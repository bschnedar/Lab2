`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/05/2016 09:07:44 PM
// Design Name: 
// Module Name: MUX8_1
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


module MUX8_1(
    input logic a,
    input logic b,
    input logic c,
    input logic d,
    input logic e,
    input logic f,
    input logic g,
    input logic h,
    output logic out,
    input logic s0,
    input logic s1,
    input logic s2
    );
    
    logic te1, te2;
    
     mux21_dataflow h2 (
           .a(te1),
           .b(te2),
           .sel(s2),
           .out(out)
      
      );
      
      fourMUX h0 (
                 .a(a),
                 .b(b),
                 .c(c),
                 .d(d),
                 .s0(s0),
                 .s1(s1),
                 .out(te1)
            
            );
     fourMUX h1(
                            .a(e),
                            .b(f),
                            .c(g),
                            .d(h),
                            .s0(s0),
                            .s1(s1),
                            .out(te2)
                       
                       );
    
endmodule
