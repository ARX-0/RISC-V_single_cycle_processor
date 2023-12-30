module shift_left_2#(parameter WIDTH =32)(
input [WIDTH-1:0] a,
output [WIDTH-1:0] y
);

assign y = {a[WIDTH-3:0],2'b00};

endmodule 