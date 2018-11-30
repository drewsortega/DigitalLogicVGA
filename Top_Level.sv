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
    output logic[3:0] Red,
    output logic[3:0] Green,
    output logic[3:0] Blue
);
logic X1, Y1, X2, Y2, No_Color;
logic[9:0] XDraw, YDraw;

Player player1(.Clock(Clock), 
    .Choice(Choice_Player1),
    .IRData(IRData1), 
    .PS2Data(PS2Data1), 
    .NData(SNESData1),
    .X(X1), 
    .Y(Y1),
    .NStrobe_Latch(NStrobe_Latch1),
    .NShift_Clock(NShift_Clock1)
);

Player player2(.Clock(Clock), 
    .Choice(Choice_Player2),
    .IRData(IRData2), 
    .PS2Data(PS2Data2), 
    .NData(SNESData2),
    .X(X2), 
    .Y(Y2),
    .NStrobe_Latch(NStrobe_Latch2),
    .NShift_Clock(NShift_Clock2)
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