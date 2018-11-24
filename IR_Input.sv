module IR_Input(
    input logic Clock,
    input logic Data,

    output logic Up,
    output logic Down,
    output logic Up,
    output logic Right
);

logic stage[2:0] = 2'b0;
//stage 000 - no input OR first lower clock of input
//stage 001 - on HIGH input, count data bits
//stage 010 - on second LOW input, count again
//stage 011 - verify counts to ensure our clocks are what we think they are

//stage 100 - toggle bit
//stage 101 - address
//stage 110 - data

logic dataClockLength1[11:0] = 12'b000000000000; //counts for each stage for verification
logic dataClockLength2[11:0] = 12'b000000000000; //..

logic dataClockCounter[11:0] = 12'b000000000000;

logic toggle = 1'b0;
logic inputAddress[4:0] = 5'b00000;
logic inputValue[5:0] = 6'b000000;

logic dataClock = 1'b0;
logic inputAddressCounter[2:0] = 3'b000;
logic inputValueCounter[3:0] = 4'b0000;


always_ff (@posedge Clock) begin
    if(stage==3'b000) begin
        if(Data==1'b1) begin//input is starting on first HIGH
            stage = 3'b001;
        end
    end
    else if(stage==3'b001) begin
        if(Data==1'b1) begin
            dataClockLength1 = dataClockLength1+1;
        end
        else begin
            stage = 3'b010;
        end
    end
    else if(stage==3'b010) begin
        if(Data==1'b0) begin
            dataClockLength2 = dataClockLength2+1;
        end
        else begin
            if(dataClockLength2 == dataClockLength1) begin
                stage = 3'b011;
            end
            else begin
                //ERROR, TODO
            end
        end
    end

    else if(stage==3'b011) begin //need to start counting
        dataClockCounter = dataClockCounter+1;
        if(dataClockCounter == dataClockLength1) begin
            dataClockCounter = 0;
            stage = 3'b100;
        end
    end

    else if(stage==3'b100) begin //start toggle bit

        //set data
        if(dataClockCounter==12'b0) begin
            toggle = Data;
        end

        //increase counter
        dataClockCounter = dataClockCounter+1;

        //do one full clock cycle
        if(dataClockCounter == dataClockLength1) begin
            if(dataClock == 1'b0) begin
                dataClock = 1'b1
            end
            else begin
                dataClockCounter = 0;
                dataClock = 1'b0;
                stage = 3'b101;
            end
        end
    end

    else if(stage==3'b101) begin //handle address input

        //set data
        if(dataClockCounter==12'b0) begin
            inputAddress[inputAdressCounter] = Data;
            inputAddressCounter = inputAddressCounter+1;
        end

        //increase counter
        dataClockCounter = dataClockCounter+1;

        //do 7 full clock cycles
        if(dataClockCounter == dataClockLength1) begin
            if(dataClock == 1'b0) begin
                dataClock = 1'b1
            end
            else begin
                dataClock = 1'b0;
                dataClockCounter = 0;
                if(inputAddressCounter >= 5) begin
                    inputAddressCounter = 0;
                    stage = 3'b110;
                end
            end
        end
    end

    //finally, handle value input
    else if(stage==3'b110) begin

        //set data
        if(dataClockCounter==12'b0) begin
            inputValue[inputValueCounter] = Data;
            inputValueCounter = inputValueCounter+1;
        end

        //increase counter
        dataClockCounter = dataClockCounter+1;

        //do 7 full clock cycles
        if(dataClockCounter == dataClockLength1) begin
            if(dataClock == 1'b0) begin
                dataClock = 1'b1
            end
            else begin
                dataClock = 1'b0;
                dataClockCounter = 0;

                if(inputValueCounter >= 6) begin
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
                    inputValueCounter = 0;
                    stage = 3'b000;
                end
            end
        end
    end
end

endmodule