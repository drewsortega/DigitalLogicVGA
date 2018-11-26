module XYCounter(
	input logic [0:0] clock,
	output logic [9:0] ycoord = 0,
	output logic [9:0] xcoord = 0,
	output logic [0:0] hsync = 1,
	output logic [0:0] vsync = 1,
	output logic [0:0] nocolor = 0
	);
	
	logic [0:0] clock_enable = 1;
	logic [9:0] xstate = 0;
	logic [9:0] ystate = 0;

	always_ff @(posedge clock)
	begin
		clock_enable <= !clock_enable;
		if (clock_enable) begin
		
			if (xstate < 800) begin
				xstate <= xstate + 1;
			end else begin
				xstate <= 0;
			end

			if (xstate < 640) begin
				xcoord <= xstate;
			end else if (xstate == 640) begin
				xcoord <= 0;
			end else if (xstate == 656) begin
				hsync <= 0;
			end else if (xstate == 752) begin
				hsync <= 1;
			end else if (xstate == 800) begin
				if (ystate < 525) begin
					ystate <= ystate + 1;
				end else begin
					ystate <= 0;
				end
				
				if (ystate < 480) begin
					ycoord <= ystate;
				end else if (ystate == 480) begin
					ycoord <= 0;
				end else if (ystate == 490) begin
					vsync <= 0;
				end else if (ystate == 492) begin
					vsync <= 1;
				end
			end
			
			if (xstate >= 640 || ystate >= 480) begin
				nocolor <= 1;
			end else begin
				nocolor <= 0;
			end
		end
	end
		

endmodule