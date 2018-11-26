module Input_Decoder (
    input logic CLK;

    input logic[1:0] Choice,

    input logic PU,
    input logic PD,
    input logic PL,
    input logic PR,
    input logic PReadable,

    input logic IU,
    input logic ID,
    input logic IL,
    input logic IR,
    input logic IReadable,

    input logic NU,
    input logic ND,
    input logic NL,
    input logic NR,
    input logic NReadable

    output logic Up,
    output logic Down,
    output logic Left,
    output logic Right
);
always_ff @(posedge CLK) 
begin
    case(choice)
        
        // PS/2
        0: begin 
            if(PReadable==1) begin
                Up=PU;
                Down=PD;
                Left=PL,
                Right=PR;
            end
            else begin
                Up=0;
                Down=0;
                Left=0;
                Right=0;
            end
        end 
        
        // IR
        1: begin
            if(IReadable==1) begin
                Up=IU;
                Down=ID;
                Left=IL,
                Right=IR;
            end
            else begin
                Up=0;
                Down=0;
                Left=0;
                Right=0;
            end
        end
        
        // SNES and NES
        default: begin 
            if(NReadable==1) begin
                Up=NU;
                Down=ND;
                Left=NL,
                Right=NR;
            end
            else begin
                Up=0;
                Down=0;
                Left=0;
                Right=0;
            end
        end
end
endmodule