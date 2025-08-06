`timescale 1ns / 1ps
module tb_mux4_1;
    reg [1:0] sel;
    reg [3:0] in;
    wire out;

    mux4_1 uut (
        .sel(sel),
        .in(in),
        .out(out)
    );

    initial begin
        $dumpfile("mux4_1.vcd");
        $dumpvars(0, tb_mux4_1);

        in = 4'b1010;

        sel = 2'b00; #10;
        sel = 2'b01; #10;
        sel = 2'b10; #10;
        sel = 2'b11; #10;

        $finish;
    end
endmodule
