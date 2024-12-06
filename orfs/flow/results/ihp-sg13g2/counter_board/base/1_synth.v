/* Generated by Yosys 0.47 (git sha1 647d61dd9, g++ 11.4.0-1ubuntu1~22.04 -fPIC -O3) */

(* src = "/foss/designs/SG13G2_ASIC-Design-Template/orfs/flow/../../verilog/rtl/counter_board.v:31.1-50.10" *)
(* top =  1  *)
(* hdlname = "counter_board" *)
module counter_board(clock_i, reset_n_i, enable_i, counter_value_o);
  wire _00_;
  wire _01_;
  (* unused_bits = "0" *)
  wire _02_;
  (* unused_bits = "0" *)
  wire _03_;
  (* unused_bits = "0" *)
  wire _04_;
  (* unused_bits = "0" *)
  wire _05_;
  (* src = "/foss/designs/SG13G2_ASIC-Design-Template/orfs/flow/../../verilog/rtl/counter_board.v:32.11-32.18" *)
  input clock_i;
  wire clock_i;
  (* hdlname = "counter_0 n16_o" *)
  (* src = "/foss/designs/SG13G2_ASIC-Design-Template/orfs/flow/../../verilog/rtl/counter_board.v:10.14-10.19" *)
  wire \counter_0.n16_o[0] ;
  (* hdlname = "counter_0 n16_o" *)
  (* src = "/foss/designs/SG13G2_ASIC-Design-Template/orfs/flow/../../verilog/rtl/counter_board.v:10.14-10.19" *)
  wire \counter_0.n16_o[1] ;
  (* hdlname = "counter_0 n16_o" *)
  (* src = "/foss/designs/SG13G2_ASIC-Design-Template/orfs/flow/../../verilog/rtl/counter_board.v:10.14-10.19" *)
  wire \counter_0.n16_o[2] ;
  (* hdlname = "counter_0 n16_o" *)
  (* src = "/foss/designs/SG13G2_ASIC-Design-Template/orfs/flow/../../verilog/rtl/counter_board.v:10.14-10.19" *)
  wire \counter_0.n16_o[3] ;
  (* src = "/foss/designs/SG13G2_ASIC-Design-Template/orfs/flow/../../verilog/rtl/counter_board.v:35.17-35.32" *)
  output [3:0] counter_value_o;
  wire [3:0] counter_value_o;
  (* src = "/foss/designs/SG13G2_ASIC-Design-Template/orfs/flow/../../verilog/rtl/counter_board.v:34.11-34.19" *)
  input enable_i;
  wire enable_i;
  (* src = "/foss/designs/SG13G2_ASIC-Design-Template/orfs/flow/../../verilog/rtl/counter_board.v:33.11-33.20" *)
  input reset_n_i;
  wire reset_n_i;
  sg13g2_inv_1 _06_ (
    .A(counter_value_o[0]),
    .Y(\counter_0.n16_o[0] )
  );
  sg13g2_xor2_1 _07_ (
    .A(counter_value_o[1]),
    .B(counter_value_o[0]),
    .X(\counter_0.n16_o[1] )
  );
  sg13g2_nand2_1 _08_ (
    .A(counter_value_o[1]),
    .B(counter_value_o[0]),
    .Y(_00_)
  );
  sg13g2_xnor2_1 _09_ (
    .A(counter_value_o[2]),
    .B(_00_),
    .Y(\counter_0.n16_o[2] )
  );
  sg13g2_nand3_1 _10_ (
    .A(counter_value_o[1]),
    .B(counter_value_o[0]),
    .C(counter_value_o[2]),
    .Y(_01_)
  );
  sg13g2_xnor2_1 _11_ (
    .A(counter_value_o[3]),
    .B(_01_),
    .Y(\counter_0.n16_o[3] )
  );
  (* src = "/foss/designs/SG13G2_ASIC-Design-Template/orfs/flow/../../verilog/rtl/counter_board.v:24.3-28.35" *)
  sg13g2_dfrbp_1 \counter_0.n18_q[0]$_DFF_PN0_  (
    .CLK(clock_i),
    .D(\counter_0.n16_o[0] ),
    .Q(counter_value_o[0]),
    .Q_N(_03_),
    .RESET_B(reset_n_i)
  );
  (* src = "/foss/designs/SG13G2_ASIC-Design-Template/orfs/flow/../../verilog/rtl/counter_board.v:24.3-28.35" *)
  sg13g2_dfrbp_1 \counter_0.n18_q[1]$_DFF_PN0_  (
    .CLK(clock_i),
    .D(\counter_0.n16_o[1] ),
    .Q(counter_value_o[1]),
    .Q_N(_04_),
    .RESET_B(reset_n_i)
  );
  (* src = "/foss/designs/SG13G2_ASIC-Design-Template/orfs/flow/../../verilog/rtl/counter_board.v:24.3-28.35" *)
  sg13g2_dfrbp_1 \counter_0.n18_q[2]$_DFF_PN0_  (
    .CLK(clock_i),
    .D(\counter_0.n16_o[2] ),
    .Q(counter_value_o[2]),
    .Q_N(_05_),
    .RESET_B(reset_n_i)
  );
  (* src = "/foss/designs/SG13G2_ASIC-Design-Template/orfs/flow/../../verilog/rtl/counter_board.v:24.3-28.35" *)
  sg13g2_dfrbp_1 \counter_0.n18_q[3]$_DFF_PN0_  (
    .CLK(clock_i),
    .D(\counter_0.n16_o[3] ),
    .Q(counter_value_o[3]),
    .Q_N(_02_),
    .RESET_B(reset_n_i)
  );
endmodule
