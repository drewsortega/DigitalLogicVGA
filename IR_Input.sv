module IR_Input (
    input logic Clock,
    input logic Data,

    output logic Up,
    output logic Down,
    output logic Left,
    output logic Right,
    output logic Readable
);
    logic Slowed_Clock = 1'b0;
    IR_Clock newClock(.In_Clock(Clock), .Out_Clock(Slowed_Clock));
    IR_Parser(.Clock(Slowed_Clock), .Data(Data), .Up(Up), .Down(Down), .Left(Left), .Right(Right));
endmodule