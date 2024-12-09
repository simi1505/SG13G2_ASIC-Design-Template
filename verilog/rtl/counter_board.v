module counter_4_16
  (input  clock_i,
   input  reset_i,
   input  enable_i,
   output [3:0] counter_value_o);
  wire [3:0] counter_value;
  wire [3:0] next_counter_value;
  wire n13_o;
  wire [3:0] n15_o;
  wire [3:0] n17_o;
  wire [3:0] n19_o;
  reg [3:0] n20_q;
  assign counter_value_o = counter_value; //(module output)
  /* ../../vhdl/rtl/counter_ea.vhd:31:8  */
  assign counter_value = n20_q; // (signal)
  /* ../../vhdl/rtl/counter_ea.vhd:32:8  */
  assign next_counter_value = n17_o; // (signal)
  /* ../../vhdl/rtl/counter_ea.vhd:53:34  */
  assign n13_o = counter_value == 4'b1111;
  /* ../../vhdl/rtl/counter_ea.vhd:56:61  */
  assign n15_o = counter_value + 4'b0001;
  /* ../../vhdl/rtl/counter_ea.vhd:53:17  */
  assign n17_o = n13_o ? 4'b0000 : n15_o;
  /* ../../vhdl/rtl/counter_ea.vhd:40:17  */
  assign n19_o = enable_i ? next_counter_value : counter_value;
  /* ../../vhdl/rtl/counter_ea.vhd:40:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n20_q <= 4'b0000;
    else
      n20_q <= n19_o;
endmodule

module counter_board
  (input  clock_i,
   input  reset_n_i,
   input  enable_i,
   output [3:0] counter_value_o);
  wire reset;
  wire n1_o;
  wire [3:0] counter_0_counter_value_o;
  assign counter_value_o = counter_0_counter_value_o; //(module output)
  /* ../../vhdl/rtl/counter_board.vhd:28:8  */
  assign reset = n1_o; // (signal)
  /* ../../vhdl/rtl/counter_board.vhd:33:18  */
  assign n1_o = ~reset_n_i;
  /* ../../vhdl/rtl/counter_board.vhd:36:9  */
  counter_4_16 counter_0 (
    .clock_i(clock_i),
    .reset_i(reset),
    .enable_i(enable_i),
    .counter_value_o(counter_0_counter_value_o));
endmodule

