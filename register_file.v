module register_file #(parameter data_width=32,adr_width=5)(
input [adr_width-1:0] A1, //5bit rs
input [adr_width-1:0] A2, //5 bit rd
input [adr_width-1:0] A3, //5 bit rt //for lw , sw , addi
input [data_width-1:0] WD3,
input clk,WE3,
output [data_width-1:0] RD1,
output [data_width-1:0] RD2 );
reg [data_width-1:0] reg_arr [0:data_width-1]; //it has dedicated 32 bit registers in this register file ; in other words[data_width-1:0] and [0:31]

//initializing reg_arr to 0 to avoid garbage values
integer i;
initial begin
for(i = 0; i< 32;i=i+1) reg_arr[i]=0; end

always @ (posedge clk)begin
if(WE3)begin reg_arr[A3]<=WD3; end //#write synch
end
 
assign RD1=(reg_arr[A1] != 0)? reg_arr[A1]:0;
                                             //#write asynch
assign RD2=(reg_arr[A2] != 0)? reg_arr[A2]:0;
 
endmodule 


