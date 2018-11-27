module XYCounter(
	input logic clock,
	output logic hsync,
	output logic vsync,
	output logic[18:0] pixel,
	output logic display
	);
	
	logic[9:0] hcounter = 0;
	logic[9:0] vcounter = 0;
	logic draw = 0;
	logic halfclk= 0;
	logic[18:0] p = 0;
	
	always_ff @(posedge clock)
		begin
			halfclk <= ~halfclk;
			if(halfclk)
				begin
					if(hcounter >= 0 && hcounter <= 95) //0 to 95 is the sync signal
						hsync = 0;
					else
						hsync = 1;
					if(hcounter >= 144 && hcounter <= 784 && vcounter >= 35 && vcounter <= 515) //144 to 784 is the display interval for horizontal, and lines 35 to 515 is the display interval vertically
						begin
							draw = 1;
							p = p + 1; //only increment pixel when things are dispalyed
						end
					else
						draw = 0;
					if(hcounter == 799) //one less than 800 b/c we start at 0
						begin
							hcounter = 0;
							vcounter = vcounter + 1; //Increment vcounter once a full line has been output
						end
				
					if(vcounter >= 0 && vcounter <= 1)
						vsync = 0;
					else
						vsync = 1;
					if(vcounter == 524) //one less than 525 b/c we start at 0
						begin
							vcounter = 0;
							p = 0;	//reset pixel count and vcounter once a full screen has been drawn
						end
					display = draw;
					hcounter = hcounter + 1; //Increment hcounter
					pixel = p;
				end
			end
endmodule
		
	
	
	
	