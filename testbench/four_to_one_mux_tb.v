`timescale 1ns/1ps

module four_to_one_mux_tb;

    reg [3:0] data_in;
    reg [1:0] select;
    reg enable;
    wire data_out;

    four_to_one_mux UUT(
        data_in,
        data_out,
        select,
        enable
    );

    initial begin
        $dumpfile("four_to_one_mux.vcd");
        $dumpvars(0, four_to_one_mux_tb);

        $monitor(
            "Time=%0t | data_in=%b | select=%b | enable=%b | output=%b",
            $time, data_in, select, enable, data_out
        );

        enable = 1;

        // Test case 1
        data_in = 4'b0010;
        select = 2'b01;
        #10;

        // Test case 2
        data_in = 4'b1011;
        select = 2'b10;
        #10;

        enable = 0;
        #5;

        $finish;
    end

endmodule
