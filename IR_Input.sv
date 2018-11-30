module IR_Input (
    input logic Clock,
    input logic Data,

    output logic Up,
    output logic Down,
    output logic Left,
    output logic Right,
    output logic Readable
);
    logic Clock_Pulse = 1'b0;
    logic Clock_Logic = 1'b0;
    logic Simplified_Data;

    IR_Clock newClock(.In_Clock(Clock), .Out_Clock_Pulse(Clock_Pulse), .Out_Clock_Logic(Clock_Logic));
    IR_Simplifier simplify(.Clock(Clock_Pulse), .In_Data(Data), .Out_Data(Simplified_Data));
    IR_Parser irparser(.Clock(Clock_Logic), .Data(Simplified_Data), .Up(Up), .Down(Down), .Left(Left), .Right(Right));
endmodule