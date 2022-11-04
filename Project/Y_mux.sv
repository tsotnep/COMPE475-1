module Y_mux(
	
	input input_1, 		//ARd
	input input_2,			//15, for jump
	input	select,        //select
	
	output reg out
);


assign out = select ? input_2 : input_1; // select input based on select value

endmodule