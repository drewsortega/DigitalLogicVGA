//The NES/SNES also require a 5V and GND input, but I think those could be implemented elsewhere
module SNES_Input(
	input logic Data, //Data is the controller output
	input logic[1:0] Mode, //Mode determines if the controller is NES or SNES
	input logic Clock, //System clock
	output logic Strobe_Latch, //Sent to controller
	output logic Shift_Clock,  //Sent to controller
	output logic Up,
	output logic Down,
	output logic Left,
	output logic Right,
	output logic Readable //Signals if data should be read(i.e. all inputs are accounted for) 
	);
	
	logic[4:0] Increment = 0;
	logic Alternate = 0;
	
	always_ff @ (posedge Clock)
		begin
			if (Mode[1] == 0) //NES Mode
				begin
					if (Increment == 0 && Strobe_Latch == 0) 
						Strobe_Latch = 1;	//Strobe_Latch causes the controller to store the pressed buttons in a shift register
					else 
						begin 
							if(Alternate == 0)
								begin 
									Shift_Clock = 0;
									case(Increment) //Data is active low
										4'b0000 :
											begin
												Strobe_Latch = 0; 
												Right = ~Data;
											end
										4'b0001: Left = ~Data;
										4'b0010: Down = ~Data;
										4'b0011: Up = ~Data;
									endcase
									if(Increment >= 3)
										Readable = 1; //Readable signals that all (of interest) inputs have been read and the data is ready
									Increment = Increment + 1;
									if(Increment == 8) //The shift register for NES is 8 bits long, but starts already outputing the first data value, 
														//so we reset after 7 increments
										begin 
											Increment = 0;
											Readable = 0;
										end
									Alternate = 1;
								end
							else
								begin
									Alternate = 0; //Alternate determines whether inputs should be read, or a clock signal should be sent to the controller
									Shift_Clock = 1; //Shift_Clock moves the controller shift register along
								end
						end
				end
			else //SNES Mode
				begin
					if (Increment == 0 && Strobe_Latch == 0) 
						Strobe_Latch = 1;
					else 
						begin 
							if(Alternate == 0)
								begin
									Shift_Clock = 0;
									case(Increment)
										4'b0000: Strobe_Latch = 0;
										4'b0101: Up = ~Data;	//SNES has the outputs in a different order, for some reason
										4'b0110: Down = ~Data;
										4'b0111: Left = ~Data;
										4'b1000: Right = ~Data;
									endcase
									if(Increment >= 8)
										Readable = 1;
									Increment = Increment + 1;
									if(Increment == 16) //SNES shift register is 16 bits long, so we increment 15 times	
										begin
											Increment = 0; 
											Readable = 0;
										end
									Alternate = 1;
								end
							else	
								begin	
									Alternate = 0;
									Shift_Clock = 1;
								end
						end
				end
		end
endmodule		
					
						