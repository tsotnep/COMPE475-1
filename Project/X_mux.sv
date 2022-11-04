module X_mux(
	
	input input_1, 		//Rd_data or Mem_addr == ALU result
	input input_2,			//data from memory == DMEM
	input	select,
	
	output reg out       //Rd_data
);


assign out = select ? input_2 : input_1; // select input based on select value

endmodule