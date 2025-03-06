module counter_board (clock_i,
    enable_i,
    reset_n_i,
    counter_value_o);
 input clock_i;
 input enable_i;
 input reset_n_i;
 output [3:0] counter_value_o;

 wire _00_;
 wire _01_;
 wire _02_;
 wire _03_;
 wire _04_;
 wire _05_;
 wire _06_;
 wire _07_;
 wire _08_;
 wire _09_;
 wire _10_;
 wire net3;
 wire net4;
 wire net5;
 wire net6;
 wire net1;
 wire net2;
 wire clknet_0_clock_i;
 wire clknet_1_0__leaf_clock_i;
 wire clknet_1_1__leaf_clock_i;

 sg13g2_xor2_1 _11_ (.B(net1),
    .A(net3),
    .X(_00_));
 sg13g2_nand2_1 _12_ (.Y(_04_),
    .A(net3),
    .B(net1));
 sg13g2_xnor2_1 _13_ (.Y(_01_),
    .A(net4),
    .B(_04_));
 sg13g2_nand3_1 _14_ (.B(net3),
    .C(net1),
    .A(net4),
    .Y(_05_));
 sg13g2_xnor2_1 _15_ (.Y(_02_),
    .A(net5),
    .B(_05_));
 sg13g2_nand4_1 _16_ (.B(net3),
    .C(net5),
    .A(net4),
    .Y(_06_),
    .D(net1));
 sg13g2_xnor2_1 _17_ (.Y(_03_),
    .A(net6),
    .B(_06_));
 sg13g2_dfrbp_1 \counter_0.n20_q[0]$_DFFE_PN0P_  (.CLK(clknet_1_0__leaf_clock_i),
    .RESET_B(net2),
    .D(_00_),
    .Q_N(_10_),
    .Q(net3));
 sg13g2_dfrbp_1 \counter_0.n20_q[1]$_DFFE_PN0P_  (.CLK(clknet_1_1__leaf_clock_i),
    .RESET_B(net2),
    .D(_01_),
    .Q_N(_09_),
    .Q(net4));
 sg13g2_dfrbp_1 \counter_0.n20_q[2]$_DFFE_PN0P_  (.CLK(clknet_1_0__leaf_clock_i),
    .RESET_B(net2),
    .D(_02_),
    .Q_N(_08_),
    .Q(net5));
 sg13g2_dfrbp_1 \counter_0.n20_q[3]$_DFFE_PN0P_  (.CLK(clknet_1_1__leaf_clock_i),
    .RESET_B(net2),
    .D(_03_),
    .Q_N(_07_),
    .Q(net6));
 sg13g2_buf_1 input1 (.A(enable_i),
    .X(net1));
 sg13g2_buf_2 input2 (.A(reset_n_i),
    .X(net2));
 sg13g2_buf_1 output3 (.A(net3),
    .X(counter_value_o[0]));
 sg13g2_buf_1 output4 (.A(net4),
    .X(counter_value_o[1]));
 sg13g2_buf_1 output5 (.A(net5),
    .X(counter_value_o[2]));
 sg13g2_buf_1 output6 (.A(net6),
    .X(counter_value_o[3]));
 sg13g2_buf_1 clkbuf_0_clock_i (.A(clock_i),
    .X(clknet_0_clock_i));
 sg13g2_buf_1 clkbuf_1_0__f_clock_i (.A(clknet_0_clock_i),
    .X(clknet_1_0__leaf_clock_i));
 sg13g2_buf_1 clkbuf_1_1__f_clock_i (.A(clknet_0_clock_i),
    .X(clknet_1_1__leaf_clock_i));
 sg13g2_decap_8 FILLER_0_0 ();
 sg13g2_decap_8 FILLER_0_7 ();
 sg13g2_decap_8 FILLER_0_14 ();
 sg13g2_decap_8 FILLER_0_21 ();
 sg13g2_decap_8 FILLER_0_28 ();
 sg13g2_decap_8 FILLER_0_35 ();
 sg13g2_decap_8 FILLER_0_42 ();
 sg13g2_decap_8 FILLER_0_49 ();
 sg13g2_decap_8 FILLER_0_56 ();
 sg13g2_decap_8 FILLER_0_63 ();
 sg13g2_decap_8 FILLER_0_70 ();
 sg13g2_decap_8 FILLER_0_77 ();
 sg13g2_decap_8 FILLER_0_84 ();
 sg13g2_decap_8 FILLER_0_91 ();
 sg13g2_decap_8 FILLER_0_98 ();
 sg13g2_decap_8 FILLER_0_105 ();
 sg13g2_decap_8 FILLER_0_112 ();
 sg13g2_decap_4 FILLER_0_119 ();
 sg13g2_fill_1 FILLER_0_123 ();
 sg13g2_decap_8 FILLER_1_0 ();
 sg13g2_decap_8 FILLER_1_7 ();
 sg13g2_decap_8 FILLER_1_14 ();
 sg13g2_decap_8 FILLER_1_21 ();
 sg13g2_decap_8 FILLER_1_28 ();
 sg13g2_decap_8 FILLER_1_35 ();
 sg13g2_decap_8 FILLER_1_42 ();
 sg13g2_decap_8 FILLER_1_49 ();
 sg13g2_decap_8 FILLER_1_56 ();
 sg13g2_decap_8 FILLER_1_63 ();
 sg13g2_decap_8 FILLER_1_70 ();
 sg13g2_decap_8 FILLER_1_77 ();
 sg13g2_decap_8 FILLER_1_84 ();
 sg13g2_decap_8 FILLER_1_91 ();
 sg13g2_decap_8 FILLER_1_98 ();
 sg13g2_decap_8 FILLER_1_105 ();
 sg13g2_decap_8 FILLER_1_112 ();
 sg13g2_decap_4 FILLER_1_119 ();
 sg13g2_fill_1 FILLER_1_123 ();
 sg13g2_decap_8 FILLER_2_0 ();
 sg13g2_decap_8 FILLER_2_7 ();
 sg13g2_decap_8 FILLER_2_14 ();
 sg13g2_decap_8 FILLER_2_21 ();
 sg13g2_decap_8 FILLER_2_28 ();
 sg13g2_decap_8 FILLER_2_35 ();
 sg13g2_decap_8 FILLER_2_42 ();
 sg13g2_decap_8 FILLER_2_49 ();
 sg13g2_decap_8 FILLER_2_56 ();
 sg13g2_decap_8 FILLER_2_63 ();
 sg13g2_decap_8 FILLER_2_70 ();
 sg13g2_decap_8 FILLER_2_77 ();
 sg13g2_decap_8 FILLER_2_84 ();
 sg13g2_decap_8 FILLER_2_91 ();
 sg13g2_decap_8 FILLER_2_98 ();
 sg13g2_decap_8 FILLER_2_105 ();
 sg13g2_decap_8 FILLER_2_112 ();
 sg13g2_decap_4 FILLER_2_119 ();
 sg13g2_fill_1 FILLER_2_123 ();
 sg13g2_decap_8 FILLER_3_0 ();
 sg13g2_decap_8 FILLER_3_7 ();
 sg13g2_decap_8 FILLER_3_14 ();
 sg13g2_decap_8 FILLER_3_21 ();
 sg13g2_decap_8 FILLER_3_28 ();
 sg13g2_decap_8 FILLER_3_35 ();
 sg13g2_decap_8 FILLER_3_42 ();
 sg13g2_decap_8 FILLER_3_49 ();
 sg13g2_decap_8 FILLER_3_56 ();
 sg13g2_decap_8 FILLER_3_63 ();
 sg13g2_decap_8 FILLER_3_70 ();
 sg13g2_decap_8 FILLER_3_77 ();
 sg13g2_decap_8 FILLER_3_84 ();
 sg13g2_decap_8 FILLER_3_91 ();
 sg13g2_decap_8 FILLER_3_98 ();
 sg13g2_decap_8 FILLER_3_105 ();
 sg13g2_decap_8 FILLER_3_112 ();
 sg13g2_decap_4 FILLER_3_119 ();
 sg13g2_fill_1 FILLER_3_123 ();
 sg13g2_decap_8 FILLER_4_4 ();
 sg13g2_decap_8 FILLER_4_11 ();
 sg13g2_decap_8 FILLER_4_18 ();
 sg13g2_decap_8 FILLER_4_25 ();
 sg13g2_decap_4 FILLER_4_32 ();
 sg13g2_decap_8 FILLER_4_40 ();
 sg13g2_decap_8 FILLER_4_47 ();
 sg13g2_decap_8 FILLER_4_54 ();
 sg13g2_decap_8 FILLER_4_61 ();
 sg13g2_decap_8 FILLER_4_68 ();
 sg13g2_decap_8 FILLER_4_75 ();
 sg13g2_decap_8 FILLER_4_82 ();
 sg13g2_decap_8 FILLER_4_89 ();
 sg13g2_decap_8 FILLER_4_96 ();
 sg13g2_decap_8 FILLER_4_103 ();
 sg13g2_decap_8 FILLER_4_110 ();
 sg13g2_decap_8 FILLER_4_117 ();
 sg13g2_fill_1 FILLER_5_0 ();
 sg13g2_decap_8 FILLER_5_27 ();
 sg13g2_decap_8 FILLER_5_34 ();
 sg13g2_decap_8 FILLER_5_41 ();
 sg13g2_decap_8 FILLER_5_48 ();
 sg13g2_decap_8 FILLER_5_55 ();
 sg13g2_decap_8 FILLER_5_62 ();
 sg13g2_decap_8 FILLER_5_69 ();
 sg13g2_decap_8 FILLER_5_76 ();
 sg13g2_decap_8 FILLER_5_83 ();
 sg13g2_decap_8 FILLER_5_90 ();
 sg13g2_decap_8 FILLER_5_97 ();
 sg13g2_decap_8 FILLER_5_104 ();
 sg13g2_decap_8 FILLER_5_111 ();
 sg13g2_decap_4 FILLER_5_118 ();
 sg13g2_fill_2 FILLER_5_122 ();
 sg13g2_fill_2 FILLER_6_0 ();
 sg13g2_decap_8 FILLER_6_47 ();
 sg13g2_decap_8 FILLER_6_54 ();
 sg13g2_decap_8 FILLER_6_61 ();
 sg13g2_decap_8 FILLER_6_68 ();
 sg13g2_decap_8 FILLER_6_75 ();
 sg13g2_decap_4 FILLER_6_82 ();
 sg13g2_decap_8 FILLER_6_90 ();
 sg13g2_decap_8 FILLER_6_97 ();
 sg13g2_decap_8 FILLER_6_104 ();
 sg13g2_decap_8 FILLER_6_111 ();
 sg13g2_decap_4 FILLER_6_118 ();
 sg13g2_fill_2 FILLER_6_122 ();
 sg13g2_fill_1 FILLER_7_8 ();
 sg13g2_fill_1 FILLER_7_21 ();
 sg13g2_decap_8 FILLER_7_48 ();
 sg13g2_decap_8 FILLER_7_55 ();
 sg13g2_decap_8 FILLER_7_62 ();
 sg13g2_decap_8 FILLER_7_69 ();
 sg13g2_decap_8 FILLER_7_76 ();
 sg13g2_fill_1 FILLER_7_83 ();
 sg13g2_decap_8 FILLER_7_93 ();
 sg13g2_decap_8 FILLER_7_100 ();
 sg13g2_decap_8 FILLER_7_107 ();
 sg13g2_decap_8 FILLER_7_114 ();
 sg13g2_fill_2 FILLER_7_121 ();
 sg13g2_fill_1 FILLER_7_123 ();
 sg13g2_fill_1 FILLER_8_0 ();
 sg13g2_decap_8 FILLER_8_27 ();
 sg13g2_decap_8 FILLER_8_34 ();
 sg13g2_decap_8 FILLER_8_41 ();
 sg13g2_decap_8 FILLER_8_48 ();
 sg13g2_decap_8 FILLER_8_55 ();
 sg13g2_decap_8 FILLER_8_62 ();
 sg13g2_decap_8 FILLER_8_69 ();
 sg13g2_decap_8 FILLER_8_76 ();
 sg13g2_decap_8 FILLER_8_83 ();
 sg13g2_decap_8 FILLER_8_90 ();
 sg13g2_decap_8 FILLER_8_97 ();
 sg13g2_decap_8 FILLER_8_104 ();
 sg13g2_decap_8 FILLER_8_111 ();
 sg13g2_decap_4 FILLER_8_118 ();
 sg13g2_fill_2 FILLER_8_122 ();
 sg13g2_fill_2 FILLER_9_4 ();
 sg13g2_fill_1 FILLER_9_6 ();
 sg13g2_decap_8 FILLER_9_19 ();
 sg13g2_decap_8 FILLER_9_26 ();
 sg13g2_decap_8 FILLER_9_33 ();
 sg13g2_decap_8 FILLER_9_40 ();
 sg13g2_decap_8 FILLER_9_47 ();
 sg13g2_decap_8 FILLER_9_54 ();
 sg13g2_decap_8 FILLER_9_61 ();
 sg13g2_decap_8 FILLER_9_68 ();
 sg13g2_decap_8 FILLER_9_75 ();
 sg13g2_decap_8 FILLER_9_82 ();
 sg13g2_decap_8 FILLER_9_89 ();
 sg13g2_decap_8 FILLER_9_96 ();
 sg13g2_decap_8 FILLER_9_103 ();
 sg13g2_decap_8 FILLER_9_110 ();
 sg13g2_decap_8 FILLER_9_117 ();
 sg13g2_decap_8 FILLER_10_4 ();
 sg13g2_decap_8 FILLER_10_11 ();
 sg13g2_decap_8 FILLER_10_18 ();
 sg13g2_decap_8 FILLER_10_25 ();
 sg13g2_decap_8 FILLER_10_32 ();
 sg13g2_decap_8 FILLER_10_39 ();
 sg13g2_decap_8 FILLER_10_46 ();
 sg13g2_decap_8 FILLER_10_53 ();
 sg13g2_decap_8 FILLER_10_60 ();
 sg13g2_decap_8 FILLER_10_67 ();
 sg13g2_decap_8 FILLER_10_74 ();
 sg13g2_decap_8 FILLER_10_81 ();
 sg13g2_decap_8 FILLER_10_88 ();
 sg13g2_decap_8 FILLER_10_95 ();
 sg13g2_decap_8 FILLER_10_102 ();
 sg13g2_decap_8 FILLER_10_109 ();
 sg13g2_decap_8 FILLER_10_116 ();
 sg13g2_fill_1 FILLER_10_123 ();
 sg13g2_decap_8 FILLER_11_0 ();
 sg13g2_decap_8 FILLER_11_7 ();
 sg13g2_decap_8 FILLER_11_14 ();
 sg13g2_decap_8 FILLER_11_21 ();
 sg13g2_decap_8 FILLER_11_28 ();
 sg13g2_decap_8 FILLER_11_35 ();
 sg13g2_decap_8 FILLER_11_42 ();
 sg13g2_decap_8 FILLER_11_49 ();
 sg13g2_decap_8 FILLER_11_56 ();
 sg13g2_decap_8 FILLER_11_63 ();
 sg13g2_decap_8 FILLER_11_70 ();
 sg13g2_decap_8 FILLER_11_77 ();
 sg13g2_decap_8 FILLER_11_84 ();
 sg13g2_decap_8 FILLER_11_91 ();
 sg13g2_decap_8 FILLER_11_98 ();
 sg13g2_decap_8 FILLER_11_105 ();
 sg13g2_decap_8 FILLER_11_112 ();
 sg13g2_decap_4 FILLER_11_119 ();
 sg13g2_fill_1 FILLER_11_123 ();
 sg13g2_decap_8 FILLER_12_0 ();
 sg13g2_decap_8 FILLER_12_7 ();
 sg13g2_fill_2 FILLER_12_14 ();
 sg13g2_decap_8 FILLER_12_20 ();
 sg13g2_decap_8 FILLER_12_27 ();
 sg13g2_decap_8 FILLER_12_34 ();
 sg13g2_decap_8 FILLER_12_41 ();
 sg13g2_decap_8 FILLER_12_48 ();
 sg13g2_decap_8 FILLER_12_55 ();
 sg13g2_decap_8 FILLER_12_62 ();
 sg13g2_decap_8 FILLER_12_69 ();
 sg13g2_decap_8 FILLER_12_76 ();
 sg13g2_decap_8 FILLER_12_83 ();
 sg13g2_decap_8 FILLER_12_90 ();
 sg13g2_decap_8 FILLER_12_97 ();
 sg13g2_decap_8 FILLER_12_104 ();
 sg13g2_decap_8 FILLER_12_111 ();
 sg13g2_decap_4 FILLER_12_118 ();
 sg13g2_fill_2 FILLER_12_122 ();
 sg13g2_decap_8 FILLER_13_0 ();
 sg13g2_decap_8 FILLER_13_7 ();
 sg13g2_decap_8 FILLER_13_14 ();
 sg13g2_decap_8 FILLER_13_21 ();
 sg13g2_decap_8 FILLER_13_28 ();
 sg13g2_decap_8 FILLER_13_35 ();
 sg13g2_decap_8 FILLER_13_42 ();
 sg13g2_decap_8 FILLER_13_49 ();
 sg13g2_decap_8 FILLER_13_56 ();
 sg13g2_decap_8 FILLER_13_63 ();
 sg13g2_decap_8 FILLER_13_70 ();
 sg13g2_decap_8 FILLER_13_77 ();
 sg13g2_decap_8 FILLER_13_84 ();
 sg13g2_decap_8 FILLER_13_91 ();
 sg13g2_decap_8 FILLER_13_98 ();
 sg13g2_decap_8 FILLER_13_105 ();
 sg13g2_decap_8 FILLER_13_112 ();
 sg13g2_decap_4 FILLER_13_119 ();
 sg13g2_fill_1 FILLER_13_123 ();
 sg13g2_decap_8 FILLER_14_0 ();
 sg13g2_decap_8 FILLER_14_7 ();
 sg13g2_decap_8 FILLER_14_14 ();
 sg13g2_decap_8 FILLER_14_21 ();
 sg13g2_decap_8 FILLER_14_28 ();
 sg13g2_decap_8 FILLER_14_35 ();
 sg13g2_decap_8 FILLER_14_42 ();
 sg13g2_decap_8 FILLER_14_49 ();
 sg13g2_decap_8 FILLER_14_56 ();
 sg13g2_decap_8 FILLER_14_63 ();
 sg13g2_decap_8 FILLER_14_70 ();
 sg13g2_decap_8 FILLER_14_77 ();
 sg13g2_decap_8 FILLER_14_84 ();
 sg13g2_decap_8 FILLER_14_91 ();
 sg13g2_decap_8 FILLER_14_98 ();
 sg13g2_decap_8 FILLER_14_105 ();
 sg13g2_decap_8 FILLER_14_112 ();
 sg13g2_decap_4 FILLER_14_119 ();
 sg13g2_fill_1 FILLER_14_123 ();
endmodule
