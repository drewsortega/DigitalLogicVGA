module IR_Clock (
    input logic In_Clock,
    output logic Out_Clock
);

logic Count[10:0] = 11'b00000000000;

always_ff @(posedge In_Clock) begin

    // Base Clock - 50 MHz = 50000 KHz.
    // IR Clock - 36 KHz.

    // 50000/36 = ~1389.
    // Therefore Every 1389 clock cycles for base clock, 1 IR Clock Cycle

    // 50000/(36*2) = ~694.
    // Thefore a Clock with every 654th cycle has a rising edge for every rising and falling edge of IR Clock.

    // 50000/(36*4) = ~347.
    // Thefore Switching a Clock's state 0/1 to 1/0 every 347 base clock cycles gives a clock that rises every 694 clock cycles.
    // Which is useful for reasons stated on line 17.

    // 0-346 = 347 states
    if(Count < 346) begin // accounts for 0-345
        if(Out_Clock == 1'bx) begin
            Out_Clock <= 1'b0;
        end
        Count <= Count + 1;
    end
    else begin // accounts for 346
        if(Out_Clock == 0) begin
            Out_Clock <= 1;
        end
        else if(Out__Logic_Clock == 1) begin
            Out_Clock <= 0;
        end
        Count <= 0;
    end
end

endmodule