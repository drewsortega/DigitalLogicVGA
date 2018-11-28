module IR_Clock (
    input logic In_Clock,
    output logic Out_Clock_Pulse,
    output logic Out_Clock_Logic
);

logic Count[10:0] = 11'b00000000000;
logic Count2[5:0] = 6'b000000;

always_ff @(posedge In_Clock) begin

    // Base Clock - 50 MHz = 50000 KHz.
    // IR Clock - 36 KHz.

    // 50000/(36*8) = ~174.
    // Therefore 4 rising edges for every 36 kHz pulse. This guarentees that 
    // 0-173 = 174 states. f=~46kHz
    // accounts for 0-692
    if(Count < 174) begin // accounts for 0-345
        if(Out_Clock_Pulse == 1'bx) begin
            Out_Clock_Pulse <= 1'b0;
        end
        if(Out_Clock_Logic == 1'bx) begin
            Out_Clock_Logic <= 1'b0;
        end
        if(Count2 < 127) begin
            Count2 <= Count2 + 1;
        end 
        else begin
            if(Out_Clock_Logic == 0) begin
                Out_Clock_Logic <= 1;
            end
            else if(Out_Clock_Logic == 1) begin
                Out_Clock_Logic <= 0;
            end
            Count2 <= 0;
        end
        Count <= Count + 1;
    end
    else begin // accounts for 693
        if(Out_Clock_Pulse == 0) begin
            Out_Clock_Pulse <= 1;
        end
        else if(Out_Clock_Pulse == 1) begin
            Out_Clock_Pulse <= 0;
        end
        Count <= 0;
    end
end

endmodule