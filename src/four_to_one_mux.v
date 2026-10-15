module four_to_one_mux(data_in,data_out,select,enable);
  
  input [3:0] data_in;
  input [1:0] select;
  input enable;
  output data_out;
  
  wire w0,w1;
  
  two_to_one_mux M0(data_in[1:0],w0,select[0],enable);
  two_to_one_mux M1(data_in[3:2],w1,select[0],enable);
  two_to_one_mux M2({w1,w0},data_out,select[1],enable);

endmodule
 
