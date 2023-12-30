module alu #(parameter data_width=32 )(
input [data_width-1:0] SrcA,SrcB,
input [2:0] alu_cltr,
output Zero,
output reg [data_width-1:0] alu_result
);
always @ (SrcA,SrcB,alu_cltr)begin 
case (alu_cltr)
3'b000: alu_result<=SrcA & SrcB ;
3'b001: alu_result<=SrcA | SrcB ;
3'b010: alu_result<=SrcA + SrcB ;
3'b110: alu_result<=SrcA + ~SrcB+1 ;
3'b111: if (SrcA[31] != SrcB[31] ) // check for sign bits
             alu_result<= SrcA[31] ? 0:1 ; // check whether MSB/sign bit is 1 ie -ve
				 else
				  alu_result<= (SrcA<SrcB) ? 1 : 0;

default:alu_result<= 0;
endcase

end

assign Zero = (alu_result == 0 )? 1 : 0 ;

endmodule 