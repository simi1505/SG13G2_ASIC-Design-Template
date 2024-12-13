v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 1580 -980 2380 -580 {flags=graph
y1=0.00011
y2=1.5
ypos1=0.00011
ypos2=1.5
divy=5
subdivy=1
unity=1
x1=0
x2=4e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="clock
reset_n
enable
b3
b2
b1
b0"
color="4 5 12 10 10 10 10"
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=-1
linewidth_mult=4
digital=1}
T {Testbench for transient analysis - 4-Bit Counter} 550 -1690 0 0 1 1 {}
N 740 -840 740 -800 {
lab=GND}
N 740 -1140 740 -1100 {
lab=VDD}
N 740 -1040 740 -1000 {
lab=GND}
N 740 -940 740 -900 {lab=clock}
N 740 -720 740 -680 {lab=reset_n}
N 740 -620 740 -580 {lab=GND}
N 1200 -860 1240 -860 {lab=clock}
N 1200 -740 1240 -740 {lab=reset_n}
N 1200 -800 1240 -800 {lab=enable}
N 740 -500 740 -460 {lab=enable}
N 740 -400 740 -360 {lab=GND}
N 1400 -860 1440 -860 {lab=b3}
N 1400 -820 1440 -820 {lab=b2}
N 1400 -780 1440 -780 {lab=b1}
N 1400 -740 1440 -740 {lab=b0}
N 1320 -920 1320 -900 {lab=VDD}
N 1320 -700 1320 -680 {lab=GND}
C {devices/vsource.sym} 740 -1070 0 0 {name=VDD value="1.5"}
C {devices/gnd.sym} 740 -1000 0 0 {name=l6 lab=GND}
C {devices/vdd.sym} 740 -1140 0 0 {name=l8 lab=VDD}
C {devices/vsource.sym} 740 -870 0 0 {name=vclk value="pulse(0 1.5 0 10p 10p \{0.5/fclk\} \{1/fclk\})"
}
C {devices/lab_wire.sym} 740 -940 0 0 {name=p2 sig_type=std_logic lab=clock}
C {devices/gnd.sym} 740 -800 0 0 {name=l1 lab=GND}
C {devices/title-3.sym} 0 0 0 0 {name=l3 author="Simon Dorrer" rev=1.0 lock=true}
C {devices/launcher.sym} 1640 -1130 0 0 {name=h2
descr="Simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {devices/launcher.sym} 1640 -1030 0 0 {name=h1
descr="Load waves" 
tclcommand="xschem raw_read $netlist_dir/counter_board_tb_tran.raw tran"
}
C {code_shown.sym} 80 -1510 0 0 {name=NGSPICE
only_toplevel=false
value="
*True Mixed Signal Simulation (.xspice)
.include /foss/designs/SG13G2_ASIC-Design-Template/xspice/counter_board/counter_board.xspice

.param temp=27
.param fclk=8000000
.options savecurrents
.control
save all

* Transient Analysis
tran 1n 4u
write counter_board_tb_tran.raw

plot v(clock) v(enable) v(reset_n)
plot v(b3) v(b2) v(b1) v(b0)

* Writing Data
set wr_singlescale
set wr_vecnames

let clock = clock
let enable = enable
let reset_n = reset_n
let b0 = b0
let b1 = b1
let b2 = b2
let b3 = b3

wrdata /foss/designs/SG13G2_ASIC-Design-Template/python/plot_simulations/data/counter_board_tb_tran.txt clock enable reset_n b0 b1 b2 b3

set appendwrite

* Operating Point Analysis
op
remzerovec
write counter_board_tb_tran.raw

quit
.endc"}
C {devices/lab_wire.sym} 740 -720 0 0 {name=p1 sig_type=std_logic lab=reset_n}
C {devices/gnd.sym} 740 -580 0 0 {name=l2 lab=GND}
C {devices/lab_wire.sym} 1200 -860 0 0 {name=p3 sig_type=std_logic lab=clock}
C {devices/lab_wire.sym} 1200 -740 0 0 {name=p4 sig_type=std_logic lab=reset_n}
C {devices/vsource.sym} 740 -650 0 0 {name=vrst value="pulse(0 1.5 \{1/fclk\} 10p 10p \{0.5/fclk*100\} \{1/fclk*100\})"
}
C {devices/code_shown.sym} 80 -390 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerRES.lib res_typ
"}
C {devices/gnd.sym} 1320 -680 0 0 {name=l4 lab=GND}
C {devices/vdd.sym} 1320 -920 0 0 {name=l5 lab=VDD}
C {devices/lab_wire.sym} 1200 -800 0 0 {name=p5 sig_type=std_logic lab=enable}
C {devices/gnd.sym} 740 -360 0 0 {name=l9 lab=GND}
C {devices/vsource.sym} 740 -430 0 0 {name=ven value="pulse(0 1.5 \{4/fclk\} 10p 10p \{0.5/fclk*100\} \{1/fclk*100\})"
}
C {devices/lab_wire.sym} 740 -500 0 0 {name=p11 sig_type=std_logic lab=enable}
C {devices/launcher.sym} 1640 -1080 0 0 {name=h3
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {devices/lab_wire.sym} 1440 -860 0 1 {name=p6 sig_type=std_logic lab=b3}
C {devices/lab_wire.sym} 1440 -820 0 1 {name=p7 sig_type=std_logic lab=b2}
C {devices/lab_wire.sym} 1440 -780 0 1 {name=p8 sig_type=std_logic lab=b1}
C {devices/lab_wire.sym} 1440 -740 0 1 {name=p9 sig_type=std_logic lab=b0}
C {counter_board.sym} 1320 -800 0 0 {name=x1}
