`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.11.2018 21:53:39
// Design Name: 
// Module Name: lab1using-for
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


module lab1 (
  input  [3:0] sw_i, 
  input  [3:0] btn_i, 
  output [3:0] led_o
);

  assign led_o = ( ~sw_i & btn_i );
  
endmodule