module ALU_decoder(
input [5:0] Funct,
input [1:0] ALUop,
output reg [2:0] ALUControl
  );
  
  always @(*)begin 
  case (ALUop)
  2'b00: ALUControl <= 3'b010;//add
  2'b01: ALUControl <= 3'b110;//sub (as table 7.1)
  default:
  
  case(Funct)
    6'b100000:ALUControl <= 3'b010;//add
	 6'b100010:ALUControl <= 3'b110;//sub
	 6'b100100:ALUControl <= 3'b000;//and
	 6'b100101:ALUControl <= 3'b001;//or
	 6'b101010:ALUControl <= 3'b111;//slt
  default:ALUControl <= 3'bxxx;//generic
  endcase
  
  
  endcase
  end
  
  endmodule 