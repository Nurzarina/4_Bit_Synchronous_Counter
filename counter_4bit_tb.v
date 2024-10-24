module counter_4bit_tb;

reg clk;
reg reset;
wire [3:0] count;

// Instantiate the counter
counter_4bit uut (
    .clk(clk),
    .reset(reset),
    .count(count)
);

// Clock generation
always begin
    clk = 0;
    #5;        // Half period
    clk = 1;
    #5;        // Half period
end

initial begin
    // Initialize signals
    reset = 1;
    #10;       // Wait for clock cycles
    reset = 0; // Release reset

    // Run for a specific number of clock cycles
    repeat (20) @(posedge clk);

    // Finish simulation
    $finish;
end

initial begin
    // Monitor the count output
    // $timeformat(-9, 1, " ns", 8);
    $monitor("Time: %0d, count: %b", $time, count);
    $dumpfile("counter_4bit_tb.vcd");
    $dumpvars(0, counter_4bit_tb);
end


endmodule
