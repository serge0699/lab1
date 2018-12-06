`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.11.2018 22:48:36
// Design Name: 
// Module Name: sim1
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


module tb_lab1;

parameter num_samples = 16;

integer i;

reg [3:0] sw_i; 
reg [3:0] btn_i;
wire [3:0] led_o;
    
lab1 uut (
  .sw_i(sw_i),
  .btn_i(btn_i),
  .led_o(led_o)
);

initial 
  begin
    for( i = 0; i < num_samples; i = i + 1 )
      begin
        sw_i = $random;
        btn_i = $random;
        #10
        if ( led_o != ( ~sw_i & btn_i ))
          $display ( " Error, time: %d ", $time );
      end
  end
  
endmodule
