`timescale 1ns/1ps

module spi_tb;

reg clk;
reg rst;
reg start;

reg [7:0] tx;

wire [7:0] rx;

spi_top DUT(

.clk(clk),
.rst(rst),
.start(start),
.tx(tx),
.rx(rx)

);

always #5 clk = ~clk;

initial
begin

clk=0;
rst=1;
start=0;
tx=8'h3C;

#20;

rst=0;

#20;

start=1;

#10;

start=0;

#300;

$finish;

end

initial
begin

$dumpfile("spi.vcd");
$dumpvars;

end

endmodule