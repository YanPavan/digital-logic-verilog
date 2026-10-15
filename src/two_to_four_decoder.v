module two_to_four_decoder(data_in, data_out, enable);

  input [1:0] data_in;
  input enable;
  output [3:0] data_out;

  and(data_out[0], ~data_in[0], ~data_in[1], enable);
  and(data_out[1], data_in[0], ~data_in[1], enable);
  and(data_out[2], ~data_in[0], data_in[1], enable);
  and(data_out[3], data_in[0], data_in[1], enable);

endmodule
