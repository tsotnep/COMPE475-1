module src1mux(
	
	input Rn, 				//for data and mem access
	input Rs, 				//for mult
	input PC_out,			//for jump
	input	[1:0]		select,
	
	output reg src1
);


always @(Rn || Rs || PC_out || select)
begin
//rewrite things below as a case statement
	if(select == 2'b00) begin
		src1 <= Rn;
	end
	if(select == 2'b01) begin
		src1 <= Rs;
	end
	if(select == 2'b10) begin
		src1 <= PC_out;
	end
	
end
endmodule
