module up_counter_4bit (
    input  logic clk,
    input  logic reset,
    input  logic en,
    output logic [3:0] q
);

    always_ff @(posedge clk) begin
        if (reset)
            q <= 4'b0000;
        else if (en)
            q <= q + 1'b1;
    end

endmodule