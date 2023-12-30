module sign_ext #(parameter IN_WIDTH = 16, OUT_WIDTH = 32) (
    input       [IN_WIDTH-1:0] a,
    output      [OUT_WIDTH-1:0] y
);

assign y = { {OUT_WIDTH-IN_WIDTH { a[IN_WIDTH-1] }}, a };

endmodule
