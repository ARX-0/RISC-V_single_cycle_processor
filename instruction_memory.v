module instruction_memory # (parameter data_width = 32 , memory_size = 64 , adr_width=6)(
input [adr_width-1:0] A,
output [data_width-1:0] RD
);
reg [data_width-1:0] inst_ram [0:memory_size-1];//# array of 64 32 bit words 

initial begin
//#read the hex file values into the array of 64 32 bit words
$readmemh("programme_dump.hex",inst_ram);
end 

assign RD = inst_ram[A];

endmodule 