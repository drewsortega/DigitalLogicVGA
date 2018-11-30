module IR_Simplifier (
    input logic Clock,
    input logic In_Data,
    output logic Out_Data
);
logic[7:0] Count = 8'b00000000;

//looks for a single HIGH and holds it for 32 cycles at 36 kHz

always_ff @(posedge Clock) begin
    if(Count == 0) begin
        if(In_Data == 1) begin
            Count = Count + 1;
            Out_Data = 1;
        end
        else begin
            Out_Data = 0;
        end
    end
    else begin
        if(Count == 128) begin
            Count = 0;
        end
        else begin
            Count = Count + 1;
        end
        Out_Data = 1;
    end
end

endmodule