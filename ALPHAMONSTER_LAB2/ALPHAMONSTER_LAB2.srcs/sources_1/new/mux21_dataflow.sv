`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Brandon Schnedar
// 
// Create Date: 10/05/2016 07:36:43 PM
// Design Name: 
// Module Name: mux21_dataflow
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


module mux21_dataflow(
    input logic a,
    input logic b,
    input logic sel,
    output logic out
    );
  /*  logic temp1,temp2, temp3; */
    
//    assign out = ((~sel) & a) | (sel & b); //dataflow
 
// structial 
/*
    not g0(temp1, sel);
    and g1(temp2, a, temp1);
    and g2(temp3 ,b, sel);
    or g3(out, temp2, temp3);
  */
//behaviorl below

always_comb
begin
    if (sel)
         out = b;
    else
         out = a;
end
    
endmodule
