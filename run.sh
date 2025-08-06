#!/bin/bash

iverilog -o mux_sim mux4_1.v tb_mux4_1.v
./mux_sim
gtkwave mux4_1.vcd
