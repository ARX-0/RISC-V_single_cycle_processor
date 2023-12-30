module data_memory #(parameter data_width=32,adr_width=32,memory_size=64)(
input [adr_width-1:0] A,
input [data_width-1:0] WD,
input clk,
input WE,
output [data_width-1:0] RD);
reg [data_width-1:0] inst_data_ram [0:memory_size-1];
   assign RD=inst_data_ram[A[data_width-1:2]];
	
	always @ (posedge clk)begin 
	if(WE)begin inst_data_ram[A[data_width-1:2]] <= WD ;end
	end
	
	
endmodule 

//@ line 11 and 8 [31:2] is used for indexing into the memory array 
//the least significant bits [1:0] are not used / set to zero to ensure word alignment0