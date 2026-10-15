module two_to_one_mux(data_in,data_out,select,enable);
  input [1:0]data_in;
  input enable,select;
  output data_out;
  wire not_select,w0,w1;
  not(not_select,select);
  and(w0,data_in[0], not_select, enable);
  and(w1,data_in[1], select, enable);
  or(data_out,w0,w1);
endmodule
