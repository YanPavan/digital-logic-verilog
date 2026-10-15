module three_to_eight_decoder(data_in, data_out, enable);

  input[2:0] data_in;
  input enable;
  output [7:0] data_out;

  wire en_0, en_1;
  
  and(en_0, enable, ~data_in[2]);
  and(en_1, enable, data_in[2]);

  two_to_four_decoder U1 (data_in[1:0], data_out[3:0], en_0);
  two_to_four_decoder U2 (data_in[1:0], data_out[7:4], en_1);
  
endmodule
