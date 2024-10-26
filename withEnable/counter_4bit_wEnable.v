module counter_4bit (
    input wire clk,
    input wire reset,
    input wire enable,
    output reg [3:0] count
);

always @(posedge clk or posedge reset) begin
    if (reset) begin
        count <=4'b0000;             // Reset counter to 0
    end
    else if (enable) begin
        count <= count + 1;         // Increment the counter
    end
end

endmodule
