v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 1580 -920 2380 -520 {flags=graph
y1=0.00011
y2=1.5
ypos1=0.00011
ypos2=1.5
divy=5
subdivy=1
unity=1
x1=0
x2=1e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="clk
reset
b3
b2
b1
b0"
color="4 5 10 10 10 10"
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=-1
linewidth_mult=4
digital=1}
T {Testbench for transient analysis - Digital Core} 550 -1690 0 0 1 1 {}
N 740 -820 740 -780 {
lab=GND}
N 580 -920 580 -880 {
lab=VDD}
N 580 -820 580 -780 {
lab=GND}
N 740 -920 740 -880 {lab=clk}
N 740 -680 740 -640 {lab=reset}
N 740 -580 740 -540 {lab=GND}
N 1140 -680 1180 -680 {lab=clk}
N 1140 -620 1180 -620 {lab=reset}
N 1380 -680 1460 -680 {lab=b3}
N 1380 -660 1460 -660 {lab=b2}
N 1380 -640 1460 -640 {lab=b1}
N 1380 -620 1460 -620 {lab=b0}
N 1280 -580 1280 -540 {lab=GND}
N 1280 -760 1280 -720 {lab=VDD}
C {devices/vsource.sym} 580 -850 0 0 {name=VDD value="1.5"}
C {devices/gnd.sym} 580 -780 0 0 {name=l6 lab=GND}
C {devices/vdd.sym} 580 -920 0 0 {name=l8 lab=VDD}
C {devices/vsource.sym} 740 -850 0 0 {name=vclk value="pulse(0 1.5 0 10p 10p \{0.5/fclk\} \{1/fclk\})"
}
C {devices/lab_wire.sym} 740 -920 0 0 {name=p2 sig_type=std_logic lab=clk}
C {devices/gnd.sym} 740 -780 0 0 {name=l1 lab=GND}
C {devices/title-3.sym} 0 0 0 0 {name=l3 author="Simon Dorrer" rev=1.0 lock=true}
C {devices/launcher.sym} 1640 -1020 0 0 {name=h2
descr="Simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {devices/launcher.sym} 1640 -970 0 0 {name=h1
descr="Load waves" 
tclcommand="xschem raw_read $netlist_dir/dig_tb_tran.raw tran"
}
C {code_shown.sym} 160 -1330 0 0 {name=NGSPICE
only_toplevel=false
value="
*True Mixed Signal Simulation (.xspice)
.include /foss/designs/SG13G2_ATBS-ADC-main/xspice/dig/dig.xspice

*True Analog Simulation with PEX (.spice)
*....

.param temp=27
.param fclk=10000000
.options savecurrents
.control
save all

* Transient Analysis
tran 1n 2u
write dig_tb_tran.raw

plot v(clk) v(reset)
plot v(b3) v(b2) v(b1) v(b0)

quit
.endc"}
C {devices/lab_wire.sym} 740 -680 0 0 {name=p1 sig_type=std_logic lab=reset}
C {devices/gnd.sym} 740 -540 0 0 {name=l2 lab=GND}
C {devices/lab_wire.sym} 1140 -680 0 0 {name=p3 sig_type=std_logic lab=clk}
C {devices/lab_wire.sym} 1140 -620 0 0 {name=p4 sig_type=std_logic lab=reset}
C {devices/lab_wire.sym} 1460 -680 0 1 {name=p6 sig_type=std_logic lab=b3}
C {devices/lab_wire.sym} 1460 -660 0 1 {name=p7 sig_type=std_logic lab=b2}
C {devices/lab_wire.sym} 1460 -640 0 1 {name=p8 sig_type=std_logic lab=b1}
C {devices/lab_wire.sym} 1460 -620 0 1 {name=p9 sig_type=std_logic lab=b0}
C {devices/vsource.sym} 740 -610 0 0 {name=vrst value="pulse(0 1.5 \{1/fclk\} 10p 10p \{0.5/fclk*100\} \{1/fclk*100\})"
}
C {devices/code_shown.sym} 160 -390 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerRES.lib res_typ
"}
C {devices/gnd.sym} 1280 -540 0 0 {name=l4 lab=GND}
C {devices/vdd.sym} 1280 -760 0 0 {name=l5 lab=VDD}
C {top_level/dig.sym} 1280 -650 0 0 {name=x1}
