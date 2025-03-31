#!/bin/bash

# =====================================================
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

# First, clean all
./clean_all.sh "$name" || true

# Run "vhdl2verilog.sh"
cd "$VERILOG"
./vhdl2verilog.sh
cd "$SCRIPT_DIR"

# Run "run_orfs.sh"
cd "$ORFS"
# Simulation Only
./run_orfs.sh --sim "$name"

# Layout
# ./run_orfs.sh --layout "$name"
cd "$SCRIPT_DIR"

# Run "verilog2xspice.sh"
cd "$XSPICE"
./verilog2xspice.sh "$name"
cd "$SCRIPT_DIR"

# Finish
echo "------ The complete flow was successful! ------"