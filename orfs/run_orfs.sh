#!/bin/bash

# =====================================================
# Master's Thesis: Threshold-Based Sampling ASIC with FOSS tools.
# Author: Simon Dorrer
# Last Modified: 05.12.2024
# Description: This .sh file takes a Verilog file and runs the OpenROAD flow-scripts (ORFS) for the IHP SG13G2 PDK with it.
# In the end, the digital layout is displayed with OpenROAD.
# =====================================================

set -e -x

cd $(dirname "$0")

# Initialize variables
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
      echo "Usage: $0 [-sim]: If the sim flag is set, no layout is produced."
      exit 0
      ;;
    *)
      echo "Unknown option: $1"
      echo "Use -h for help."
      exit 1
      ;;
  esac
done

# Run "env.sh" to initialize the paths to OpenROAD, OpenSTA, Yosys and kLayout
source env.sh

# Go into the "flow" folder
cd flow

# Export path to config.mk
export DESIGN_CONFIG=./designs/ihp-sg13g2/"$name"/config.mk

# Now handle what happens if -sim was passed
if [ "$sim_flag" = true ]; then
  # Run synthesis with Yosys
  make synth
else
  # Run ORFS
  make
  
  # Display layout
  make gui_final
fi

# Finish
echo "------ ORFS was run successfully! ------"