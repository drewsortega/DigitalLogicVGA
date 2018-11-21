module Game_Logic(
	input logic Up,
	input logic Down,
	input logic Right,
	input logic Left,
	output logic X,
	output logic Y
	);
	
	logic[1:0] Current = 2'b00;

always_comb 
	begin
		if(Down == 1)
			begin
				if(Current[0] == 1) //Move the player down if they are in an upper square
					Current[0] = 0;
			end
		if(Up == 1)
			begin 
				if(Current[0] == 0) //Move the player up if they are in a lower square
					Current[0] = 1;
			end
		if(Right == 1)
			begin
				if(Current[1] == 0) //Move the player right if they are in a leftmost square
					Current[1] = 1;
			end
		if(Left == 1)
			begin
				if(Current[1] == 1) //Move the player left in they arre in a rightmost square
					Current[1] = 0;
			end
		Y = Current[0]; //Set output
		X = Current[1];
	end
endmodule
