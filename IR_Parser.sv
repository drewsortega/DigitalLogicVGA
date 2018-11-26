module IR_Parser(
    input logic Clock,
    input logic Data,

    output logic Up,
    output logic Down,
    output logic Left,
    output logic Right,
    output logic Readable
);


//Stage 0XX - Start Bit
//stage 000 - no input OR first lower clock of input
//stage 001 - on HIGH input
//stage 010 - on second LOW
//stage 011 - on Final HIGH of start bit

//stage 100 - toggle bit
//stage 101 - address
//stage 110 - data

logic Stage[2:0] = 3'b000;
logic Toggle = 1'b0;
logic InputAddress[4:0] = 5'b00000;
logic InputValue[5:0] = 6'b000000;
logic InputAddressCounter[2:0] = 3'b000;
logic InputValueCounter[3:0] = 4'b0000;
logic BitState = 1'b0;
logic LocalAddress[4:0] = 5'b01101;


always_ff @(posedge Clock) begin
    case(Stage)

        //listen for Data=1
        3'b000: begin
                    if(Data==1'b1) begin //input is starting on first HIGH

                        //SyncMode 0 - at beginning of each data bit, 
                        Stage <= 3'b001;
                    end
                    if(Readable != 1'b0) begin
                        Readable <= 1'b0;
                    end
                end

        // Data should be 0 when here
        3'b001: begin
                    if(Data==1'b0) begin
                        Stage <= 3'b010;
                    end
                    else begin
                        //ERRORRRR!!!!, do something
                    end
                end

        // Data shound be 1 when here
        3'b010: begin
                    if(Data==1'b1) begin
                        Stage <= 3'b100;
                    end
                    else begin
                        //ERROR, do someting
                    end
                end
        
        //every other data bit per clock cycle from now on represents each bit.

        //Toggle bit
        3'b100: begin
                    if(BitState == 1'b0) begin
                        if(Data == 1'b1) begin
                            Toggle <= 1'b0
                        end
                        else if(Data == 1'b0) begin
                            Toggle <= 1'b1;
                        end
                        BitState <= 1'b1;
                    end
                    else if(BitState == 1'b1) begin
                        BitState <= 1'b0;
                        State <= 3'b101;
                    end
                end

        //Address
        3'b101: begin
                    if(BitState == 1'b0) begin
                        if(Data == 1'b1) begin
                            InputAddress[4-InputAddressCounter] <= 1'b0;
                        end
                        else if(Data == 1'b0) begin
                            InputAddress[4-InputAddressCounter] <= 1'b1;
                        end
                        BitState <= 1'b1;
                    end
                    else if(BitState == 1'b1) begin
                        if(InputAddressCounter < 4) begin
                            InputAddressCounter <= InputAddressCounter + 1;
                        end
                        else begin
                            InputAddressCounter <= 0;
                            State<=3'b110;
                        end
                        BitState <= 1'b0;
                    end
                end
        3'b110: begin
                    if(BitState == 1'b0) begin
                        if(Data == 1'b1) begin
                            InputValue[5-InputValueCounter] <= 1'b0;
                        end
                        else if(Data == 1'b0) begin
                            InputValue[5-InputValueCounter] <= 1'b1;
                        end
                        BitState <= 1'b1;
                    end
                    else if(BitState == 1'b1) begin
                        if(InputValueCounter < 5) begin
                            InputValueCouter <= InputValueCounter + 1;
                        end
                        else begin
                            if(InputAddress == LocalAddress) begin
                                if(inputValue == 0) begin
                                    Up = 1;
                                    Down = 0;
                                    Left = 0;
                                    Right = 0;
                                end
                                else if(inputValue == 1) begin
                                    Up = 0;
                                    Down = 1;
                                    Left = 0;
                                    Right = 0;
                                end
                                else if(inputValue) begin
                                    Up = 0;
                                    Down = 0;
                                    Left = 1;
                                    Right = 0;
                                end
                                else if(inputValue) begin
                                    Up = 0;
                                    Down = 0;
                                    Left = 0;
                                    Right = 1;
                                end
                                else begin
                                    Up = 0;
                                    Down = 0;
                                    Left = 0;
                                    Right = 0;
                                end
                            end
                            InputValueCounter <= 0;
                            State<=3'b000;
                            Readable<=1'b1;
                        end
                        BitState <= 1'b0;
                    end
                end
    end
end

endmodule