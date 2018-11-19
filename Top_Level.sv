module Top_Level {
    input logic CLK,
    input logic[1:0] Choice_Player1,
    input logic[1:0] Choice_Player2,
};
logic X1, Y1, X2, Y2;

Player player1(.CLK(CLK), .X(X1), .Y(Y1));
Player player2(.CLK(CLK), .X(X2), .Y(Y2));

Renderer renderer(
    .X1(X1),
    .Y1(Y1),
    .X2(X2),
    .Y2(Y2)
);
endmodule