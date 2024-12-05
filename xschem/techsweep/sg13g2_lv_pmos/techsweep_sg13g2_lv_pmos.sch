v {xschem version=3.4.6RC file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {Techsweep for the SG13G2 LV PMOS} 900 -1700 0 0 1 1 {}
N 1060 -940 1060 -890 {
lab=g}
N 1060 -890 1130 -890 {
lab=g}
N 1060 -1020 1060 -1000 {
lab=GND}
N 1170 -1020 1170 -920 {
lab=GND}
N 1170 -860 1170 -820 {
lab=d}
N 1170 -820 1320 -820 {
lab=d}
N 1320 -860 1320 -820 {
lab=d}
N 1320 -1020 1320 -920 {
lab=GND}
N 1260 -940 1260 -890 {
lab=b}
N 1170 -890 1260 -890 {
lab=b}
N 1260 -1020 1260 -1000 {
lab=GND}
N 1420 -1020 1420 -990 {
lab=GND}
N 1420 -930 1420 -880 {
lab=n}
C {devices/code_shown.sym} 260 -510 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
"}
C {devices/launcher.sym} 1950 -1270 0 0 {name=h2
descr="simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {devices/launcher.sym} 1950 -1210 0 0 {name=h3
descr="annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {devices/ngspice_get_value.sym} 1560 -1030 0 1 {name=r2 node=@n.xm1.nsg13_lv_pmos[gds]
descr="gds="}
C {devices/ngspice_get_value.sym} 1560 -1060 0 1 {name=r4 node=@n.xm1.nsg13_lv_pmos[gm]
descr="gm="}
C {devices/ngspice_get_value.sym} 1560 -1000 0 1 {name=r5 node=v(@n.xm1.nsg13_lv_pmos[vth])
descr="vth="}
C {devices/ngspice_get_value.sym} 1560 -940 0 1 {name=r6 node=@n.xm1.nsg13_lv_pmos[cgg]
descr="cgs="}
C {devices/ngspice_get_value.sym} 1560 -970 0 1 {name=r7 node=v(@n.xm1.nsg13_lv_pmos[vdss])
descr="vdss(vds_sat)="}
C {devices/ngspice_get_value.sym} 1560 -910 0 1 {name=r8 node=v(@n.xm1.nsg13_lv_pmos[fug])
descr="fug(f_t)="}
C {devices/ngspice_get_value.sym} 1560 -880 0 1 {name=r9 node=@n.xm1.nsg13_lv_pmos[cgd]
descr="cdg="}
C {devices/ngspice_get_value.sym} 1560 -820 0 1 {name=r10 node=v(@n.xm1.nsg13_lv_pmos[sid])
descr="sid="}
C {devices/ngspice_get_value.sym} 1560 -850 0 1 {name=r11 node=v(@n.xm1.nsg13_lv_pmos[rg])
descr="rg="}
C {devices/code_shown.sym} 1880 -1090 0 0 {name=NGSPICE_SAVE only_toplevel=true 
value="
.save b d g n
.save @n.xm1.nsg13_lv_pmos[cgsol]
.save @n.xm1.nsg13_lv_pmos[cgdol]
.save @n.xm1.nsg13_lv_pmos[cdd]
.save @n.xm1.nsg13_lv_pmos[cgb]
.save @n.xm1.nsg13_lv_pmos[cgd]
.save @n.xm1.nsg13_lv_pmos[cgg]
.save @n.xm1.nsg13_lv_pmos[cgs]
.save @n.xm1.nsg13_lv_pmos[css]
.save @n.xm1.nsg13_lv_pmos[gds]
.save @n.xm1.nsg13_lv_pmos[gm]
.save @n.xm1.nsg13_lv_pmos[gmb]
.save @n.xm1.nsg13_lv_pmos[ids]
.save @n.xm1.nsg13_lv_pmos[l]
.save @n.xm1.nsg13_lv_pmos[vgs]
.save @n.xm1.nsg13_lv_pmos[vds]
.save @n.xm1.nsg13_lv_pmos[vsb]
.save @n.xm1.nsg13_lv_pmos[vth]
.save @n.xm1.nsg13_lv_pmos[vdss]
.save @n.xm1.nsg13_lv_pmos[fug]
.save @n.xm1.nsg13_lv_pmos[sid]
.save @n.xm1.nsg13_lv_pmos[sfl]
.save @n.xm1.nsg13_lv_pmos[cjd]
.save @n.xm1.nsg13_lv_pmos[cjs]
.save @n.xm1.nsg13_lv_pmos[rg]
"}
C {sg13g2_pr/sg13_lv_pmos.sym} 1150 -890 0 0 {name=M1
l=\{lx\}
w=\{wx\}
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {devices/gnd.sym} 1170 -1020 2 1 {name=l6 lab=GND}
C {devices/vsource.sym} 1320 -890 0 0 {name=vd value=0.75}
C {devices/vsource.sym} 1260 -970 2 1 {name=vsb value=\{vbx\}}
C {devices/vsource.sym} 1060 -970 0 0 {name=vg value="0.65 AC 1"}
C {devices/gnd.sym} 1060 -1020 2 1 {name=l7 lab=GND}
C {devices/gnd.sym} 1260 -1020 2 1 {name=l8 lab=GND}
C {devices/gnd.sym} 1320 -1020 2 1 {name=l9 lab=GND}
C {devices/lab_wire.sym} 1100 -890 0 0 {name=p4 sig_type=std_logic lab=g}
C {devices/lab_wire.sym} 1240 -820 0 0 {name=p5 sig_type=std_logic lab=d}
C {devices/lab_wire.sym} 1240 -890 0 1 {name=p6 sig_type=std_logic lab=b}
C {devices/ccvs.sym} 1420 -960 0 0 {name=H1 vnam=vd value=1}
C {devices/gnd.sym} 1420 -1020 2 1 {name=l1 lab=GND}
C {devices/lab_pin.sym} 1420 -890 0 0 {name=p1 sig_type=std_logic lab=n}
C {devices/code_shown.sym} 260 -1430 0 0 {name=NGSPICE_CTRL only_toplevel=true 
value="
.option sparse
.temp 27
.param wx=5u lx=0.13u vbx=0
.noise v(n) vg lin 1 1 1 1
.control
option numdgt=3
set wr_singlescale
set wr_vecnames

compose l_vec  values 0.13u 0.2u 0.3u 0.4u 0.5u 1u 5u 10u 25u 50u 100u
compose vg_vec start= 0 stop=1.5  step=25m
compose vd_vec start= 0 stop=1.5  step=25m
compose vb_vec values 0 0.4 0.8 1.2

foreach var1 $&l_vec
  alterparam lx=$var1
  reset
  foreach var2 $&vg_vec
    alter vg $var2
    foreach var3 $&vd_vec
      alter vd $var3
      foreach var4 $&vb_vec
        alter vsb $var4
	run 
	wrdata techsweep_sg13g2_lv_pmos.txt noise1.all
	destroy all
	set appendwrite
	unset set wr_vecnames
      end
    end
  end
end

set appendwrite=0

alterparam lx=0.13u
alterparam vbx=0
reset
op
*showmod
show
write techsweep_sg13g2_lv_pmos.raw
.endc
"}
C {title-3.sym} 0 0 0 0 {name=l12 author="(c) 2024 H. Pretl & S. Dorrer (adapted from B. Murmann)" rev=1.0 lock=true}
