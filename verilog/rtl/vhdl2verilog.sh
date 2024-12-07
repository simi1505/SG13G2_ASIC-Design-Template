#!/usr/bin/env bash

# =====================================================
# Author: Simon Dorrer
# Last Modified: 07.12.2024
# Description: This .sh file converts the VHDL files into one Verilog file.
# =====================================================

set -e -x

cd $(dirname "$0")

RTL=${RTL:-../../vhdl/rtl}
SRC_FOLDER=${SRC_FOLDER:-.}

mkdir -p build

# Analyze sources
ghdl -a --std=93c --work=counter --workdir=build -Pbuild \
  "$RTL"/constants_p.vhd \
  "$RTL"/counter_ea.vhd \
  "$RTL"/counter_board.vhd

# Top entity
ghdl -m --std=93c --work=counter --workdir=build -Pbuild counter_board

# Synthesize: generate Verilog output
ghdl synth --std=93c --no-formal --work=counter --workdir=build -Pbuild --out=verilog counter_board > "$SRC_FOLDER"/counter_board.v

# Show interface of generated Verilog module
echo ""
echo "------ counter_board interface ------"
sed -n "/module counter_board/,/);/p" "$SRC_FOLDER"/counter_board.v
echo ""
