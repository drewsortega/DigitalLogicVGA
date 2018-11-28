module IR_Simplifier (
    input logic Clock,
    input logic In_Data,
    output logic Out_Data,
);
logic Count[7:0] 8'b00000000;

always_ff @(posedge Clock) begin
    if(Count == 0) begin
        if(In_Data == 1) begin
            Count <= Count + 1;
            Out_Data = 1;
        end
        else begin
            Out_Data = 0;
        end
    end
    else begin
        if(Count == 128) begin
            Count <= 0;
        end
        else begin
            Count <= Count + 1;
        end
        Out_Data = 1;
    end
end

endmodule