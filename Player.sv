module Player (
    //Clock from top level
    input logic Clock,

    //choice of controller
    input logic[1:0] Choice,

    //input data from all of the controllers
    input logic IRData,
    input logic NData,
    input logic PS2Data,

    // SNES/NES specific outputs to the controller
    output logic NStrobe_Latch,
    output logic NShift_Clock,

    //Outputs to renderer
    output logic X,
    output logic Y
);
    logic NReadable, IReadable, PReadable, NU, ND, NL, NR, IU, ID, IL, IR, PU, PD, PL, PR, UpDecoded, DownDecoded, LeftDecoded, RightDecoded;
    SNES_Input nController(
        //Required Values already defined
        .Data(NData),
        .Mode(Choice),
        .Clock(Clock),

        //SNES/NES Specific IO
        .Strobe_Latch(NStrobe_Latch),
        .Shift_Clock(NShift_Clock),

        //universal IO
        .Up(NU), 
        .Down(ND), 
        .Left(NL), 
        .Right(NR),
        .Readable(NReadable)
    );
    
    IR_Input irController(
        //required values already defined
        .Clock(Clock),
        .Data(IRData),

        //universal IO
        .Up(IU), 
        .Down(ID), 
        .Left(IL), 
        .Right(IR),
        .Readable(IReadable)
    );
    
    PS2_Input ps2Controller(
        //TODO: Get PS2 Stuff
        .Up(PU), 
        .Down(PD), 
        .Left(PL), 
        .Right(PR)
    );

    InputDecoder inputDecoder(
        .CLK(Clock),
        .Choice(Choice),

        .PU(PU),
        .PD(PD),
        .PR(PR),
        .PL(PL),
        .PReadable(PReadable),

        .IU(IU),
        .ID(ID),
        .IL(IL),
        .IR(IR),
        .IReadable(IReadable),

        .NU(NU),
        .ND(ND),
        .NL(NL),
        .NR(NR),
        .NReadable(NReadable),

        .Up(UpDecoded),
        .Down(DownDecoded),
        .Left(LeftDecoded),
        .Right(RightDecoded)
    );

    GameLogic gameLogic(
        .Up(UpDecoded),
        .Down(DownDecoded),
        .Left(LeftDecoded),
        .Right(RightDecoded)

        .X(X),
        .Y(Y)
    );

endmodule