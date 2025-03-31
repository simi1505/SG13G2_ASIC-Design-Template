# =====================================================
# Master's Thesis: Threshold-Based Sampling ASIC with FOSS tools.
# Author: Moritz Tockner, Simon Dorrer
# Last Modified: 30.03.2025
# Description: This .tcl file reports the power per entities.
# =====================================================

# Probably nets that are optimized away cannot be found 
# suppress_message STA 1648
# suppress_message STA 1650

# Some cells have no liberty cell. Github copilot says they are probably not important for the design. Only for manufacturing
# suppress_message ORD 2011


set final_path $::env(FINAL_PATH)
set sg13g2_path $::env(PDKPATH)

#read_lef ${sg13g2_path}/libs.ref/sky130_fd_sc_hd/techlef/sky130_fd_sc_hd__nom.tlef 
#read_lef ${sg13g2_path}/libs.ref/sky130_fd_sc_hd/lef/sky130_ef_sc_hd.lef
#read_lef ${sg13g2_path}/libs.ref/sky130_fd_sc_hd/lef/sky130_fd_sc_hd.lef
read_lef ${sg13g2_path}/libs.ref/sg13g2_stdcell/lef/sg13g2_stdcell.lef

set lef_files [glob -nocomplain ${final_path}/lef/*.lef]
if {[llength $lef_files] == 0} {
    puts "Error: No LEF files found in ${final_path}/lef"
    exit 1
}
if {[llength $lef_files] > 1} {
    puts "Error: More than one LEF file found in ${final_path}/lef"
    exit 1
}

set lef_file [lindex $lef_files 0]
read_lef $lef_file

set top_entity_name [file rootname [file tail $lef_file]]

set lib_path "${final_path}/lib/"

# Check if directory exists
if {![file exists $lib_path]} {
    puts "Error: Liberty file directory not found at $lib_path"
    exit 1
}

# Define liberty file paths
set lib_paths [list \
    "${lib_path}" \
    "${sg13g2_path}/libs.ref/sg13g2_stdcell/lib/" \
]

# Get all .lib files from all paths, excluding ccsnoise files
set lib_files {}
foreach path $lib_paths {
    if {[file exists $path]} {
        set files [glob -nocomplain ${path}/*.lib]
        foreach file $files {
            if {![string match "*ccsnoise*" $file]} {
                lappend lib_files $file
            }
        }
    } else {
        puts "Warning: Path not found: $path"
    }
}

if {[llength $lib_files] == 0} {
    puts "Error: No .lib files found in any of the specified paths"
    exit 1
}

# Read each liberty file
foreach lib_file $lib_files {
    if {[catch {read_liberty $lib_file} err]} {
        puts "Error reading $lib_file: $err"
        exit 1
    }
}

read_verilog ${final_path}/nl/${top_entity_name}.nl.v

link_design ${top_entity_name}

read_spef ${final_path}/spef/nom/${top_entity_name}.nom.spef

read_sdc ${final_path}/sdc/${top_entity_name}.sdc
# read_vcd ${final_path}/${top_entity_name}.vcd 

set_power_activity -input_port rst_i -activity 0 -duty 0
set_power_activity -input_port valid_i -activity 0 -duty 1

set inputs [all_inputs]
foreach input $inputs {
    set full_name [get_full_name $input]
    if {[string match "lambda_i*" $full_name]} {
        set_power_activity -input_port $input -activity 0.0001 
    }
}

set report_port_activity 0
if {$report_port_activity} {
    set inputs [all_inputs]
    foreach input $inputs {
        set full_name [get_full_name $input]
        append full_name " " [get_property $input activity]
        puts $full_name
    }

    set outputs [all_outputs]
    foreach output $outputs {
        set full_name [get_full_name $output]
        append full_name " " [get_property $output activity]
        puts $full_name
    }
}

puts "Power report:"

report_parasitic_annotation
report_power

puts "Hierarchical power report:"

proc report_power_per_module {odb_path} {

    # Init db to find module names and hierarchy
    set db [odb::dbDatabase_create] 
    odb::read_db $db $odb_path 

    set chip [odb::dbDatabase_getChip $db] 
    set block [odb::dbChip_getBlock $chip] 
    set top [odb::dbBlock_getTopModule $block] 

    set top_entity [odb::dbModule_getChildren $top]
    foreach child $top_entity {
        process_children [odb::dbModInst_getMaster $child]
    }

    set total_power [report_power_for_module ""]
    set top_entity_name [odb::dbModule_getHierarchicalName $top]
    puts "$top_entity_name:\t[format "%.2e" $total_power] mW"
}

proc process_children {mod} {
    set name [odb::dbModule_getHierarchicalName $mod] 

    set total_power 0
    set total_power [expr $total_power + [report_power_for_module $name]]

    set children [odb::dbModule_getChildren $mod]
    foreach c $children {
        process_children [odb::dbModInst_getMaster $c]
    }
    puts "$name:\t[format "%.2e" $total_power] mW"
}

proc report_power_for_module {module_name} {
    report_power -instances [get_cells -hierarchical *$module_name*] > tmp.rpt

    set total_power 0
    set fp [open tmp.rpt r]
    while {[gets $fp line] >= 0} {
        if {[regexp {^\s+\S+\s+\S+\s+\S+\s+(\S+)\s} $line -> current_power]} {
            if {[string is double -strict $current_power]} {
                set total_power [expr {$total_power + $current_power}]
            }
        }
    }
    close $fp
    file delete tmp.rpt

    return $total_power
}

set odb_files [glob -nocomplain ${final_path}/odb/*.odb]
set odb_path [lindex $odb_files 0]
report_power_per_module $odb_path