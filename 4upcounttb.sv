module tb_up_counter_4bit;

    logic clk;
    logic reset;
    logic en;
    logic [3:0] q;

    
    up_counter_4bit dut (
        .clk(clk),
        .reset(reset),
        .en(en),
        .q(q)
    );

   
    always #5 clk = ~clk;

    initial begin

    
        clk = 0;
        reset = 0;
        en = 0;

        
        #10;
        reset = 1;

        #10;
        reset = 0;

        en = 0;

        #20;

        
        en = 1;

        #100;

        
        en = 0;

        #30;

        
        en = 1;

        #30;
        reset = 1;
        #10;
        reset = 0;

        #20;

        $finish;

    end

endmodule