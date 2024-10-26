`timescale 1ns / 1ps

module counter_4bit_tb;

reg clk;
reg reset;
reg enable;
wire [3:0] count;

// Instantiate the counter
counter_4bit uut (
    .clk(clk),
    .reset(reset),
    .enable(enable),
    .count(count)
);

// Clock generation
always begin
    clk = 0;
    #5;                 // Half period
    clk = 1;
    #5;                 // Half period
end

// Test Sequence
initial begin
    // Initialize signals
    reset = 1;
    enable = 0;
    #10;                // Wait for clock cycles
    reset = 0;          // Release reset

    // Test counting with enable high
    enable = 1;         // Start counting
    #100 enable = 0;    // Stop counting after some time
    #20  reset = 1;     // Apply reset again
    #10  reset = 0;     // Release reset
    enable = 1;         // Start counting again to ensure the maximum value of the counter is 15

    #200 $stop;          // Stop simulation
end

initial begin
    // Monitor the count output
    $monitor("clk : %b, count: %b, reset: %b, enable = %b",clk, count, reset, enable);
    $dumpfile("counter_4bit_tb.vcd");
    $dumpvars(0, counter_4bit_tb);
end


endmodule
