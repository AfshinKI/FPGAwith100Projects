`timescale 1ns / 1ns

module Mux(
    input [DATA_WIDTH-1:0] a,      // Input a
    input [DATA_WIDTH-1:0] b,      // Input b
    input [DATA_WIDTH-1:0] c,      // Input c
    input [DATA_WIDTH-1:0] d,      // Input d
    input [1:0] select,            // Select signal
    output [DATA_WIDTH-1:0] Output // Output signal
    );
    parameter DATA_WIDTH = 1;      // Data width of inputs and output
    assign Output = (select==2'b00) ? a : (select==2'b01) ? b : (select==2'b10) ? c : d; // MUX logic

endmodule
