module XYCounter(
	input logic [0:0] clock,
	output logic [9:0] ycoord = 0,
	output logic [9:0] xcoord = 0,
	output logic [0:0] hsync = 1,
	output logic [0:0] vsync = 1,
	output logic [0:0] nocolor = 0
	);
	
	logic [0:0] clock_enable = 1;
	logic [2:0] state = 0;
	logic [14:0] delay = 0;

	always_ff @(posedge clock)
	begin
		clock_enable <= !clock_enable;
		if (clock_enable) begin
			case (state)
				0: begin
						if (xcoord < 640)
							xcoord <= xcoord + 1;
						else begin
							xcoord <= 0;
							state <= 1;
							nocolor <= 1;
						end
					end
				1: begin
						if (delay < 16)
							delay <= delay + 1;
						else begin
							hsync <= 0;
							delay <= 0;
							state <= 2;
						end
					end
				2: begin
						if (delay < 96)
							delay <= delay + 1;
						else begin
							hsync <= 1;
							delay <= 0;
							state <= 3;
						end
					end
				3: begin
						if (delay < 48)
							delay <= delay + 1;
						else begin
							delay <= 0;
							if (ycoord < 480) begin
								state <= 0;
								ycoord <= ycoord + 1;
								nocolor <= 0;
							end else begin
								state <= 4;
								ycoord <= 0;
							end
						end
					end
				4: begin
						if (delay < 8000)
							delay <= delay + 1;
						else begin
							vsync <= 0;
							delay <= 0;
							state <= 5;
						end
					end
				5: begin
						if (delay < 1600)
							delay <= delay + 1;
						else begin
							vsync <= 1;
							delay <= 0;
							state <= 6;
						end
					end
				6: begin
						if (delay < 26400)
							delay <= delay + 1;
						else begin
							delay <= 0;
							state <= 0;
						end
					end
			endcase
		end
	end
		

endmodule