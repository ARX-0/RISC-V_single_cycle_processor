module main_decoder(
input [5:0] Opcode,
output MemWrite,
output RegWrite,
output RegDst,
output ALUSrc,
output MemtoReg,
output Branch,
output Jump,
output [1:0] ALUOp);

reg [8:0] cltr;

always @ (*)begin

case(Opcode)
 6'b000000: cltr <= 9'b110000010; //R
 6'b100011: cltr <= 9'b101001000; //lw
 6'b101011: cltr <= 9'b0x101x000; //sw
 6'b000100: cltr <= 9'b0x010x001; //beq
 6'b001000: cltr <= 9'b101000000; //addi
 6'b000010: cltr <= 9'b0xxx0x1xx; //j
 

default: cltr <= 9'bxxxxxxxxx; //generic

endcase
end 

assign {RegWrite,RegDst,ALUSrc,Branch,MemWrite,MemtoReg,Jump,ALUOp} = cltr;

endmodule 