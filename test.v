`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   01:14:32 11/18/2017
// Design Name:   vga_syncIndex
// Module Name:   G:/DIGITAL/FINAL/test.v
// Project Name:  FINAL
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: vga_syncIndex
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test;

	// Inputs
	reg clk;
	reg [2:0] choice;
	reg [1:0] b;

	// Outputs
	wire hsync;
	wire vsync;
	wire [2:0] red;
	wire [2:0] green;
	wire [1:0] blue;
	wire [9:0] hc;
	wire [9:0] vc;
	wire blank;

	// Instantiate the Unit Under Test (UUT)
	vga_syncIndex uut (
		.clk(clk), 
		.hsync(hsync), 
		.vsync(vsync), 
		.red(red), 
		.green(green), 
		.blue(blue), 
		.hc(hc), 
		.vc(vc), 
		.blank(blank), 
		.choice(choice), 
		.b(b)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		choice = 0; // Change choice value from 0-7 for different effects.
		b = 0; // Level of brightness

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
	
	always #0.01 clk = ~clk;
      
endmodule

