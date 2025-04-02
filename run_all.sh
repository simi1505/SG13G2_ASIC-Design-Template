#!/bin/bash

# =====================================================
# Author: Simon Dorrer
# Last Modified: 02.04.2025
# Description: This .sh file runs all self-written shell scripts (vhdl2verilog, run_orfs, verilog2xspice) for the given folder structure.
# This is a convenient way to design analog-digital ASICs.
# =====================================================

set -e -x

cd $(dirname "$0")

# Initialize variables
VERILOG=${VERILOG:-verilog/rtl}
ORFS=${ORFS:-orfs}
XSPICE=${XSPICE:-xspice}
SCRIPT_DIR=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &> /dev/null && pwd)

sim_flag=false

# Parse arguments
while [[ $# -gt 0 ]]; do
  case "$1" in
    -s|--sim)
      sim_flag=true
      name=$2
      shift 2 # move to next argument
      ;;
    -l|--layout)
      sim_flag=false
      name=$2
      shift 2 # move to next argument
      ;;
    -h|--help)
      echo "Usage: $0 [-s|--sim]: If the sim flag is set, no layout is produced (e.g. ./run_all.sh -s counter_board)."
      echo "Usage: $0 [-l|--layout]: If the layout flag is set, the layout is produced (e.g. ./run_all.sh -l counter_board)."
      exit 0
      ;;
    *)
      echo "Unknown option: $1"
      echo "Use -h for help."
      exit 1
      ;;
  esac
done

# First, clean all
./clean_all.sh "$name" || true

# Run "vhdl2verilog.sh"
cd "$VERILOG"
./vhdl2verilog.sh
cd "$SCRIPT_DIR"

if [ "$sim_flag" = true ]; then
  # Run "run_orfs.sh" - Simulation Only
  cd "$ORFS"
  ./run_orfs.sh --sim "$name"
  cd "$SCRIPT_DIR"
  
  # Run "verilog2xspice.sh"
  cd "$XSPICE"
  ./verilog2xspice.sh "$name"
  cd "$SCRIPT_DIR"
else
  # Layout
  cd "$ORFS"
  ./run_orfs.sh --layout "$name"
  cd "$SCRIPT_DIR"
fi

# Finish
echo "------ The complete flow was successful! ------"