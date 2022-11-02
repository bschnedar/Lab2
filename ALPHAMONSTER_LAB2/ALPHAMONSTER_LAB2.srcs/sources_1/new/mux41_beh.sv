`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/05/2016 08:55:13 PM
// Design Name: 
// Module Name: mux41_beh
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


module mux41_beh(
    input logic a,
    input logic b,
    input logic c,
    input logic d,
    input logic [1:0] s,
    output logic out
    );
    
    always_comb
    begin
        case(s)
            2`b00 : out = a;
            2`b01 : out = b;
            2`b10 : out = c;
            2`b11 : out = d;
            default : out = 1`bz;
         endcase
    
     end
endmodule
