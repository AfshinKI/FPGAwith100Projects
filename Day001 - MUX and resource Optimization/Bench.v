`timescale 1ns / 1ps

module Bench;

    // Inputs
    reg sysclk;
    reg [1:0] sw;

    // Outputs
    wire led;

    // Instantiate the module under test  CHANGE THIS BASED ON YOUR DB FILE
    design_1_wrapper uut (
        .sysclk(sysclk),
        .led(led)
    );

    // Clock generation
    always begin
        sysclk = 1'b0;
        #5;
        sysclk = 1'b1;
        #5;
    end

    // Stimulus
    initial begin
        sw = 2'b00; // Initialize switch to 00

        #100; // Wait for some time

        // Test case 1: Switch 00 (fastest blink)
        sw = 2'b00;
        #1_000_000; // 1 second delay

        // Test case 2: Switch 01 (slower blink)
        sw = 2'b01;
        #1_000_000; // 1 second delay

        // Test case 3: Switch 10 (even slower blink)
        sw = 2'b10;
        #1_000_000; // 1 second delay

        // Test case 4: Switch 11 (slowest blink)
        sw = 2'b11;
        #1_000_000; // 1 second delay

        $finish;
    end

endmodule
