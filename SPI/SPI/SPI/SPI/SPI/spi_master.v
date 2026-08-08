module spi_master(

input clk,
input rst,
input start,
input [7:0] data_in,

output reg sclk,
output reg mosi,
output reg ss,

input miso,
output reg [7:0] data_out,
output reg done

);

reg [2:0] bit_cnt;
reg [7:0] shift_reg;

always @(posedge clk or posedge rst)
begin

if(rst)
begin
sclk<=0;
ss<=1;
done<=0;
bit_cnt<=0;
end

else if(start)
begin

ss<=0;
shift_reg<=data_in;

repeat(8)
begin
mosi<=shift_reg[7];
shift_reg<=shift_reg<<1;

sclk<=1;
shift_reg[0]<=miso;
sclk<=0;

bit_cnt<=bit_cnt+1;
end

data_out<=shift_reg;
done<=1;
ss<=1;

end

end

endmodule