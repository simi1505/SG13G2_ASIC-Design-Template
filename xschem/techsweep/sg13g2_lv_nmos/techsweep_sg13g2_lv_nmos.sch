v {xschem version=3.4.6RC file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {Techsweep for the SG13G2 LV NMOS} 900 -1700 0 0 1 1 {}
N 1320 -1000 1320 -920 {
lab=d}
N 1240 -780 1240 -760 {
lab=GND}
N 1240 -890 1240 -840 {
lab=b}
N 1320 -860 1320 -760 {
lab=GND}
N 1040 -890 1040 -840 {
lab=g}
N 1040 -780 1040 -760 {
lab=GND}
N 1420 -780 1420 -760 {
lab=GND}
N 1420 -880 1420 -840 {
lab=n}
N 1160 -1000 1160 -920 {lab=d}
N 1040 -890 1120 -890 {lab=g}
N 1160 -860 1160 -760 {lab=GND}
N 1160 -890 1240 -890 {lab=b}
N 1160 -1000 1320 -1000 {lab=d}
C {devices/code_shown.sym} 260 -510 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
"}
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
	wrdata techsweep_sg13g2_lv_nmos.txt noise1.all
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
write techsweep_sg13g2_lv_nmos.raw
.endc
"}
C {devices/gnd.sym} 1160 -760 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 1040 -760 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} 1040 -810 0 0 {name=vg value="0.65 AC 1"}
C {devices/vsource.sym} 1320 -890 0 0 {name=vd value=0.75}
C {devices/gnd.sym} 1320 -760 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} 1240 -760 0 0 {name=l4 lab=GND}
C {sg13g2_pr/sg13_lv_nmos.sym} 1140 -890 2 1 {name=M1
l=\{lx\}
w=\{wx\}
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/launcher.sym} 1950 -1270 0 0 {name=h2
descr="simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {devices/launcher.sym} 1950 -1210 0 0 {name=h3
descr="annotate OP" 
tclcommand="xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw; set show_hidden_texts 1; xschem annotate_op"
}
C {devices/ngspice_get_value.sym} 1580 -950 0 1 {name=r2 node=@n.xm1.nsg13_lv_nmos[gds]
descr="gds="}
C {devices/ngspice_get_value.sym} 1580 -980 0 1 {name=r4 node=@n.xm1.nsg13_lv_nmos[gm]
descr="gm="}
C {devices/ngspice_get_value.sym} 1580 -920 0 1 {name=r5 node=v(@n.xm1.nsg13_lv_nmos[vth])
descr="vth="}
C {devices/ngspice_get_value.sym} 1580 -860 0 1 {name=r6 node=@n.xm1.nsg13_lv_nmos[cgg]
descr="cgs="}
C {devices/ngspice_get_value.sym} 1580 -890 0 1 {name=r7 node=v(@n.xm1.nsg13_lv_nmos[vdss])
descr="vdss(vds_sat)="}
C {devices/ngspice_get_value.sym} 1580 -830 0 1 {name=r8 node=v(@n.xm1.nsg13_lv_nmos[fug])
descr="fug(f_t)="}
C {devices/ngspice_get_value.sym} 1580 -800 0 1 {name=r9 node=@n.xm1.nsg13_lv_nmos[cgd]
descr="cdg="}
C {devices/ngspice_get_value.sym} 1580 -740 0 1 {name=r10 node=v(@n.xm1.nsg13_lv_nmos[sid])
descr="sid="}
C {devices/ngspice_get_value.sym} 1580 -770 0 1 {name=r11 node=v(@n.xm1.nsg13_lv_nmos[rg])
descr="rg="}
C {devices/vsource.sym} 1240 -810 2 1 {name=vsb value=\{vbx\}}
C {devices/lab_wire.sym} 1040 -890 0 0 {name=p1 sig_type=std_logic lab=g}
C {devices/lab_wire.sym} 1160 -1000 0 0 {name=p2 sig_type=std_logic lab=d}
C {devices/lab_wire.sym} 1240 -890 0 1 {name=p3 sig_type=std_logic lab=b}
C {devices/code_shown.sym} 1880 -1090 0 0 {name=NGSPICE_SAVE only_toplevel=true 
value="
.save b d g n
.save @n.xm1.nsg13_lv_nmos[cgsol]
.save @n.xm1.nsg13_lv_nmos[cgdol]
.save @n.xm1.nsg13_lv_nmos[cdd]
.save @n.xm1.nsg13_lv_nmos[cgb]
.save @n.xm1.nsg13_lv_nmos[cgd]
.save @n.xm1.nsg13_lv_nmos[cgg]
.save @n.xm1.nsg13_lv_nmos[cgs]
.save @n.xm1.nsg13_lv_nmos[css]
.save @n.xm1.nsg13_lv_nmos[gds]
.save @n.xm1.nsg13_lv_nmos[gm]
.save @n.xm1.nsg13_lv_nmos[gmb]
.save @n.xm1.nsg13_lv_nmos[ids]
.save @n.xm1.nsg13_lv_nmos[l]
.save @n.xm1.nsg13_lv_nmos[vgs]
.save @n.xm1.nsg13_lv_nmos[vds]
.save @n.xm1.nsg13_lv_nmos[vsb]
.save @n.xm1.nsg13_lv_nmos[vth]
.save @n.xm1.nsg13_lv_nmos[vdss]
.save @n.xm1.nsg13_lv_nmos[fug]
.save @n.xm1.nsg13_lv_nmos[sid]
.save @n.xm1.nsg13_lv_nmos[sfl]
.save @n.xm1.nsg13_lv_nmos[cjd]
.save @n.xm1.nsg13_lv_nmos[cjs]
.save @n.xm1.nsg13_lv_nmos[rg]
"}
C {devices/ccvs.sym} 1420 -810 0 0 {name=H4 vnam=vd value=1}
C {devices/gnd.sym} 1420 -760 0 0 {name=l6 lab=GND}
C {devices/lab_pin.sym} 1420 -870 0 0 {name=p4 sig_type=std_logic lab=n
}
C {title-3.sym} 0 0 0 0 {name=l7 author="(c) 2024 H. Pretl & S. Dorrer (adapted from B. Murmann)" rev=1.0 lock=true}
