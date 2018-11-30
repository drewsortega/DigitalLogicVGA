module IR_Clock (
    input logic In_Clock,
    output logic Out_Clock_Pulse,
    output logic Out_Clock_Logic
);

logic[10:0] Count = 11'b00000000000;
logic[7:0] Count2 = 8'b00000000;
logic Initialized = 1'b0;

always_ff @(posedge In_Clock) begin
    // Base Clock - 50 MHz = 50000 KHz.
    // IR Clock - 36 KHz.

    // 50000/(36*8) = ~174.
    // Therefore 4 rising edges for every 36 kHz pulse. This guarentees that 
    // 0-173 = 174 states. f=~144 kHz

    // Wait for 64 ticks on the 144 kHz, should have rising edge for every rising and falling edge of data.
    if(Initialized == 1'b0) begin
        Out_Clock_Pulse <= 0;
        Out_Clock_Logic <= 0;
        Initialized <= 1;
    end
    else begin
        if(Count < 173) begin
            if(^Out_Clock_Pulse == 1'bx) begin
                Out_Clock_Pulse <= 1'b0;
            end
            if(^Out_Clock_Logic == 1'bx) begin
                Out_Clock_Logic <= 1'b0;
            end
            Count <= Count + 1;
        end
        else begin // accounts for 173
            if(Out_Clock_Pulse == 0) begin
                Out_Clock_Pulse <= 1;
                if(Count2 < 63) begin //acounts for 0-62
                    Count2 <= Count2 + 1;
                end 
                else begin //accounts for 63
                    if(Out_Clock_Logic == 0) begin
                        Out_Clock_Logic <= 1;
                    end
                    else if(Out_Clock_Logic == 1) begin
                        Out_Clock_Logic <= 0;
                    end
                    Count2 <= 0;
                end
            end
            else if(Out_Clock_Pulse == 1) begin
                Out_Clock_Pulse <= 0;
            end
            Count <= 0;
        end
    end
end

endmodule