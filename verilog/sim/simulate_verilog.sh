#!/bin/bash

# =====================================================
# Master's Thesis: Threshold-Based Sampling ASIC with FOSS tools.
# Author: Simon Dorrer
# Last Modified: 24.11.2024
# Description: This .sh file verifies and simulates a verilog testbench with Verilator, IVerilog and GTKwave.
# =====================================================

GREEN='\033[1;32m'
NC='\033[0m'
testbench=$1
echo -e "${GREEN}Verilator:------------------------------------------ ${NC}"
echo -e "${GREEN}   verilator --lint-only "$testbench".v ${NC}"
verilator --lint-only "$testbench".v
echo -e "${GREEN}IVerilog:------------------------------------------- ${NC}"
echo -e "${GREEN}   iverilog -g2005 "$testbench"_tb.v ${NC}"
iverilog -g2005 "$testbench"_tb.v
echo -e "${GREEN}a:-------------------------------------------------- ${NC}"
./a.out
echo -e "${GREEN}gtkwave:-------------------------------------------- ${NC}"
echo -e "${GREEN}   gtkwave "$testbench".vcd ${NC}"
gtkwave "$testbench".vcd

rm a.out
rm "$testbench".vcd

echo -e "${GREEN}Generated files were removed------------------------ ${NC}"