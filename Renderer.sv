module Renderer(
	input logic [9:0] ycoord,
	input logic [9:0] xcoord,
	input logic [0:0] nocolor,
	input logic [0:0] p1x,
	input logic [0:0] p1y,
	input logic [0:0] p2x,
	input logic [0:0] p2y,
	output logic [3:0] red,
	output logic [3:0] blue,
	output logic [3:0] green
	);
	
	always_comb
	begin
		if (nocolor == 0) begin
			green = 0;
			if (xcoord <= 320 && ycoord <= 240) begin
				if (p1x == 0 && p1y == 0) begin
					red = 15;
				end else begin
					red = 0;
				end
				if (p2x == 0 && p2y == 0) begin
					blue = 15;
				end else begin
					blue = 0;
				end
			end else if (xcoord > 320 && ycoord <= 240) begin
				if (p1x == 1 && p1y == 0) begin
					red = 15;
				end else begin
					red = 0;
				end
				if (p2x == 1 && p2y == 0) begin
					blue = 15;
				end else begin
					blue = 0;
				end
			end else if (xcoord <= 320 && ycoord > 240) begin
				if (p1x == 0 && p1y == 1) begin
					red = 15;
				end else begin
					red = 0;
				end
				if (p2x == 0 && p2y == 1) begin
					blue = 15;
				end else begin
					blue = 0;
				end
			end else if (xcoord > 320 && ycoord > 240) begin
				if (p1x == 1 && p1y == 1) begin
					red = 15;
				end else begin
					red = 0;
				end
				if (p2x == 1 && p2y == 1) begin
					blue = 15;
				end else begin
					blue = 0;
				end
			end
		end else begin
			red = 0;
			blue = 0;
			green = 0;
		end
	end
		

endmodule