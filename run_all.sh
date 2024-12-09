#!/bin/bash

# =====================================================
# Master's Thesis: Threshold-Based Sampling ASIC with FOSS tools.
# Author: Simon Dorrer
# Last Modified: 05.12.2024
# Description: This .sh file runs all self-written shell scripts (vhdl2verilog, run_orfs, verilog2xspice) for the given folder structure.
# This is a convenient way to design analog-digital ASICs.
# =====================================================

set -e -x

cd $(dirname "$0")

name=${name:-counter_board}

VERILOG=${VERILOG:-verilog/rtl}
ORFS=${ORFS:-orfs}
XSPICE=${XSPICE:-xspice}
SCRIPT_DIR=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &> /dev/null && pwd)

# Run "vhdl2verilog.sh"
cd "$VERILOG"
./vhdl2verilog.sh
cd "$SCRIPT_DIR"

# Run "run_orfs.sh"
cd "$ORFS"
export GDS_ALLOW_EMPTY="$name"_DEF_FILL # Suppress errors due to empty cells
./run_orfs.sh
cd "$SCRIPT_DIR"

# Run "verilog2xspice.sh"
cd "$XSPICE"
./verilog2xspice.sh "$name"
cd "$SCRIPT_DIR"

# Finish
echo "------ The complete flow was successful! ------"