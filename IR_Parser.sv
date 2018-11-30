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
//Stage 000 - no input OR first lower clock of input
//Stage 001 - on HIGH input
//Stage 010 - on second LOW
//Stage 011 - on Final HIGH of start bit

//Stage 100 - toggle bit
//Stage 101 - address
//Stage 110 - data

//local intermitent variables
logic[2:0] Stage = 3'b000;
logic[2:0] InputAddressCounter = 3'b000;
logic[3:0] InputValueCounter = 4'b0000;
logic BitState = 1'b0;

//read inputs
logic Toggle = 1'bx;
logic[4:0] InputAddress = 5'bxxxxx;
logic[5:0] InputValue = 6'bxxxxxx;

logic Initialized = 1'b0; //only used at beginning

logic[4:0] LocalAddress = 5'b01101; //constant which the local address needs to stay


always_ff @(posedge Clock) 
begin
    if(Stage == 3'b000) begin
        if(Initialized == 1'b0) begin
            Up = 0;
            Down = 0;
            Left = 0;
            Right = 0;
            Readable = 0;
            Initialized = 1;
        end
        if(Data==1'b1) begin //input is starting on first HIGH

            //SyncMode 0 - at beginning of each data bit, 
            Stage <= 3'b001;
        end
        if(!(Readable == 1'b0 || Readable == 1'b1)) begin
            Readable = 1'b0;
        end
    end
    // Data should be 0 when here
    else if(Stage == 3'b001) begin
        if(Data==1'b0) begin
            Stage <= 3'b010;
        end
        else begin
            //ERRORRRR!!!!, do something
        end
    end

    // Data shound be 1 when here
    else if(Stage == 3'b010) begin
        if(Data==1'b1) begin
            Stage <= 3'b100;
        end
        else begin
            //ERROR, do someting
        end
    end
        
        //every other data bit per clock cycle from now on represents each bit.

        //Toggle bit
    else if (Stage == 3'b100) begin
        if(BitState == 1'b0) begin
            if(Data == 1'b1) begin
                Toggle <= 1'b0;
            end
            else if(Data == 1'b0) begin
                Toggle <= 1'b1;
            end
            BitState <= 1'b1;
        end
        else if(BitState == 1'b1) begin
            BitState <= 1'b0;
            Stage <= 3'b101;
        end
    end

        //Address
    else if(Stage == 3'b101) begin
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
                Stage<=3'b110;
            end
            BitState <= 1'b0;
        end
    end
    else if(Stage == 3'b110) begin
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
                InputValueCounter <= InputValueCounter + 1;
            end
            else begin
                if(InputAddress == LocalAddress) begin
                    if(InputValue == 0) begin
                        Up = 1;
                        Down = 0;
                        Left = 0;
                        Right = 0;
                    end
                    else if(InputValue == 1) begin
                        Up = 0;
                        Down = 1;
                        Left = 0;
                        Right = 0;
                    end
                    else if(InputValue == 2) begin
                        Up = 0;
                        Down = 0;
                        Left = 1;
                        Right = 0;
                    end
                    else if(InputValue == 3) begin
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
                Stage<=3'b000;
                Readable<=1'b1;
                Toggle = 1'bx;
                InputAddress = 5'bxxxxx;
                InputValue = 6'bxxxxxx;
            end
            BitState <= 1'b0;
        end
    end
end

endmodule