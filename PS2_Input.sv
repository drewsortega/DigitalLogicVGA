module PS2_Input(
    input logic Clock,
    input logic Data,

    output logic Up = 0,
    output logic Down = 0,
    output logic Left = 0,
    output logic Right = 0,
    output logic Readable = 1
);

    logic [3:0] count = 0;
    logic [7:0] workingdata = 0;
    logic parity = 1;

    always_ff @(negedge Clock) begin
        if (count == 10) begin
            count <= 0;
			parity <= 1;
            Up <= 0;
            Left <= 0;
            Down <= 0;
            Right <= 0;
        end else begin
            count <= count + 1;
        end

        if (count > 0 && count < 9) begin
            workingdata[count - 1] <= Data;
			parity <= parity ^ Data;
        end

        if (count == 9) begin
            if (parity == Data) begin
                case (workingdata)
                    'h11: Up <= 1;
                    'h1E: Left <= 1;
                    'h1F: Down <= 1;
                    'h20: Right <= 1;
                endcase
            end
        end
    end

endmodule