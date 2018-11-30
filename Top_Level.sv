module Top_Level (
    input logic Clock,

    //player 1 inputs
    input logic[1:0] Choice_Player1,
    input logic IRData1,
    input logic PS2Data1,
    input logic SNESData1,

    //player 2 inputs
    input logic[1:0] Choice_Player2,
    input logic IRData2,
    input logic PS2Data2,
    input logic SNESData2,

    //player 1 outputs to SNES/NES controller
    output logic NStrobe_Latch1,
    output logic NShift_Clock1,

    //player 2 outputs to SNES/NES controller
    output logic NStrobe_Latch2,
    output logic NShift_Clock2,

    //video output
    output logic H_Sync,
    output logic V_Sync,
    output logic Red,
    output logic Green,
    output logic Blue
);
logic X1, Y1, X2, Y2, XDraw, YDraw, No_Color;

Player player1(.Clock(Clock), 
    .IRData(IRData1), 
    .PS2Data(PS2Data1), 
    .SNESData(SNESData1),
    .X(X1), 
    .Y(Y1)
);

Player player2(.Clock(Clock), 
    .IRData(IRData2), 
    .PS2Data(PS2Data2), 
    .SNESData(SNESData2),
    .X(X1), 
    .Y(Y1)
);

XYCounter counter(
    .clock(Clock),
    .xcoord(XDraw),
    .ycoord(YDraw),
    .hsync(H_Sync),
    .vsync(V_Sync),
    .nocolor(No_Color)
);

Renderer renderer(
    .xcoord(XDraw),
    .ycoord(YDraw),
    .nocolor(No_Color),
    .p1x(X1),
    .p1y(Y1),
    .p2x(X2),
    .p2y(Y2),
    .red(Red),
    .blue(Blue),
    .green(Green)
);

endmodule