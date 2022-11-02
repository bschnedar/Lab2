`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/05/2016 08:34:05 PM
// Design Name: 
// Module Name: fourMUX
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


module fourMUX(
    input logic a,
    input logic b,
    input logic c,
    input logic d,
    input logic s0,
    input logic s1,
    output logic out
    );
    
   logic temp1, temp2;
   
   mux21_dataflow h0 (
        .a(a),
        .b(b),
        .sel(s0),
        .out(temp1)
   
   );
   
   mux21_dataflow h1 (
           .a(c),
           .b(d),
           .sel(s0),
           .out(temp2)
      
      );
      
   mux21_dataflow h2 (
                 .a(temp1),
                 .b(temp2),
                 .sel(s1),
                 .out(out)
            
            );
   
   
  
        
endmodule
