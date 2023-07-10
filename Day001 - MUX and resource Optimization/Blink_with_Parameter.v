module Blink (
  input clkin,        // Input clock signal
  output clkout      // Output clock signal
);

  parameter DEVISION_BIT = 23; // Number of bits for dividing the clock frequency

  reg [DEVISION_BIT-1:0] count = 0; // Register to count the number of clock cycles

  assign clkout = count[DEVISION_BIT-1]; // Assign the most significant bit (MSB) of the count register to the output clock

  always @(posedge clkin)
    count <= count + 1; // Increment the count on every positive edge of the input clock

endmodule
