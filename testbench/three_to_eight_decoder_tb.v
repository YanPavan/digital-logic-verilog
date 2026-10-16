`timescale 1ns/1ps

module three_to_eight_decoder_tb;

    reg [2:0] data_in;
    reg enable;
    wire [7:0] data_out;

    three_to_eight_decoder UUT(
        data_in,
        data_out,
        enable
    );

    initial begin

        $dumpfile("three_to_eight_decoder.vcd");
        $dumpvars(0, three_to_eight_decoder_tb);

        $monitor(
            "Time=%0t | enable=%b | data_in=%b | data_out=%b",
            $time, enable, data_in, data_out
        );

        enable = 1;

        data_in = 3'b000; #10;
        data_in = 3'b001; #10;
        data_in = 3'b010; #10;
        data_in = 3'b011; #10;
        data_in = 3'b100; #10;
        data_in = 3'b101; #10;
        data_in = 3'b110; #10;
        data_in = 3'b111; #10;

        enable = 0;
        data_in = 3'b000;
        #10;

        $finish;

    end

endmodule
