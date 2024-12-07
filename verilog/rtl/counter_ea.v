module counter
  (input  clock_i,
   input  reset_i,
   input  enable_i,
   output [3:0] counter_value_o);
  wire [3:0] counter_value;
  wire [3:0] next_counter_value;
  wire n10_o;
  wire [3:0] n12_o;
  wire [3:0] n14_o;
  wire [3:0] n16_o;
  reg [3:0] n17_q;
  assign counter_value_o = counter_value; //(module output)
  /* ../../vhdl/rtl/counter_ea.vhd:27:8  */
  assign counter_value = n17_q; // (signal)
  /* ../../vhdl/rtl/counter_ea.vhd:28:8  */
  assign next_counter_value = n14_o; // (signal)
  /* ../../vhdl/rtl/counter_ea.vhd:49:34  */
  assign n10_o = counter_value == 4'b1111;
  /* ../../vhdl/rtl/counter_ea.vhd:52:61  */
  assign n12_o = counter_value + 4'b0001;
  /* ../../vhdl/rtl/counter_ea.vhd:49:17  */
  assign n14_o = n10_o ? 4'b0000 : n12_o;
  /* ../../vhdl/rtl/counter_ea.vhd:36:17  */
  assign n16_o = enable_i ? next_counter_value : counter_value;
  /* ../../vhdl/rtl/counter_ea.vhd:36:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n17_q <= 4'b0000;
    else
      n17_q <= n16_o;
endmodule

