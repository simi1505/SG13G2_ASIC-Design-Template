module priority_encoder_3_3
  (input  clock_i,
   input  reset_i,
   input  [2:0] code_i,
   output [2:0] bin_o);
  wire [2:0] bin;
  wire [2:0] next_bin;
  wire n2887_o;
  wire [2:0] n2890_o;
  wire n2892_o;
  wire [2:0] n2894_o;
  wire n2895_o;
  wire [2:0] n2897_o;
  reg [2:0] n2899_q;
  assign bin_o = bin; //(module output)
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Priority-Encoder/rtl/priority_encoder_ea.vhd:32:8  */
  assign bin = n2899_q; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Priority-Encoder/rtl/priority_encoder_ea.vhd:33:8  */
  assign next_bin = n2897_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Priority-Encoder/rtl/priority_encoder_ea.vhd:54:16  */
  assign n2887_o = code_i[0]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Priority-Encoder/rtl/priority_encoder_ea.vhd:54:7  */
  assign n2890_o = n2887_o ? 3'b001 : 3'b000;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Priority-Encoder/rtl/priority_encoder_ea.vhd:54:16  */
  assign n2892_o = code_i[1]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Priority-Encoder/rtl/priority_encoder_ea.vhd:54:7  */
  assign n2894_o = n2892_o ? 3'b010 : n2890_o;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Priority-Encoder/rtl/priority_encoder_ea.vhd:54:16  */
  assign n2895_o = code_i[2]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Priority-Encoder/rtl/priority_encoder_ea.vhd:54:7  */
  assign n2897_o = n2895_o ? 3'b011 : n2894_o;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Priority-Encoder/rtl/priority_encoder_ea.vhd:41:5  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n2899_q <= 3'b000;
    else
      n2899_q <= next_bin;
endmodule

module spike_2_thermocode_6
  (input  [1:0] spike_i,
   input  [5:0] thermo_i,
   output [5:0] thermo_o);
  wire plus;
  wire minus;
  wire [5:0] thermo;
  wire n2846_o;
  wire n2847_o;
  wire n2850_o;
  wire n2851_o;
  wire n2852_o;
  wire n2853_o;
  wire n2854_o;
  wire n2855_o;
  wire n2856_o;
  wire n2857_o;
  wire n2858_o;
  wire n2859_o;
  wire n2860_o;
  wire n2861_o;
  wire n2862_o;
  wire n2863_o;
  wire n2864_o;
  wire n2865_o;
  wire n2866_o;
  wire n2867_o;
  wire n2868_o;
  wire n2869_o;
  wire n2870_o;
  wire n2871_o;
  wire n2872_o;
  wire n2873_o;
  wire n2874_o;
  wire n2875_o;
  wire [5:0] n2876_o;
  wire [5:0] n2877_o;
  assign thermo_o = thermo; //(module output)
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-2-Thermocode/rtl/spike_2_thermocode_ea.vhd:30:8  */
  assign plus = n2847_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-2-Thermocode/rtl/spike_2_thermocode_ea.vhd:31:8  */
  assign minus = n2846_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-2-Thermocode/rtl/spike_2_thermocode_ea.vhd:32:8  */
  assign thermo = n2877_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-2-Thermocode/rtl/spike_2_thermocode_ea.vhd:37:19  */
  assign n2846_o = spike_i[1]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-2-Thermocode/rtl/spike_2_thermocode_ea.vhd:38:18  */
  assign n2847_o = spike_i[0]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-2-Thermocode/rtl/spike_2_thermocode_ea.vhd:43:16  */
  assign n2850_o = spike_i == 2'b00;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-2-Thermocode/rtl/spike_2_thermocode_ea.vhd:48:37  */
  assign n2851_o = thermo_i[1]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-2-Thermocode/rtl/spike_2_thermocode_ea.vhd:48:41  */
  assign n2852_o = n2851_o & minus;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-2-Thermocode/rtl/spike_2_thermocode_ea.vhd:48:25  */
  assign n2853_o = plus | n2852_o;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-2-Thermocode/rtl/spike_2_thermocode_ea.vhd:53:31  */
  assign n2854_o = thermo_i[0]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-2-Thermocode/rtl/spike_2_thermocode_ea.vhd:53:37  */
  assign n2855_o = n2854_o & plus;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-2-Thermocode/rtl/spike_2_thermocode_ea.vhd:53:59  */
  assign n2856_o = thermo_i[2]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-2-Thermocode/rtl/spike_2_thermocode_ea.vhd:53:65  */
  assign n2857_o = n2856_o & minus;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-2-Thermocode/rtl/spike_2_thermocode_ea.vhd:53:47  */
  assign n2858_o = n2855_o | n2857_o;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-2-Thermocode/rtl/spike_2_thermocode_ea.vhd:53:31  */
  assign n2859_o = thermo_i[1]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-2-Thermocode/rtl/spike_2_thermocode_ea.vhd:53:37  */
  assign n2860_o = n2859_o & plus;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-2-Thermocode/rtl/spike_2_thermocode_ea.vhd:53:59  */
  assign n2861_o = thermo_i[3]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-2-Thermocode/rtl/spike_2_thermocode_ea.vhd:53:65  */
  assign n2862_o = n2861_o & minus;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-2-Thermocode/rtl/spike_2_thermocode_ea.vhd:53:47  */
  assign n2863_o = n2860_o | n2862_o;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-2-Thermocode/rtl/spike_2_thermocode_ea.vhd:53:31  */
  assign n2864_o = thermo_i[2]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-2-Thermocode/rtl/spike_2_thermocode_ea.vhd:53:37  */
  assign n2865_o = n2864_o & plus;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-2-Thermocode/rtl/spike_2_thermocode_ea.vhd:53:59  */
  assign n2866_o = thermo_i[4]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-2-Thermocode/rtl/spike_2_thermocode_ea.vhd:53:65  */
  assign n2867_o = n2866_o & minus;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-2-Thermocode/rtl/spike_2_thermocode_ea.vhd:53:47  */
  assign n2868_o = n2865_o | n2867_o;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-2-Thermocode/rtl/spike_2_thermocode_ea.vhd:53:31  */
  assign n2869_o = thermo_i[3]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-2-Thermocode/rtl/spike_2_thermocode_ea.vhd:53:37  */
  assign n2870_o = n2869_o & plus;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-2-Thermocode/rtl/spike_2_thermocode_ea.vhd:53:59  */
  assign n2871_o = thermo_i[5]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-2-Thermocode/rtl/spike_2_thermocode_ea.vhd:53:65  */
  assign n2872_o = n2871_o & minus;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-2-Thermocode/rtl/spike_2_thermocode_ea.vhd:53:47  */
  assign n2873_o = n2870_o | n2872_o;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-2-Thermocode/rtl/spike_2_thermocode_ea.vhd:57:40  */
  assign n2874_o = thermo_i[4]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-2-Thermocode/rtl/spike_2_thermocode_ea.vhd:57:56  */
  assign n2875_o = n2874_o & plus;
  assign n2876_o = {n2875_o, n2873_o, n2868_o, n2863_o, n2858_o, n2853_o};
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-2-Thermocode/rtl/spike_2_thermocode_ea.vhd:43:5  */
  assign n2877_o = n2850_o ? thermo_i : n2876_o;
endmodule

module uart_rx_10_8
  (input  clock_i,
   input  reset_i,
   input  [9:0] baudrate_adj_i,
   input  rx_i,
   output [7:0] data_o,
   output data_valid_strb_o);
  wire [2:0] receive_counter_value;
  wire [2:0] next_receive_counter_value;
  wire [9:0] baud_counter_value;
  wire [9:0] next_baud_counter_value;
  wire [7:0] received_data;
  wire [7:0] next_received_data;
  wire data_valid_strb;
  wire [1:0] rx_state;
  wire [1:0] next_rx_state;
  wire next_strobe;
  wire n2740_o;
  wire n2741_o;
  wire [2:0] n2743_o;
  wire [2:0] n2744_o;
  wire [2:0] n2746_o;
  wire n2749_o;
  wire [9:0] n2751_o;
  wire [9:0] n2753_o;
  wire n2755_o;
  wire [9:0] n2757_o;
  wire n2760_o;
  wire [1:0] n2762_o;
  wire n2764_o;
  wire n2765_o;
  wire [1:0] n2767_o;
  wire n2769_o;
  wire [9:0] n2771_o;
  wire n2772_o;
  wire [7:0] n2776_o;
  wire n2777_o;
  wire n2779_o;
  wire n2780_o;
  wire [1:0] n2782_o;
  wire n2784_o;
  wire [9:0] n2786_o;
  wire n2787_o;
  wire [1:0] n2789_o;
  wire n2792_o;
  wire n2794_o;
  wire [3:0] n2795_o;
  reg [7:0] n2797_o;
  reg [1:0] n2798_o;
  reg n2801_o;
  reg [2:0] n2804_q;
  reg [9:0] n2805_q;
  reg [7:0] n2806_q;
  reg n2807_q;
  reg [1:0] n2808_q;
  wire n2810_o;
  wire n2811_o;
  wire n2812_o;
  wire n2813_o;
  wire n2814_o;
  wire n2815_o;
  wire n2816_o;
  wire n2817_o;
  wire n2818_o;
  wire n2819_o;
  wire n2820_o;
  wire n2821_o;
  wire n2822_o;
  wire n2823_o;
  wire n2824_o;
  wire n2825_o;
  wire n2826_o;
  wire n2827_o;
  wire n2828_o;
  wire n2829_o;
  wire n2830_o;
  wire n2831_o;
  wire n2832_o;
  wire n2833_o;
  wire n2834_o;
  wire n2835_o;
  wire n2836_o;
  wire n2837_o;
  wire n2838_o;
  wire n2839_o;
  wire n2840_o;
  wire n2841_o;
  wire n2842_o;
  wire n2843_o;
  wire [7:0] n2844_o;
  assign data_o = received_data; //(module output)
  assign data_valid_strb_o = data_valid_strb; //(module output)
  /* ../../../vhdl/floating_window/tbs_core/uart/rtl/uart_rx_ea.vhd:38:8  */
  assign receive_counter_value = n2804_q; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/uart/rtl/uart_rx_ea.vhd:39:8  */
  assign next_receive_counter_value = n2746_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/uart/rtl/uart_rx_ea.vhd:42:8  */
  assign baud_counter_value = n2805_q; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/uart/rtl/uart_rx_ea.vhd:43:8  */
  assign next_baud_counter_value = n2757_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/uart/rtl/uart_rx_ea.vhd:46:8  */
  assign received_data = n2806_q; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/uart/rtl/uart_rx_ea.vhd:47:8  */
  assign next_received_data = n2797_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/uart/rtl/uart_rx_ea.vhd:48:8  */
  assign data_valid_strb = n2807_q; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/uart/rtl/uart_rx_ea.vhd:51:8  */
  assign rx_state = n2808_q; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/uart/rtl/uart_rx_ea.vhd:52:8  */
  assign next_rx_state = n2798_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/uart/rtl/uart_rx_ea.vhd:54:8  */
  assign next_strobe = n2801_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/uart/rtl/uart_rx_ea.vhd:81:17  */
  assign n2740_o = rx_state == 2'b10;
  /* ../../../vhdl/floating_window/tbs_core/uart/rtl/uart_rx_ea.vhd:82:29  */
  assign n2741_o = baud_counter_value == baudrate_adj_i;
  /* ../../../vhdl/floating_window/tbs_core/uart/rtl/uart_rx_ea.vhd:83:61  */
  assign n2743_o = receive_counter_value + 3'b001;
  /* ../../../vhdl/floating_window/tbs_core/uart/rtl/uart_rx_ea.vhd:82:7  */
  assign n2744_o = n2741_o ? n2743_o : receive_counter_value;
  /* ../../../vhdl/floating_window/tbs_core/uart/rtl/uart_rx_ea.vhd:81:5  */
  assign n2746_o = n2740_o ? n2744_o : 3'b000;
  /* ../../../vhdl/floating_window/tbs_core/uart/rtl/uart_rx_ea.vhd:96:27  */
  assign n2749_o = $unsigned(baud_counter_value) < $unsigned(baudrate_adj_i);
  /* ../../../vhdl/floating_window/tbs_core/uart/rtl/uart_rx_ea.vhd:97:53  */
  assign n2751_o = baud_counter_value + 10'b0000000001;
  /* ../../../vhdl/floating_window/tbs_core/uart/rtl/uart_rx_ea.vhd:96:5  */
  assign n2753_o = n2749_o ? n2751_o : 10'b0000000000;
  /* ../../../vhdl/floating_window/tbs_core/uart/rtl/uart_rx_ea.vhd:102:17  */
  assign n2755_o = rx_state == 2'b00;
  /* ../../../vhdl/floating_window/tbs_core/uart/rtl/uart_rx_ea.vhd:102:5  */
  assign n2757_o = n2755_o ? 10'b0000000000 : n2753_o;
  /* ../../../vhdl/floating_window/tbs_core/uart/rtl/uart_rx_ea.vhd:118:17  */
  assign n2760_o = ~rx_i;
  /* ../../../vhdl/floating_window/tbs_core/uart/rtl/uart_rx_ea.vhd:118:9  */
  assign n2762_o = n2760_o ? 2'b01 : rx_state;
  /* ../../../vhdl/floating_window/tbs_core/uart/rtl/uart_rx_ea.vhd:116:7  */
  assign n2764_o = rx_state == 2'b00;
  /* ../../../vhdl/floating_window/tbs_core/uart/rtl/uart_rx_ea.vhd:123:31  */
  assign n2765_o = baud_counter_value == baudrate_adj_i;
  /* ../../../vhdl/floating_window/tbs_core/uart/rtl/uart_rx_ea.vhd:123:9  */
  assign n2767_o = n2765_o ? 2'b10 : rx_state;
  /* ../../../vhdl/floating_window/tbs_core/uart/rtl/uart_rx_ea.vhd:122:7  */
  assign n2769_o = rx_state == 2'b01;
  /* ../../../vhdl/floating_window/tbs_core/uart/rtl/uart_rx_ea.vhd:128:33  */
  assign n2771_o = baudrate_adj_i >> 31'b0000000000000000000000000000001;
  /* ../../../vhdl/floating_window/tbs_core/uart/rtl/uart_rx_ea.vhd:128:31  */
  assign n2772_o = baud_counter_value == n2771_o;
  /* ../../../vhdl/floating_window/tbs_core/uart/rtl/uart_rx_ea.vhd:128:9  */
  assign n2776_o = n2772_o ? n2844_o : received_data;
  /* ../../../vhdl/floating_window/tbs_core/uart/rtl/uart_rx_ea.vhd:131:31  */
  assign n2777_o = baud_counter_value == baudrate_adj_i;
  /* ../../../vhdl/floating_window/tbs_core/uart/rtl/uart_rx_ea.vhd:131:74  */
  assign n2779_o = receive_counter_value == 3'b111;
  /* ../../../vhdl/floating_window/tbs_core/uart/rtl/uart_rx_ea.vhd:131:48  */
  assign n2780_o = n2779_o & n2777_o;
  /* ../../../vhdl/floating_window/tbs_core/uart/rtl/uart_rx_ea.vhd:131:9  */
  assign n2782_o = n2780_o ? 2'b11 : rx_state;
  /* ../../../vhdl/floating_window/tbs_core/uart/rtl/uart_rx_ea.vhd:127:7  */
  assign n2784_o = rx_state == 2'b10;
  /* ../../../vhdl/floating_window/tbs_core/uart/rtl/uart_rx_ea.vhd:136:33  */
  assign n2786_o = baudrate_adj_i >> 31'b0000000000000000000000000000001;
  /* ../../../vhdl/floating_window/tbs_core/uart/rtl/uart_rx_ea.vhd:136:31  */
  assign n2787_o = baud_counter_value == n2786_o;
  /* ../../../vhdl/floating_window/tbs_core/uart/rtl/uart_rx_ea.vhd:136:9  */
  assign n2789_o = n2787_o ? 2'b00 : rx_state;
  /* ../../../vhdl/floating_window/tbs_core/uart/rtl/uart_rx_ea.vhd:136:9  */
  assign n2792_o = n2787_o ? 1'b1 : 1'b0;
  /* ../../../vhdl/floating_window/tbs_core/uart/rtl/uart_rx_ea.vhd:135:7  */
  assign n2794_o = rx_state == 2'b11;
  assign n2795_o = {n2794_o, n2784_o, n2769_o, n2764_o};
  /* ../../../vhdl/floating_window/tbs_core/uart/rtl/uart_rx_ea.vhd:115:5  */
  always @*
    case (n2795_o)
      4'b1000: n2797_o = received_data;
      4'b0100: n2797_o = n2776_o;
      4'b0010: n2797_o = received_data;
      4'b0001: n2797_o = received_data;
      default: n2797_o = 8'b00000000;
    endcase
  /* ../../../vhdl/floating_window/tbs_core/uart/rtl/uart_rx_ea.vhd:115:5  */
  always @*
    case (n2795_o)
      4'b1000: n2798_o = n2789_o;
      4'b0100: n2798_o = n2782_o;
      4'b0010: n2798_o = n2767_o;
      4'b0001: n2798_o = n2762_o;
      default: n2798_o = rx_state;
    endcase
  /* ../../../vhdl/floating_window/tbs_core/uart/rtl/uart_rx_ea.vhd:115:5  */
  always @*
    case (n2795_o)
      4'b1000: n2801_o = n2792_o;
      4'b0100: n2801_o = 1'b0;
      4'b0010: n2801_o = 1'b0;
      4'b0001: n2801_o = 1'b0;
      default: n2801_o = 1'b0;
    endcase
  /* ../../../vhdl/floating_window/tbs_core/uart/rtl/uart_rx_ea.vhd:66:5  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n2804_q <= 3'b000;
    else
      n2804_q <= next_receive_counter_value;
  /* ../../../vhdl/floating_window/tbs_core/uart/rtl/uart_rx_ea.vhd:66:5  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n2805_q <= 10'b0000000000;
    else
      n2805_q <= next_baud_counter_value;
  /* ../../../vhdl/floating_window/tbs_core/uart/rtl/uart_rx_ea.vhd:66:5  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n2806_q <= 8'b00000000;
    else
      n2806_q <= next_received_data;
  /* ../../../vhdl/floating_window/tbs_core/uart/rtl/uart_rx_ea.vhd:66:5  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n2807_q <= 1'b0;
    else
      n2807_q <= next_strobe;
  /* ../../../vhdl/floating_window/tbs_core/uart/rtl/uart_rx_ea.vhd:66:5  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n2808_q <= 2'b00;
    else
      n2808_q <= next_rx_state;
  /* ../../../vhdl/floating_window/tbs_core/uart/rtl/uart_rx_ea.vhd:129:11  */
  assign n2810_o = receive_counter_value[2]; // extract
  /* ../../../vhdl/floating_window/tbs_core/uart/rtl/uart_rx_ea.vhd:129:11  */
  assign n2811_o = ~n2810_o;
  /* ../../../vhdl/floating_window/tbs_core/uart/rtl/uart_rx_ea.vhd:129:11  */
  assign n2812_o = receive_counter_value[1]; // extract
  /* ../../../vhdl/floating_window/tbs_core/uart/rtl/uart_rx_ea.vhd:129:11  */
  assign n2813_o = ~n2812_o;
  /* ../../../vhdl/floating_window/tbs_core/uart/rtl/uart_rx_ea.vhd:129:11  */
  assign n2814_o = n2811_o & n2813_o;
  /* ../../../vhdl/floating_window/tbs_core/uart/rtl/uart_rx_ea.vhd:129:11  */
  assign n2815_o = n2811_o & n2812_o;
  /* ../../../vhdl/floating_window/tbs_core/uart/rtl/uart_rx_ea.vhd:129:11  */
  assign n2816_o = n2810_o & n2813_o;
  /* ../../../vhdl/floating_window/tbs_core/uart/rtl/uart_rx_ea.vhd:129:11  */
  assign n2817_o = n2810_o & n2812_o;
  /* ../../../vhdl/floating_window/tbs_core/uart/rtl/uart_rx_ea.vhd:129:11  */
  assign n2818_o = receive_counter_value[0]; // extract
  /* ../../../vhdl/floating_window/tbs_core/uart/rtl/uart_rx_ea.vhd:129:11  */
  assign n2819_o = ~n2818_o;
  /* ../../../vhdl/floating_window/tbs_core/uart/rtl/uart_rx_ea.vhd:129:11  */
  assign n2820_o = n2814_o & n2819_o;
  /* ../../../vhdl/floating_window/tbs_core/uart/rtl/uart_rx_ea.vhd:129:11  */
  assign n2821_o = n2814_o & n2818_o;
  /* ../../../vhdl/floating_window/tbs_core/uart/rtl/uart_rx_ea.vhd:129:11  */
  assign n2822_o = n2815_o & n2819_o;
  /* ../../../vhdl/floating_window/tbs_core/uart/rtl/uart_rx_ea.vhd:129:11  */
  assign n2823_o = n2815_o & n2818_o;
  /* ../../../vhdl/floating_window/tbs_core/uart/rtl/uart_rx_ea.vhd:129:11  */
  assign n2824_o = n2816_o & n2819_o;
  /* ../../../vhdl/floating_window/tbs_core/uart/rtl/uart_rx_ea.vhd:129:11  */
  assign n2825_o = n2816_o & n2818_o;
  /* ../../../vhdl/floating_window/tbs_core/uart/rtl/uart_rx_ea.vhd:129:11  */
  assign n2826_o = n2817_o & n2819_o;
  /* ../../../vhdl/floating_window/tbs_core/uart/rtl/uart_rx_ea.vhd:129:11  */
  assign n2827_o = n2817_o & n2818_o;
  assign n2828_o = received_data[0]; // extract
  /* ../../../vhdl/floating_window/tbs_core/uart/rtl/uart_rx_ea.vhd:129:11  */
  assign n2829_o = n2820_o ? rx_i : n2828_o;
  assign n2830_o = received_data[1]; // extract
  /* ../../../vhdl/floating_window/tbs_core/uart/rtl/uart_rx_ea.vhd:129:11  */
  assign n2831_o = n2821_o ? rx_i : n2830_o;
  assign n2832_o = received_data[2]; // extract
  /* ../../../vhdl/floating_window/tbs_core/uart/rtl/uart_rx_ea.vhd:129:11  */
  assign n2833_o = n2822_o ? rx_i : n2832_o;
  assign n2834_o = received_data[3]; // extract
  /* ../../../vhdl/floating_window/tbs_core/uart/rtl/uart_rx_ea.vhd:129:11  */
  assign n2835_o = n2823_o ? rx_i : n2834_o;
  assign n2836_o = received_data[4]; // extract
  /* ../../../vhdl/floating_window/tbs_core/uart/rtl/uart_rx_ea.vhd:129:11  */
  assign n2837_o = n2824_o ? rx_i : n2836_o;
  assign n2838_o = received_data[5]; // extract
  /* ../../../vhdl/floating_window/tbs_core/uart/rtl/uart_rx_ea.vhd:129:11  */
  assign n2839_o = n2825_o ? rx_i : n2838_o;
  assign n2840_o = received_data[6]; // extract
  /* ../../../vhdl/floating_window/tbs_core/uart/rtl/uart_rx_ea.vhd:129:11  */
  assign n2841_o = n2826_o ? rx_i : n2840_o;
  assign n2842_o = received_data[7]; // extract
  /* ../../../vhdl/floating_window/tbs_core/uart/rtl/uart_rx_ea.vhd:129:11  */
  assign n2843_o = n2827_o ? rx_i : n2842_o;
  assign n2844_o = {n2843_o, n2841_o, n2839_o, n2837_o, n2835_o, n2833_o, n2831_o, n2829_o};
endmodule

module uart_tx_10_8
  (input  clock_i,
   input  reset_i,
   input  [9:0] baudrate_adj_i,
   input  tx_start_strb_i,
   input  [7:0] data_i,
   output tx_strb_o,
   output tx_o);
  wire tx;
  wire tx_strb;
  wire next_tx_strb;
  wire [2:0] transmit_counter_value;
  wire [2:0] next_transmit_counter_value;
  wire [9:0] baud_counter_value;
  wire [9:0] next_baud_counter_value;
  wire [2:0] tx_state;
  wire [2:0] next_tx_state;
  wire n2620_o;
  wire n2621_o;
  wire [2:0] n2623_o;
  wire [2:0] n2624_o;
  wire [2:0] n2626_o;
  wire n2629_o;
  wire [9:0] n2631_o;
  wire [9:0] n2633_o;
  wire n2636_o;
  wire [2:0] n2639_o;
  wire [2:0] n2640_o;
  wire n2642_o;
  wire n2643_o;
  wire n2646_o;
  wire [2:0] n2649_o;
  wire n2651_o;
  wire n2652_o;
  wire [2:0] n2654_o;
  wire n2656_o;
  wire n2658_o;
  wire n2663_o;
  wire n2664_o;
  wire n2665_o;
  wire [2:0] n2667_o;
  wire n2669_o;
  wire n2670_o;
  wire n2672_o;
  wire n2673_o;
  wire [2:0] n2676_o;
  wire [2:0] n2677_o;
  wire n2679_o;
  wire [4:0] n2680_o;
  reg n2685_o;
  reg [2:0] n2687_o;
  wire n2691_o;
  wire n2693_o;
  wire n2695_o;
  wire n2696_o;
  wire n2697_o;
  wire n2698_o;
  reg n2700_q;
  reg [2:0] n2701_q;
  reg [9:0] n2702_q;
  reg [2:0] n2703_q;
  wire n2704_o;
  wire n2705_o;
  wire n2706_o;
  wire n2707_o;
  wire n2708_o;
  wire n2709_o;
  wire n2710_o;
  wire n2711_o;
  wire [1:0] n2712_o;
  reg n2713_o;
  wire [1:0] n2714_o;
  reg n2715_o;
  wire n2716_o;
  wire n2717_o;
  assign tx_strb_o = tx_strb; //(module output)
  assign tx_o = tx; //(module output)
  /* ../../../vhdl/floating_window/tbs_core/uart/rtl/uart_tx_ea.vhd:38:8  */
  assign tx = n2685_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/uart/rtl/uart_tx_ea.vhd:39:8  */
  assign tx_strb = n2700_q; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/uart/rtl/uart_tx_ea.vhd:40:8  */
  assign next_tx_strb = n2698_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/uart/rtl/uart_tx_ea.vhd:43:8  */
  assign transmit_counter_value = n2701_q; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/uart/rtl/uart_tx_ea.vhd:44:8  */
  assign next_transmit_counter_value = n2626_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/uart/rtl/uart_tx_ea.vhd:47:8  */
  assign baud_counter_value = n2702_q; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/uart/rtl/uart_tx_ea.vhd:48:8  */
  assign next_baud_counter_value = n2633_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/uart/rtl/uart_tx_ea.vhd:51:8  */
  assign tx_state = n2703_q; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/uart/rtl/uart_tx_ea.vhd:52:8  */
  assign next_tx_state = n2687_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/uart/rtl/uart_tx_ea.vhd:78:29  */
  assign n2620_o = tx_state == 3'b011;
  /* ../../../vhdl/floating_window/tbs_core/uart/rtl/uart_tx_ea.vhd:79:47  */
  assign n2621_o = baud_counter_value == baudrate_adj_i;
  /* ../../../vhdl/floating_window/tbs_core/uart/rtl/uart_tx_ea.vhd:80:87  */
  assign n2623_o = transmit_counter_value + 3'b001;
  /* ../../../vhdl/floating_window/tbs_core/uart/rtl/uart_tx_ea.vhd:79:25  */
  assign n2624_o = n2621_o ? n2623_o : transmit_counter_value;
  /* ../../../vhdl/floating_window/tbs_core/uart/rtl/uart_tx_ea.vhd:78:17  */
  assign n2626_o = n2620_o ? n2624_o : 3'b000;
  /* ../../../vhdl/floating_window/tbs_core/uart/rtl/uart_tx_ea.vhd:93:39  */
  assign n2629_o = $unsigned(baud_counter_value) < $unsigned(baudrate_adj_i);
  /* ../../../vhdl/floating_window/tbs_core/uart/rtl/uart_tx_ea.vhd:94:71  */
  assign n2631_o = baud_counter_value + 10'b0000000001;
  /* ../../../vhdl/floating_window/tbs_core/uart/rtl/uart_tx_ea.vhd:93:17  */
  assign n2633_o = n2629_o ? n2631_o : 10'b0000000000;
  /* ../../../vhdl/floating_window/tbs_core/uart/rtl/uart_tx_ea.vhd:111:63  */
  assign n2636_o = baud_counter_value == baudrate_adj_i;
  /* ../../../vhdl/floating_window/tbs_core/uart/rtl/uart_tx_ea.vhd:111:41  */
  assign n2639_o = n2636_o ? 3'b010 : 3'b001;
  /* ../../../vhdl/floating_window/tbs_core/uart/rtl/uart_tx_ea.vhd:110:33  */
  assign n2640_o = tx_start_strb_i ? n2639_o : tx_state;
  /* ../../../vhdl/floating_window/tbs_core/uart/rtl/uart_tx_ea.vhd:108:25  */
  assign n2642_o = tx_state == 3'b000;
  /* ../../../vhdl/floating_window/tbs_core/uart/rtl/uart_tx_ea.vhd:123:55  */
  assign n2643_o = baud_counter_value == baudrate_adj_i;
  /* ../../../vhdl/floating_window/tbs_core/uart/rtl/uart_tx_ea.vhd:123:33  */
  assign n2646_o = n2643_o ? 1'b0 : 1'b1;
  /* ../../../vhdl/floating_window/tbs_core/uart/rtl/uart_tx_ea.vhd:123:33  */
  assign n2649_o = n2643_o ? 3'b010 : tx_state;
  /* ../../../vhdl/floating_window/tbs_core/uart/rtl/uart_tx_ea.vhd:121:25  */
  assign n2651_o = tx_state == 3'b001;
  /* ../../../vhdl/floating_window/tbs_core/uart/rtl/uart_tx_ea.vhd:130:55  */
  assign n2652_o = baud_counter_value == baudrate_adj_i;
  /* ../../../vhdl/floating_window/tbs_core/uart/rtl/uart_tx_ea.vhd:130:33  */
  assign n2654_o = n2652_o ? 3'b011 : tx_state;
  /* ../../../vhdl/floating_window/tbs_core/uart/rtl/uart_tx_ea.vhd:128:25  */
  assign n2656_o = tx_state == 3'b010;
  /* ../../../vhdl/floating_window/tbs_core/uart/rtl/uart_tx_ea.vhd:135:59  */
  assign n2658_o = $unsigned(transmit_counter_value) < $unsigned(3'b000);
  /* ../../../vhdl/floating_window/tbs_core/uart/rtl/uart_tx_ea.vhd:137:67  */
  assign n2663_o = transmit_counter_value == 3'b111;
  /* ../../../vhdl/floating_window/tbs_core/uart/rtl/uart_tx_ea.vhd:137:113  */
  assign n2664_o = baud_counter_value == baudrate_adj_i;
  /* ../../../vhdl/floating_window/tbs_core/uart/rtl/uart_tx_ea.vhd:137:90  */
  assign n2665_o = n2664_o & n2663_o;
  /* ../../../vhdl/floating_window/tbs_core/uart/rtl/uart_tx_ea.vhd:135:33  */
  assign n2667_o = n2670_o ? 3'b100 : tx_state;
  /* ../../../vhdl/floating_window/tbs_core/uart/rtl/uart_tx_ea.vhd:135:33  */
  assign n2669_o = n2658_o ? n2717_o : 1'bX;
  /* ../../../vhdl/floating_window/tbs_core/uart/rtl/uart_tx_ea.vhd:135:33  */
  assign n2670_o = n2665_o & n2658_o;
  /* ../../../vhdl/floating_window/tbs_core/uart/rtl/uart_tx_ea.vhd:134:25  */
  assign n2672_o = tx_state == 3'b011;
  /* ../../../vhdl/floating_window/tbs_core/uart/rtl/uart_tx_ea.vhd:144:55  */
  assign n2673_o = baud_counter_value == baudrate_adj_i;
  /* ../../../vhdl/floating_window/tbs_core/uart/rtl/uart_tx_ea.vhd:146:41  */
  assign n2676_o = tx_start_strb_i ? 3'b010 : 3'b000;
  /* ../../../vhdl/floating_window/tbs_core/uart/rtl/uart_tx_ea.vhd:144:33  */
  assign n2677_o = n2673_o ? n2676_o : tx_state;
  /* ../../../vhdl/floating_window/tbs_core/uart/rtl/uart_tx_ea.vhd:142:25  */
  assign n2679_o = tx_state == 3'b100;
  assign n2680_o = {n2679_o, n2672_o, n2656_o, n2651_o, n2642_o};
  /* ../../../vhdl/floating_window/tbs_core/uart/rtl/uart_tx_ea.vhd:107:17  */
  always @*
    case (n2680_o)
      5'b10000: n2685_o = 1'b1;
      5'b01000: n2685_o = n2669_o;
      5'b00100: n2685_o = 1'b0;
      5'b00010: n2685_o = n2646_o;
      5'b00001: n2685_o = 1'b1;
      default: n2685_o = 1'bX;
    endcase
  /* ../../../vhdl/floating_window/tbs_core/uart/rtl/uart_tx_ea.vhd:107:17  */
  always @*
    case (n2680_o)
      5'b10000: n2687_o = n2677_o;
      5'b01000: n2687_o = n2667_o;
      5'b00100: n2687_o = n2654_o;
      5'b00010: n2687_o = n2649_o;
      5'b00001: n2687_o = n2640_o;
      default: n2687_o = tx_state;
    endcase
  /* ../../../vhdl/floating_window/tbs_core/uart/rtl/uart_tx_ea.vhd:158:37  */
  assign n2691_o = tx_state == 3'b100;
  /* ../../../vhdl/floating_window/tbs_core/uart/rtl/uart_tx_ea.vhd:158:66  */
  assign n2693_o = next_tx_state == 3'b010;
  /* ../../../vhdl/floating_window/tbs_core/uart/rtl/uart_tx_ea.vhd:158:94  */
  assign n2695_o = next_tx_state == 3'b000;
  /* ../../../vhdl/floating_window/tbs_core/uart/rtl/uart_tx_ea.vhd:158:77  */
  assign n2696_o = n2693_o | n2695_o;
  /* ../../../vhdl/floating_window/tbs_core/uart/rtl/uart_tx_ea.vhd:158:47  */
  assign n2697_o = n2696_o & n2691_o;
  /* ../../../vhdl/floating_window/tbs_core/uart/rtl/uart_tx_ea.vhd:158:23  */
  assign n2698_o = n2697_o ? 1'b1 : 1'b0;
  /* ../../../vhdl/floating_window/tbs_core/uart/rtl/uart_tx_ea.vhd:63:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n2700_q <= 1'b0;
    else
      n2700_q <= next_tx_strb;
  /* ../../../vhdl/floating_window/tbs_core/uart/rtl/uart_tx_ea.vhd:63:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n2701_q <= 3'b000;
    else
      n2701_q <= next_transmit_counter_value;
  /* ../../../vhdl/floating_window/tbs_core/uart/rtl/uart_tx_ea.vhd:63:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n2702_q <= 10'b0000000000;
    else
      n2702_q <= next_baud_counter_value;
  /* ../../../vhdl/floating_window/tbs_core/uart/rtl/uart_tx_ea.vhd:63:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n2703_q <= 3'b000;
    else
      n2703_q <= next_tx_state;
  /* ../../../vhdl/floating_window/tbs_core/uart/rtl/uart_tx_ea.vhd:25:17  */
  assign n2704_o = data_i[0]; // extract
  /* ../../../vhdl/floating_window/tbs_core/uart/rtl/uart_tx_ea.vhd:24:5  */
  assign n2705_o = data_i[1]; // extract
  assign n2706_o = data_i[2]; // extract
  assign n2707_o = data_i[3]; // extract
  /* ../../../vhdl/floating_window/tbs_core/uart/rtl/uart_tx_ea.vhd:136:54  */
  assign n2708_o = data_i[4]; // extract
  assign n2709_o = data_i[5]; // extract
  /* ../../../vhdl/floating_window/tbs_core/uart/rtl/uart_tx_ea.vhd:101:9  */
  assign n2710_o = data_i[6]; // extract
  assign n2711_o = data_i[7]; // extract
  /* ../../../vhdl/floating_window/tbs_core/uart/rtl/uart_tx_ea.vhd:136:53  */
  assign n2712_o = transmit_counter_value[1:0]; // extract
  /* ../../../vhdl/floating_window/tbs_core/uart/rtl/uart_tx_ea.vhd:136:53  */
  always @*
    case (n2712_o)
      2'b00: n2713_o = n2704_o;
      2'b01: n2713_o = n2705_o;
      2'b10: n2713_o = n2706_o;
      2'b11: n2713_o = n2707_o;
    endcase
  /* ../../../vhdl/floating_window/tbs_core/uart/rtl/uart_tx_ea.vhd:136:53  */
  assign n2714_o = transmit_counter_value[1:0]; // extract
  /* ../../../vhdl/floating_window/tbs_core/uart/rtl/uart_tx_ea.vhd:136:53  */
  always @*
    case (n2714_o)
      2'b00: n2715_o = n2708_o;
      2'b01: n2715_o = n2709_o;
      2'b10: n2715_o = n2710_o;
      2'b11: n2715_o = n2711_o;
    endcase
  /* ../../../vhdl/floating_window/tbs_core/uart/rtl/uart_tx_ea.vhd:136:53  */
  assign n2716_o = transmit_counter_value[2]; // extract
  /* ../../../vhdl/floating_window/tbs_core/uart/rtl/uart_tx_ea.vhd:136:53  */
  assign n2717_o = n2716_o ? n2715_o : n2713_o;
endmodule

module dual_ram_17_7
  (input  a_clock_i,
   input  a_write_i,
   input  [6:0] a_addr_i,
   input  [16:0] a_data_i,
   input  b_clock_i,
   input  b_write_i,
   input  [6:0] b_addr_i,
   input  [16:0] b_data_i,
   output [16:0] a_data_o,
   output [16:0] b_data_o);
  reg [16:0] n2597_data; // mem_rd
  reg [16:0] n2600_data; // mem_rd
  assign a_data_o = n2597_data; //(module output)
  assign b_data_o = n2600_data; //(module output)
  /* ../../../vhdl/floating_window/tbs_core/spike_memory/rtl/dual_ram_ea.vhd:24:17  */
  reg [16:0] mem[127:0] ; // memory
  always @(posedge a_clock_i)
    if (a_write_i)
      mem[a_addr_i] <= a_data_i;
  always @(posedge a_clock_i)
    if (1'b1)
      n2597_data <= mem[a_addr_i];
  always @(posedge b_clock_i)
    if (b_write_i)
      mem[b_addr_i] <= b_data_i;
  always @(posedge b_clock_i)
    if (1'b1)
      n2600_data <= mem[b_addr_i];
  /* ../../../vhdl/floating_window/tbs_core/spike_memory/rtl/dual_ram_ea.vhd:48:13  */
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:86:3  */
  /* ../../../vhdl/floating_window/tbs_core/spike_memory/rtl/dual_ram_ea.vhd:60:13  */
  /* ../../../vhdl/floating_window/tbs_core/spike_memory/rtl/dual_ram_ea.vhd:46:5  */
endmodule

module weyls_discrepancy_8_3_6
  (input  clock_i,
   input  reset_i,
   input  [29:0] spikes_i,
   input  spikes_strb_i,
   output [2:0] weylsd_o,
   output weylsd_strb_o);
  wire [5:0] buf_reg;
  wire [5:0] next_buf_reg;
  wire [2:0] sync_weylsd_strb;
  wire next_weylsd_strb;
  wire [95:0] thermocodes;
  wire [95:0] buf_thermocodes;
  wire [5:0] orresult;
  wire [2:0] neg_orresult;
  wire [95:0] temp_orresult;
  wire [2:0] weylsd;
  wire [2:0] next_weylsd;
  wire [2:0] weylsd_neg;
  wire [2:0] weylsd_pos;
  wire n2345_o;
  wire n2346_o;
  wire [2:0] n2348_o;
  wire [5:0] gen_spike_2_tc_n1_spike_2_tc_thermo_o;
  wire [1:0] n2359_o;
  wire [5:0] n2360_o;
  wire [5:0] gen_spike_2_tc_n2_spike_2_tc_thermo_o;
  wire [1:0] n2362_o;
  wire [5:0] n2363_o;
  wire [5:0] gen_spike_2_tc_n3_spike_2_tc_thermo_o;
  wire [1:0] n2365_o;
  wire [5:0] n2366_o;
  wire [5:0] gen_spike_2_tc_n4_spike_2_tc_thermo_o;
  wire [1:0] n2368_o;
  wire [5:0] n2369_o;
  wire [5:0] gen_spike_2_tc_n5_spike_2_tc_thermo_o;
  wire [1:0] n2371_o;
  wire [5:0] n2372_o;
  wire [5:0] gen_spike_2_tc_n6_spike_2_tc_thermo_o;
  wire [1:0] n2374_o;
  wire [5:0] n2375_o;
  wire [5:0] gen_spike_2_tc_n7_spike_2_tc_thermo_o;
  wire [1:0] n2377_o;
  wire [5:0] n2378_o;
  wire [5:0] gen_spike_2_tc_n8_spike_2_tc_thermo_o;
  wire [1:0] n2380_o;
  wire [5:0] n2381_o;
  wire [5:0] gen_spike_2_tc_n9_spike_2_tc_thermo_o;
  wire [1:0] n2383_o;
  wire [5:0] n2384_o;
  wire [5:0] gen_spike_2_tc_n10_spike_2_tc_thermo_o;
  wire [1:0] n2386_o;
  wire [5:0] n2387_o;
  wire [5:0] gen_spike_2_tc_n11_spike_2_tc_thermo_o;
  wire [1:0] n2389_o;
  wire [5:0] n2390_o;
  wire [5:0] gen_spike_2_tc_n12_spike_2_tc_thermo_o;
  wire [1:0] n2392_o;
  wire [5:0] n2393_o;
  wire [5:0] gen_spike_2_tc_n13_spike_2_tc_thermo_o;
  wire [1:0] n2395_o;
  wire [5:0] n2396_o;
  wire [5:0] gen_spike_2_tc_n14_spike_2_tc_thermo_o;
  wire [1:0] n2398_o;
  wire [5:0] n2399_o;
  wire [5:0] gen_spike_2_tc_n15_spike_2_tc_thermo_o;
  wire [1:0] n2401_o;
  wire [5:0] n2402_o;
  wire [5:0] n2405_o;
  wire [41:0] n2406_o;
  wire [47:0] n2407_o;
  reg [95:0] eval_orresult_offset_comp;
  wire [2:0] n2411_o;
  wire [2:0] n2412_o;
  wire [2:0] n2413_o;
  wire [89:0] n2414_o;
  wire [95:0] n2415_o;
  wire [5:0] n2416_o;
  wire [2:0] n2417_o;
  wire [2:0] n2418_o;
  wire [2:0] n2419_o;
  wire [5:0] n2420_o;
  wire [83:0] n2421_o;
  wire [95:0] n2422_o;
  wire [5:0] n2423_o;
  wire [5:0] n2424_o;
  wire [2:0] n2425_o;
  wire [2:0] n2426_o;
  wire [2:0] n2427_o;
  wire [5:0] n2428_o;
  wire [77:0] n2429_o;
  wire [95:0] n2430_o;
  wire [5:0] n2431_o;
  wire [5:0] n2432_o;
  wire [2:0] n2433_o;
  wire [2:0] n2434_o;
  wire [2:0] n2435_o;
  wire [5:0] n2436_o;
  wire [71:0] n2437_o;
  wire [95:0] n2438_o;
  wire [5:0] n2439_o;
  wire [5:0] n2440_o;
  wire [2:0] n2441_o;
  wire [2:0] n2442_o;
  wire [2:0] n2443_o;
  wire [5:0] n2444_o;
  wire [65:0] n2445_o;
  wire [95:0] n2446_o;
  wire [5:0] n2447_o;
  wire [5:0] n2448_o;
  wire [2:0] n2449_o;
  wire [2:0] n2450_o;
  wire [2:0] n2451_o;
  wire [5:0] n2452_o;
  wire [59:0] n2453_o;
  wire [95:0] n2454_o;
  wire [5:0] n2455_o;
  wire [5:0] n2456_o;
  wire [2:0] n2457_o;
  wire [2:0] n2458_o;
  wire [2:0] n2459_o;
  wire [5:0] n2460_o;
  wire [53:0] n2461_o;
  wire [95:0] n2462_o;
  wire [5:0] n2463_o;
  wire [5:0] n2464_o;
  wire [2:0] n2465_o;
  wire [2:0] n2466_o;
  wire [2:0] n2467_o;
  wire [5:0] n2468_o;
  wire [47:0] n2469_o;
  wire [95:0] n2470_o;
  wire [5:0] n2471_o;
  wire [5:0] n2472_o;
  wire [2:0] n2473_o;
  wire [2:0] n2474_o;
  wire [2:0] n2475_o;
  wire [5:0] n2476_o;
  wire [41:0] n2477_o;
  wire [95:0] n2478_o;
  wire [5:0] n2479_o;
  wire [5:0] n2480_o;
  wire [2:0] n2481_o;
  wire [2:0] n2482_o;
  wire [2:0] n2483_o;
  wire [5:0] n2484_o;
  wire [35:0] n2485_o;
  wire [95:0] n2486_o;
  wire [5:0] n2487_o;
  wire [5:0] n2488_o;
  wire [2:0] n2489_o;
  wire [2:0] n2490_o;
  wire [2:0] n2491_o;
  wire [5:0] n2492_o;
  wire [29:0] n2493_o;
  wire [95:0] n2494_o;
  wire [5:0] n2495_o;
  wire [5:0] n2496_o;
  wire [2:0] n2497_o;
  wire [2:0] n2498_o;
  wire [2:0] n2499_o;
  wire [5:0] n2500_o;
  wire [23:0] n2501_o;
  wire [95:0] n2502_o;
  wire [5:0] n2503_o;
  wire [5:0] n2504_o;
  wire [2:0] n2505_o;
  wire [2:0] n2506_o;
  wire [2:0] n2507_o;
  wire [5:0] n2508_o;
  wire [17:0] n2509_o;
  wire [95:0] n2510_o;
  wire [5:0] n2511_o;
  wire [5:0] n2512_o;
  wire [2:0] n2513_o;
  wire [2:0] n2514_o;
  wire [2:0] n2515_o;
  wire [5:0] n2516_o;
  wire [11:0] n2517_o;
  wire [95:0] n2518_o;
  wire [5:0] n2519_o;
  wire [5:0] n2520_o;
  wire [2:0] n2521_o;
  wire [2:0] n2522_o;
  wire [2:0] n2523_o;
  wire [5:0] n2524_o;
  wire [5:0] n2525_o;
  wire [95:0] n2526_o;
  wire [5:0] n2527_o;
  wire [5:0] n2528_o;
  wire [2:0] n2529_o;
  wire [2:0] n2530_o;
  wire [2:0] n2531_o;
  wire [5:0] n2532_o;
  wire [95:0] n2533_o;
  wire [5:0] n2534_o;
  wire [5:0] n2535_o;
  wire [5:0] n2536_o;
  wire [95:0] n2538_o;
  wire n2540_o;
  wire n2541_o;
  wire n2542_o;
  wire [2:0] priority_encoder_0_bin_o;
  wire [2:0] priority_encoder_1_bin_o;
  wire [2:0] n2545_o;
  wire [2:0] n2547_o;
  wire n2548_o;
  reg [5:0] n2549_q;
  reg [2:0] n2550_q;
  wire [95:0] n2551_o;
  wire [95:0] n2552_o;
  wire [2:0] n2553_o;
  wire [95:0] n2554_o;
  reg [2:0] n2555_q;
  assign weylsd_o = weylsd; //(module output)
  assign weylsd_strb_o = n2548_o; //(module output)
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:61:8  */
  assign buf_reg = n2549_q; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:62:8  */
  assign next_buf_reg = n2405_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:64:8  */
  assign sync_weylsd_strb = n2550_q; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:65:8  */
  assign next_weylsd_strb = spikes_strb_i; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:67:8  */
  assign thermocodes = n2551_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:68:8  */
  assign buf_thermocodes = n2552_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:70:8  */
  assign orresult = n2536_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:71:8  */
  assign neg_orresult = n2553_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:72:8  */
  assign temp_orresult = n2554_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:74:8  */
  assign weylsd = n2555_q; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:75:8  */
  assign next_weylsd = n2547_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:76:8  */
  assign weylsd_neg = priority_encoder_0_bin_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:77:8  */
  assign weylsd_pos = priority_encoder_1_bin_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:98:48  */
  assign n2345_o = sync_weylsd_strb[1]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:98:48  */
  assign n2346_o = sync_weylsd_strb[0]; // extract
  assign n2348_o = {n2345_o, n2346_o, next_weylsd_strb};
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:108:5  */
  spike_2_thermocode_6 gen_spike_2_tc_n1_spike_2_tc (
    .spike_i(n2359_o),
    .thermo_i(n2360_o),
    .thermo_o(gen_spike_2_tc_n1_spike_2_tc_thermo_o));
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:113:30  */
  assign n2359_o = spikes_i[29:28]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:114:33  */
  assign n2360_o = thermocodes[5:0]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:108:5  */
  spike_2_thermocode_6 gen_spike_2_tc_n2_spike_2_tc (
    .spike_i(n2362_o),
    .thermo_i(n2363_o),
    .thermo_o(gen_spike_2_tc_n2_spike_2_tc_thermo_o));
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:113:30  */
  assign n2362_o = spikes_i[27:26]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:114:33  */
  assign n2363_o = thermocodes[11:6]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:108:5  */
  spike_2_thermocode_6 gen_spike_2_tc_n3_spike_2_tc (
    .spike_i(n2365_o),
    .thermo_i(n2366_o),
    .thermo_o(gen_spike_2_tc_n3_spike_2_tc_thermo_o));
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:113:30  */
  assign n2365_o = spikes_i[25:24]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:114:33  */
  assign n2366_o = thermocodes[17:12]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:108:5  */
  spike_2_thermocode_6 gen_spike_2_tc_n4_spike_2_tc (
    .spike_i(n2368_o),
    .thermo_i(n2369_o),
    .thermo_o(gen_spike_2_tc_n4_spike_2_tc_thermo_o));
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:113:30  */
  assign n2368_o = spikes_i[23:22]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:114:33  */
  assign n2369_o = thermocodes[23:18]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:108:5  */
  spike_2_thermocode_6 gen_spike_2_tc_n5_spike_2_tc (
    .spike_i(n2371_o),
    .thermo_i(n2372_o),
    .thermo_o(gen_spike_2_tc_n5_spike_2_tc_thermo_o));
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:113:30  */
  assign n2371_o = spikes_i[21:20]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:114:33  */
  assign n2372_o = thermocodes[29:24]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:108:5  */
  spike_2_thermocode_6 gen_spike_2_tc_n6_spike_2_tc (
    .spike_i(n2374_o),
    .thermo_i(n2375_o),
    .thermo_o(gen_spike_2_tc_n6_spike_2_tc_thermo_o));
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:113:30  */
  assign n2374_o = spikes_i[19:18]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:114:33  */
  assign n2375_o = thermocodes[35:30]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:108:5  */
  spike_2_thermocode_6 gen_spike_2_tc_n7_spike_2_tc (
    .spike_i(n2377_o),
    .thermo_i(n2378_o),
    .thermo_o(gen_spike_2_tc_n7_spike_2_tc_thermo_o));
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:113:30  */
  assign n2377_o = spikes_i[17:16]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:114:33  */
  assign n2378_o = thermocodes[41:36]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:108:5  */
  spike_2_thermocode_6 gen_spike_2_tc_n8_spike_2_tc (
    .spike_i(n2380_o),
    .thermo_i(n2381_o),
    .thermo_o(gen_spike_2_tc_n8_spike_2_tc_thermo_o));
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:113:30  */
  assign n2380_o = spikes_i[15:14]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:114:33  */
  assign n2381_o = thermocodes[47:42]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:108:5  */
  spike_2_thermocode_6 gen_spike_2_tc_n9_spike_2_tc (
    .spike_i(n2383_o),
    .thermo_i(n2384_o),
    .thermo_o(gen_spike_2_tc_n9_spike_2_tc_thermo_o));
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:113:30  */
  assign n2383_o = spikes_i[13:12]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:114:33  */
  assign n2384_o = thermocodes[53:48]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:108:5  */
  spike_2_thermocode_6 gen_spike_2_tc_n10_spike_2_tc (
    .spike_i(n2386_o),
    .thermo_i(n2387_o),
    .thermo_o(gen_spike_2_tc_n10_spike_2_tc_thermo_o));
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:113:30  */
  assign n2386_o = spikes_i[11:10]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:114:33  */
  assign n2387_o = thermocodes[59:54]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:108:5  */
  spike_2_thermocode_6 gen_spike_2_tc_n11_spike_2_tc (
    .spike_i(n2389_o),
    .thermo_i(n2390_o),
    .thermo_o(gen_spike_2_tc_n11_spike_2_tc_thermo_o));
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:113:30  */
  assign n2389_o = spikes_i[9:8]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:114:33  */
  assign n2390_o = thermocodes[65:60]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:108:5  */
  spike_2_thermocode_6 gen_spike_2_tc_n12_spike_2_tc (
    .spike_i(n2392_o),
    .thermo_i(n2393_o),
    .thermo_o(gen_spike_2_tc_n12_spike_2_tc_thermo_o));
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:113:30  */
  assign n2392_o = spikes_i[7:6]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:114:33  */
  assign n2393_o = thermocodes[71:66]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:108:5  */
  spike_2_thermocode_6 gen_spike_2_tc_n13_spike_2_tc (
    .spike_i(n2395_o),
    .thermo_i(n2396_o),
    .thermo_o(gen_spike_2_tc_n13_spike_2_tc_thermo_o));
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:113:30  */
  assign n2395_o = spikes_i[5:4]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:114:33  */
  assign n2396_o = thermocodes[77:72]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:108:5  */
  spike_2_thermocode_6 gen_spike_2_tc_n14_spike_2_tc (
    .spike_i(n2398_o),
    .thermo_i(n2399_o),
    .thermo_o(gen_spike_2_tc_n14_spike_2_tc_thermo_o));
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:113:30  */
  assign n2398_o = spikes_i[3:2]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:114:33  */
  assign n2399_o = thermocodes[83:78]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:108:5  */
  spike_2_thermocode_6 gen_spike_2_tc_n15_spike_2_tc (
    .spike_i(n2401_o),
    .thermo_i(n2402_o),
    .thermo_o(gen_spike_2_tc_n15_spike_2_tc_thermo_o));
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:113:30  */
  assign n2401_o = spikes_i[1:0]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:114:33  */
  assign n2402_o = thermocodes[89:84]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:127:41  */
  assign n2405_o = buf_thermocodes[53:48]; // extract
  assign n2406_o = buf_thermocodes[95:54]; // extract
  assign n2407_o = buf_thermocodes[47:0]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:137:12  */
  always @*
    eval_orresult_offset_comp = n2538_o; // (isignal)
  initial
    eval_orresult_offset_comp = 96'bX;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:139:71  */
  assign n2411_o = thermocodes[2:0]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:139:53  */
  assign n2412_o = ~n2411_o;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:140:77  */
  assign n2413_o = thermocodes[5:3]; // extract
  assign n2414_o = eval_orresult_offset_comp[95:6]; // extract
  assign n2415_o = {n2414_o, n2413_o, n2412_o};
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:141:36  */
  assign n2416_o = n2415_o[5:0]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:147:73  */
  assign n2417_o = thermocodes[8:6]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:147:55  */
  assign n2418_o = ~n2417_o;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:148:79  */
  assign n2419_o = thermocodes[11:9]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:149:40  */
  assign n2420_o = temp_orresult[5:0]; // extract
  assign n2421_o = eval_orresult_offset_comp[95:12]; // extract
  assign n2422_o = {n2421_o, n2419_o, n2418_o, n2413_o, n2412_o};
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:149:60  */
  assign n2423_o = n2422_o[11:6]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:149:46  */
  assign n2424_o = n2420_o | n2423_o;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:147:73  */
  assign n2425_o = thermocodes[14:12]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:147:55  */
  assign n2426_o = ~n2425_o;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:148:79  */
  assign n2427_o = thermocodes[17:15]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:149:40  */
  assign n2428_o = temp_orresult[11:6]; // extract
  assign n2429_o = eval_orresult_offset_comp[95:18]; // extract
  assign n2430_o = {n2429_o, n2427_o, n2426_o, n2419_o, n2418_o, n2413_o, n2412_o};
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:149:60  */
  assign n2431_o = n2430_o[17:12]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:149:46  */
  assign n2432_o = n2428_o | n2431_o;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:147:73  */
  assign n2433_o = thermocodes[20:18]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:147:55  */
  assign n2434_o = ~n2433_o;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:148:79  */
  assign n2435_o = thermocodes[23:21]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:149:40  */
  assign n2436_o = temp_orresult[17:12]; // extract
  assign n2437_o = eval_orresult_offset_comp[95:24]; // extract
  assign n2438_o = {n2437_o, n2435_o, n2434_o, n2427_o, n2426_o, n2419_o, n2418_o, n2413_o, n2412_o};
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:149:60  */
  assign n2439_o = n2438_o[23:18]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:149:46  */
  assign n2440_o = n2436_o | n2439_o;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:147:73  */
  assign n2441_o = thermocodes[26:24]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:147:55  */
  assign n2442_o = ~n2441_o;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:148:79  */
  assign n2443_o = thermocodes[29:27]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:149:40  */
  assign n2444_o = temp_orresult[23:18]; // extract
  assign n2445_o = eval_orresult_offset_comp[95:30]; // extract
  assign n2446_o = {n2445_o, n2443_o, n2442_o, n2435_o, n2434_o, n2427_o, n2426_o, n2419_o, n2418_o, n2413_o, n2412_o};
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:149:60  */
  assign n2447_o = n2446_o[29:24]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:149:46  */
  assign n2448_o = n2444_o | n2447_o;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:147:73  */
  assign n2449_o = thermocodes[32:30]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:147:55  */
  assign n2450_o = ~n2449_o;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:148:79  */
  assign n2451_o = thermocodes[35:33]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:149:40  */
  assign n2452_o = temp_orresult[29:24]; // extract
  assign n2453_o = eval_orresult_offset_comp[95:36]; // extract
  assign n2454_o = {n2453_o, n2451_o, n2450_o, n2443_o, n2442_o, n2435_o, n2434_o, n2427_o, n2426_o, n2419_o, n2418_o, n2413_o, n2412_o};
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:149:60  */
  assign n2455_o = n2454_o[35:30]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:149:46  */
  assign n2456_o = n2452_o | n2455_o;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:147:73  */
  assign n2457_o = thermocodes[38:36]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:147:55  */
  assign n2458_o = ~n2457_o;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:148:79  */
  assign n2459_o = thermocodes[41:39]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:149:40  */
  assign n2460_o = temp_orresult[35:30]; // extract
  assign n2461_o = eval_orresult_offset_comp[95:42]; // extract
  assign n2462_o = {n2461_o, n2459_o, n2458_o, n2451_o, n2450_o, n2443_o, n2442_o, n2435_o, n2434_o, n2427_o, n2426_o, n2419_o, n2418_o, n2413_o, n2412_o};
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:149:60  */
  assign n2463_o = n2462_o[41:36]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:149:46  */
  assign n2464_o = n2460_o | n2463_o;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:147:73  */
  assign n2465_o = thermocodes[44:42]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:147:55  */
  assign n2466_o = ~n2465_o;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:148:79  */
  assign n2467_o = thermocodes[47:45]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:149:40  */
  assign n2468_o = temp_orresult[41:36]; // extract
  assign n2469_o = eval_orresult_offset_comp[95:48]; // extract
  assign n2470_o = {n2469_o, n2467_o, n2466_o, n2459_o, n2458_o, n2451_o, n2450_o, n2443_o, n2442_o, n2435_o, n2434_o, n2427_o, n2426_o, n2419_o, n2418_o, n2413_o, n2412_o};
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:149:60  */
  assign n2471_o = n2470_o[47:42]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:149:46  */
  assign n2472_o = n2468_o | n2471_o;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:147:73  */
  assign n2473_o = thermocodes[50:48]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:147:55  */
  assign n2474_o = ~n2473_o;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:148:79  */
  assign n2475_o = thermocodes[53:51]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:149:40  */
  assign n2476_o = temp_orresult[47:42]; // extract
  assign n2477_o = eval_orresult_offset_comp[95:54]; // extract
  assign n2478_o = {n2477_o, n2475_o, n2474_o, n2467_o, n2466_o, n2459_o, n2458_o, n2451_o, n2450_o, n2443_o, n2442_o, n2435_o, n2434_o, n2427_o, n2426_o, n2419_o, n2418_o, n2413_o, n2412_o};
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:149:60  */
  assign n2479_o = n2478_o[53:48]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:149:46  */
  assign n2480_o = n2476_o | n2479_o;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:147:73  */
  assign n2481_o = thermocodes[56:54]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:147:55  */
  assign n2482_o = ~n2481_o;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:148:79  */
  assign n2483_o = thermocodes[59:57]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:149:40  */
  assign n2484_o = temp_orresult[53:48]; // extract
  assign n2485_o = eval_orresult_offset_comp[95:60]; // extract
  assign n2486_o = {n2485_o, n2483_o, n2482_o, n2475_o, n2474_o, n2467_o, n2466_o, n2459_o, n2458_o, n2451_o, n2450_o, n2443_o, n2442_o, n2435_o, n2434_o, n2427_o, n2426_o, n2419_o, n2418_o, n2413_o, n2412_o};
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:149:60  */
  assign n2487_o = n2486_o[59:54]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:149:46  */
  assign n2488_o = n2484_o | n2487_o;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:147:73  */
  assign n2489_o = thermocodes[62:60]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:147:55  */
  assign n2490_o = ~n2489_o;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:148:79  */
  assign n2491_o = thermocodes[65:63]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:149:40  */
  assign n2492_o = temp_orresult[59:54]; // extract
  assign n2493_o = eval_orresult_offset_comp[95:66]; // extract
  assign n2494_o = {n2493_o, n2491_o, n2490_o, n2483_o, n2482_o, n2475_o, n2474_o, n2467_o, n2466_o, n2459_o, n2458_o, n2451_o, n2450_o, n2443_o, n2442_o, n2435_o, n2434_o, n2427_o, n2426_o, n2419_o, n2418_o, n2413_o, n2412_o};
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:149:60  */
  assign n2495_o = n2494_o[65:60]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:149:46  */
  assign n2496_o = n2492_o | n2495_o;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:147:73  */
  assign n2497_o = thermocodes[68:66]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:147:55  */
  assign n2498_o = ~n2497_o;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:148:79  */
  assign n2499_o = thermocodes[71:69]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:149:40  */
  assign n2500_o = temp_orresult[65:60]; // extract
  assign n2501_o = eval_orresult_offset_comp[95:72]; // extract
  assign n2502_o = {n2501_o, n2499_o, n2498_o, n2491_o, n2490_o, n2483_o, n2482_o, n2475_o, n2474_o, n2467_o, n2466_o, n2459_o, n2458_o, n2451_o, n2450_o, n2443_o, n2442_o, n2435_o, n2434_o, n2427_o, n2426_o, n2419_o, n2418_o, n2413_o, n2412_o};
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:149:60  */
  assign n2503_o = n2502_o[71:66]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:149:46  */
  assign n2504_o = n2500_o | n2503_o;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:147:73  */
  assign n2505_o = thermocodes[74:72]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:147:55  */
  assign n2506_o = ~n2505_o;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:148:79  */
  assign n2507_o = thermocodes[77:75]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:149:40  */
  assign n2508_o = temp_orresult[71:66]; // extract
  assign n2509_o = eval_orresult_offset_comp[95:78]; // extract
  assign n2510_o = {n2509_o, n2507_o, n2506_o, n2499_o, n2498_o, n2491_o, n2490_o, n2483_o, n2482_o, n2475_o, n2474_o, n2467_o, n2466_o, n2459_o, n2458_o, n2451_o, n2450_o, n2443_o, n2442_o, n2435_o, n2434_o, n2427_o, n2426_o, n2419_o, n2418_o, n2413_o, n2412_o};
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:149:60  */
  assign n2511_o = n2510_o[77:72]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:149:46  */
  assign n2512_o = n2508_o | n2511_o;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:147:73  */
  assign n2513_o = thermocodes[80:78]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:147:55  */
  assign n2514_o = ~n2513_o;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:148:79  */
  assign n2515_o = thermocodes[83:81]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:149:40  */
  assign n2516_o = temp_orresult[77:72]; // extract
  assign n2517_o = eval_orresult_offset_comp[95:84]; // extract
  assign n2518_o = {n2517_o, n2515_o, n2514_o, n2507_o, n2506_o, n2499_o, n2498_o, n2491_o, n2490_o, n2483_o, n2482_o, n2475_o, n2474_o, n2467_o, n2466_o, n2459_o, n2458_o, n2451_o, n2450_o, n2443_o, n2442_o, n2435_o, n2434_o, n2427_o, n2426_o, n2419_o, n2418_o, n2413_o, n2412_o};
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:149:60  */
  assign n2519_o = n2518_o[83:78]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:149:46  */
  assign n2520_o = n2516_o | n2519_o;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:147:73  */
  assign n2521_o = thermocodes[86:84]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:147:55  */
  assign n2522_o = ~n2521_o;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:148:79  */
  assign n2523_o = thermocodes[89:87]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:149:40  */
  assign n2524_o = temp_orresult[83:78]; // extract
  assign n2525_o = eval_orresult_offset_comp[95:90]; // extract
  assign n2526_o = {n2525_o, n2523_o, n2522_o, n2515_o, n2514_o, n2507_o, n2506_o, n2499_o, n2498_o, n2491_o, n2490_o, n2483_o, n2482_o, n2475_o, n2474_o, n2467_o, n2466_o, n2459_o, n2458_o, n2451_o, n2450_o, n2443_o, n2442_o, n2435_o, n2434_o, n2427_o, n2426_o, n2419_o, n2418_o, n2413_o, n2412_o};
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:149:60  */
  assign n2527_o = n2526_o[89:84]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:149:46  */
  assign n2528_o = n2524_o | n2527_o;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:147:73  */
  assign n2529_o = thermocodes[92:90]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:147:55  */
  assign n2530_o = ~n2529_o;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:148:79  */
  assign n2531_o = thermocodes[95:93]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:149:40  */
  assign n2532_o = temp_orresult[89:84]; // extract
  assign n2533_o = {n2531_o, n2530_o, n2523_o, n2522_o, n2515_o, n2514_o, n2507_o, n2506_o, n2499_o, n2498_o, n2491_o, n2490_o, n2483_o, n2482_o, n2475_o, n2474_o, n2467_o, n2466_o, n2459_o, n2458_o, n2451_o, n2450_o, n2443_o, n2442_o, n2435_o, n2434_o, n2427_o, n2426_o, n2419_o, n2418_o, n2413_o, n2412_o};
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:149:60  */
  assign n2534_o = n2533_o[95:90]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:149:46  */
  assign n2535_o = n2532_o | n2534_o;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:152:30  */
  assign n2536_o = temp_orresult[95:90]; // extract
  assign n2538_o = {n2531_o, n2530_o, n2523_o, n2522_o, n2515_o, n2514_o, n2507_o, n2506_o, n2499_o, n2498_o, n2491_o, n2490_o, n2483_o, n2482_o, n2475_o, n2474_o, n2467_o, n2466_o, n2459_o, n2458_o, n2451_o, n2450_o, n2443_o, n2442_o, n2435_o, n2434_o, n2427_o, n2426_o, n2419_o, n2418_o, n2413_o, n2412_o};
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:161:54  */
  assign n2540_o = orresult[0]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:161:54  */
  assign n2541_o = orresult[1]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:161:54  */
  assign n2542_o = orresult[2]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:165:3  */
  priority_encoder_3_3 priority_encoder_0 (
    .clock_i(clock_i),
    .reset_i(reset_i),
    .code_i(neg_orresult),
    .bin_o(priority_encoder_0_bin_o));
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:180:3  */
  priority_encoder_3_3 priority_encoder_1 (
    .clock_i(clock_i),
    .reset_i(reset_i),
    .code_i(n2545_o),
    .bin_o(priority_encoder_1_bin_o));
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:188:24  */
  assign n2545_o = orresult[5:3]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:195:36  */
  assign n2547_o = weylsd_neg + weylsd_pos;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:200:36  */
  assign n2548_o = sync_weylsd_strb[2]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:92:5  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n2549_q <= 6'b000000;
    else
      n2549_q <= next_buf_reg;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:92:5  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n2550_q <= 3'b000;
    else
      n2550_q <= n2348_o;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:88:5  */
  assign n2551_o = {n2406_o, buf_reg, n2407_o};
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:88:5  */
  assign n2552_o = {gen_spike_2_tc_n15_spike_2_tc_thermo_o, gen_spike_2_tc_n14_spike_2_tc_thermo_o, gen_spike_2_tc_n13_spike_2_tc_thermo_o, gen_spike_2_tc_n12_spike_2_tc_thermo_o, gen_spike_2_tc_n11_spike_2_tc_thermo_o, gen_spike_2_tc_n10_spike_2_tc_thermo_o, gen_spike_2_tc_n9_spike_2_tc_thermo_o, gen_spike_2_tc_n8_spike_2_tc_thermo_o, gen_spike_2_tc_n7_spike_2_tc_thermo_o, gen_spike_2_tc_n6_spike_2_tc_thermo_o, gen_spike_2_tc_n5_spike_2_tc_thermo_o, gen_spike_2_tc_n4_spike_2_tc_thermo_o, gen_spike_2_tc_n3_spike_2_tc_thermo_o, gen_spike_2_tc_n2_spike_2_tc_thermo_o, gen_spike_2_tc_n1_spike_2_tc_thermo_o, 6'b000111};
  assign n2553_o = {n2540_o, n2541_o, n2542_o};
  assign n2554_o = {n2535_o, n2528_o, n2520_o, n2512_o, n2504_o, n2496_o, n2488_o, n2480_o, n2472_o, n2464_o, n2456_o, n2448_o, n2440_o, n2432_o, n2424_o, n2416_o};
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:92:5  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n2555_q <= 3'b000;
    else
      n2555_q <= next_weylsd;
endmodule

module spike_shift_reg_40000_16
  (input  clock_i,
   input  reset_i,
   input  overflow_strb_i,
   input  [15:0] curr_time_i,
   input  spike_i,
   input  spike_strb_i,
   output [29:0] spikes_o,
   output spikes_strb_o);
  wire [239:0] timestamps;
  wire [239:0] next_timestamps;
  wire [29:0] spikes;
  wire [29:0] next_spikes;
  wire [254:0] win_end;
  wire [14:0] overflow_marker;
  wire [14:0] next_overflow_marker;
  wire spikes_strb;
  wire next_spikes_strb;
  wire [14:0] n1931_o;
  wire [1:0] n1932_o;
  wire [15:0] n1933_o;
  wire n1934_o;
  wire [1:0] n1935_o;
  wire [15:0] n1936_o;
  wire n1937_o;
  wire [1:0] n1938_o;
  wire [15:0] n1939_o;
  wire n1940_o;
  wire [1:0] n1941_o;
  wire [15:0] n1942_o;
  wire n1943_o;
  wire [1:0] n1944_o;
  wire [15:0] n1945_o;
  wire n1946_o;
  wire [1:0] n1947_o;
  wire [15:0] n1948_o;
  wire n1949_o;
  wire [1:0] n1950_o;
  wire [15:0] n1951_o;
  wire n1952_o;
  wire [1:0] n1953_o;
  wire [15:0] n1954_o;
  wire n1955_o;
  wire [1:0] n1956_o;
  wire [15:0] n1957_o;
  wire n1958_o;
  wire [1:0] n1959_o;
  wire [15:0] n1960_o;
  wire n1961_o;
  wire [1:0] n1962_o;
  wire [15:0] n1963_o;
  wire n1964_o;
  wire [1:0] n1965_o;
  wire [15:0] n1966_o;
  wire n1967_o;
  wire [1:0] n1968_o;
  wire [15:0] n1969_o;
  wire n1970_o;
  wire [1:0] n1971_o;
  wire [15:0] n1972_o;
  wire n1973_o;
  wire n1974_o;
  wire [16:0] n1976_o;
  wire [16:0] n1977_o;
  wire n1978_o;
  wire [1:0] n1980_o;
  wire [1:0] n1981_o;
  wire [16:0] n1982_o;
  wire [16:0] n1983_o;
  wire n1984_o;
  wire [1:0] n1986_o;
  wire [1:0] n1987_o;
  wire [16:0] n1988_o;
  wire [16:0] n1989_o;
  wire n1990_o;
  wire [1:0] n1992_o;
  wire [1:0] n1993_o;
  wire [16:0] n1994_o;
  wire [16:0] n1995_o;
  wire n1996_o;
  wire [1:0] n1998_o;
  wire [1:0] n1999_o;
  wire [16:0] n2000_o;
  wire [16:0] n2001_o;
  wire n2002_o;
  wire [1:0] n2004_o;
  wire [1:0] n2005_o;
  wire [16:0] n2006_o;
  wire [16:0] n2007_o;
  wire n2008_o;
  wire [1:0] n2010_o;
  wire [1:0] n2011_o;
  wire [16:0] n2012_o;
  wire [16:0] n2013_o;
  wire n2014_o;
  wire [1:0] n2016_o;
  wire [1:0] n2017_o;
  wire [16:0] n2018_o;
  wire [16:0] n2019_o;
  wire n2020_o;
  wire [1:0] n2022_o;
  wire [1:0] n2023_o;
  wire [16:0] n2024_o;
  wire [16:0] n2025_o;
  wire n2026_o;
  wire [1:0] n2028_o;
  wire [1:0] n2029_o;
  wire [16:0] n2030_o;
  wire [16:0] n2031_o;
  wire n2032_o;
  wire [1:0] n2034_o;
  wire [1:0] n2035_o;
  wire [16:0] n2036_o;
  wire [16:0] n2037_o;
  wire n2038_o;
  wire [1:0] n2040_o;
  wire [1:0] n2041_o;
  wire [16:0] n2042_o;
  wire [16:0] n2043_o;
  wire n2044_o;
  wire [1:0] n2046_o;
  wire [1:0] n2047_o;
  wire [16:0] n2048_o;
  wire [16:0] n2049_o;
  wire n2050_o;
  wire [1:0] n2052_o;
  wire [1:0] n2053_o;
  wire [16:0] n2054_o;
  wire [16:0] n2055_o;
  wire n2056_o;
  wire [1:0] n2058_o;
  wire [1:0] n2059_o;
  wire [16:0] n2060_o;
  wire [16:0] n2061_o;
  wire n2062_o;
  wire [1:0] n2064_o;
  wire [1:0] n2065_o;
  wire [239:0] n2066_o;
  wire [239:0] n2067_o;
  wire [29:0] n2068_o;
  wire [29:0] n2069_o;
  wire [29:0] n2070_o;
  wire [14:0] n2071_o;
  wire [14:0] n2072_o;
  wire n2075_o;
  reg [254:0] end_of_window_logic_virt_win_end;
  reg [14:0] end_of_window_logic_carry;
  wire [15:0] n2081_o;
  wire [16:0] n2082_o;
  wire [16:0] n2084_o;
  wire n2085_o;
  wire [237:0] n2087_o;
  wire [254:0] n2088_o;
  wire n2089_o;
  wire n2090_o;
  wire [13:0] n2091_o;
  wire [14:0] n2092_o;
  wire n2093_o;
  wire [237:0] n2094_o;
  wire [254:0] n2095_o;
  wire [15:0] n2096_o;
  wire [16:0] n2097_o;
  wire [15:0] n2098_o;
  wire [16:0] n2099_o;
  wire [16:0] n2101_o;
  wire n2102_o;
  wire [220:0] n2104_o;
  wire [254:0] n2105_o;
  wire n2106_o;
  wire n2107_o;
  wire [12:0] n2108_o;
  wire [14:0] n2109_o;
  wire n2110_o;
  wire [220:0] n2111_o;
  wire [254:0] n2112_o;
  wire [15:0] n2113_o;
  wire [16:0] n2114_o;
  wire [15:0] n2115_o;
  wire [16:0] n2116_o;
  wire [16:0] n2118_o;
  wire n2119_o;
  wire [203:0] n2121_o;
  wire [254:0] n2122_o;
  wire n2123_o;
  wire n2124_o;
  wire [11:0] n2125_o;
  wire [14:0] n2126_o;
  wire n2127_o;
  wire [203:0] n2128_o;
  wire [254:0] n2129_o;
  wire [15:0] n2130_o;
  wire [16:0] n2131_o;
  wire [15:0] n2132_o;
  wire [16:0] n2133_o;
  wire [16:0] n2135_o;
  wire n2136_o;
  wire [186:0] n2138_o;
  wire [254:0] n2139_o;
  wire n2140_o;
  wire n2141_o;
  wire [10:0] n2142_o;
  wire [14:0] n2143_o;
  wire n2144_o;
  wire [186:0] n2145_o;
  wire [254:0] n2146_o;
  wire [15:0] n2147_o;
  wire [16:0] n2148_o;
  wire [15:0] n2149_o;
  wire [16:0] n2150_o;
  wire [16:0] n2152_o;
  wire n2153_o;
  wire [169:0] n2155_o;
  wire [254:0] n2156_o;
  wire n2157_o;
  wire n2158_o;
  wire [9:0] n2159_o;
  wire [14:0] n2160_o;
  wire n2161_o;
  wire [169:0] n2162_o;
  wire [254:0] n2163_o;
  wire [15:0] n2164_o;
  wire [16:0] n2165_o;
  wire [15:0] n2166_o;
  wire [16:0] n2167_o;
  wire [16:0] n2169_o;
  wire n2170_o;
  wire [152:0] n2172_o;
  wire [254:0] n2173_o;
  wire n2174_o;
  wire n2175_o;
  wire [8:0] n2176_o;
  wire [14:0] n2177_o;
  wire n2178_o;
  wire [152:0] n2179_o;
  wire [254:0] n2180_o;
  wire [15:0] n2181_o;
  wire [16:0] n2182_o;
  wire [15:0] n2183_o;
  wire [16:0] n2184_o;
  wire [16:0] n2186_o;
  wire n2187_o;
  wire [135:0] n2189_o;
  wire [254:0] n2190_o;
  wire n2191_o;
  wire n2192_o;
  wire [7:0] n2193_o;
  wire [14:0] n2194_o;
  wire n2195_o;
  wire [135:0] n2196_o;
  wire [254:0] n2197_o;
  wire [15:0] n2198_o;
  wire [16:0] n2199_o;
  wire [15:0] n2200_o;
  wire [16:0] n2201_o;
  wire [16:0] n2203_o;
  wire n2204_o;
  wire [118:0] n2206_o;
  wire [254:0] n2207_o;
  wire n2208_o;
  wire n2209_o;
  wire [6:0] n2210_o;
  wire [14:0] n2211_o;
  wire n2212_o;
  wire [118:0] n2213_o;
  wire [254:0] n2214_o;
  wire [15:0] n2215_o;
  wire [16:0] n2216_o;
  wire [15:0] n2217_o;
  wire [16:0] n2218_o;
  wire [16:0] n2220_o;
  wire n2221_o;
  wire [101:0] n2223_o;
  wire [254:0] n2224_o;
  wire n2225_o;
  wire n2226_o;
  wire [5:0] n2227_o;
  wire [14:0] n2228_o;
  wire n2229_o;
  wire [101:0] n2230_o;
  wire [254:0] n2231_o;
  wire [15:0] n2232_o;
  wire [16:0] n2233_o;
  wire [15:0] n2234_o;
  wire [16:0] n2235_o;
  wire [16:0] n2237_o;
  wire n2238_o;
  wire [84:0] n2240_o;
  wire [254:0] n2241_o;
  wire n2242_o;
  wire n2243_o;
  wire [4:0] n2244_o;
  wire [14:0] n2245_o;
  wire n2246_o;
  wire [84:0] n2247_o;
  wire [254:0] n2248_o;
  wire [15:0] n2249_o;
  wire [16:0] n2250_o;
  wire [15:0] n2251_o;
  wire [16:0] n2252_o;
  wire [16:0] n2254_o;
  wire n2255_o;
  wire [67:0] n2257_o;
  wire [254:0] n2258_o;
  wire n2259_o;
  wire n2260_o;
  wire [3:0] n2261_o;
  wire [14:0] n2262_o;
  wire n2263_o;
  wire [67:0] n2264_o;
  wire [254:0] n2265_o;
  wire [15:0] n2266_o;
  wire [16:0] n2267_o;
  wire [15:0] n2268_o;
  wire [16:0] n2269_o;
  wire [16:0] n2271_o;
  wire n2272_o;
  wire [50:0] n2274_o;
  wire [254:0] n2275_o;
  wire n2276_o;
  wire n2277_o;
  wire [2:0] n2278_o;
  wire [14:0] n2279_o;
  wire n2280_o;
  wire [50:0] n2281_o;
  wire [254:0] n2282_o;
  wire [15:0] n2283_o;
  wire [16:0] n2284_o;
  wire [15:0] n2285_o;
  wire [16:0] n2286_o;
  wire [16:0] n2288_o;
  wire n2289_o;
  wire [33:0] n2291_o;
  wire [254:0] n2292_o;
  wire n2293_o;
  wire n2294_o;
  wire [1:0] n2295_o;
  wire [14:0] n2296_o;
  wire n2297_o;
  wire [33:0] n2298_o;
  wire [254:0] n2299_o;
  wire [15:0] n2300_o;
  wire [16:0] n2301_o;
  wire [15:0] n2302_o;
  wire [16:0] n2303_o;
  wire [16:0] n2305_o;
  wire n2306_o;
  wire [16:0] n2308_o;
  wire [254:0] n2309_o;
  wire n2310_o;
  wire n2311_o;
  wire n2312_o;
  wire [14:0] n2313_o;
  wire n2314_o;
  wire [16:0] n2315_o;
  wire [254:0] n2316_o;
  wire [15:0] n2317_o;
  wire [16:0] n2318_o;
  wire [15:0] n2319_o;
  wire [16:0] n2320_o;
  wire [16:0] n2322_o;
  wire n2323_o;
  wire [254:0] n2325_o;
  wire n2326_o;
  wire n2327_o;
  wire [14:0] n2328_o;
  wire n2329_o;
  wire [254:0] n2330_o;
  wire [15:0] n2331_o;
  wire [16:0] n2332_o;
  wire [254:0] n2334_o;
  wire [14:0] n2335_o;
  reg [239:0] n2336_q;
  reg [29:0] n2337_q;
  wire [254:0] n2338_o;
  reg [14:0] n2339_q;
  reg n2340_q;
  assign spikes_o = spikes; //(module output)
  assign spikes_strb_o = spikes_strb; //(module output)
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:46:8  */
  assign timestamps = n2336_q; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:47:8  */
  assign next_timestamps = n2067_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:48:8  */
  assign spikes = n2337_q; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:49:8  */
  assign next_spikes = n2070_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:50:8  */
  assign win_end = n2338_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:51:8  */
  assign overflow_marker = n2339_q; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:52:8  */
  assign next_overflow_marker = n2072_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:53:8  */
  assign spikes_strb = n2340_q; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:54:8  */
  assign next_spikes_strb = n2075_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:83:5  */
  assign n1931_o = overflow_strb_i ? 15'b111111111111111 : overflow_marker;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:90:33  */
  assign n1932_o = spikes[1:0]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:91:41  */
  assign n1933_o = timestamps[15:0]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:92:51  */
  assign n1934_o = overflow_marker[0]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:90:33  */
  assign n1935_o = spikes[3:2]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:91:41  */
  assign n1936_o = timestamps[31:16]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:92:51  */
  assign n1937_o = overflow_marker[1]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:90:33  */
  assign n1938_o = spikes[5:4]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:91:41  */
  assign n1939_o = timestamps[47:32]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:92:51  */
  assign n1940_o = overflow_marker[2]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:90:33  */
  assign n1941_o = spikes[7:6]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:91:41  */
  assign n1942_o = timestamps[63:48]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:92:51  */
  assign n1943_o = overflow_marker[3]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:90:33  */
  assign n1944_o = spikes[9:8]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:91:41  */
  assign n1945_o = timestamps[79:64]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:92:51  */
  assign n1946_o = overflow_marker[4]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:90:33  */
  assign n1947_o = spikes[11:10]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:91:41  */
  assign n1948_o = timestamps[95:80]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:92:51  */
  assign n1949_o = overflow_marker[5]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:90:33  */
  assign n1950_o = spikes[13:12]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:91:41  */
  assign n1951_o = timestamps[111:96]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:92:51  */
  assign n1952_o = overflow_marker[6]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:90:33  */
  assign n1953_o = spikes[15:14]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:91:41  */
  assign n1954_o = timestamps[127:112]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:92:51  */
  assign n1955_o = overflow_marker[7]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:90:33  */
  assign n1956_o = spikes[17:16]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:91:41  */
  assign n1957_o = timestamps[143:128]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:92:51  */
  assign n1958_o = overflow_marker[8]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:90:33  */
  assign n1959_o = spikes[19:18]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:91:41  */
  assign n1960_o = timestamps[159:144]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:92:51  */
  assign n1961_o = overflow_marker[9]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:90:33  */
  assign n1962_o = spikes[21:20]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:91:41  */
  assign n1963_o = timestamps[175:160]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:92:51  */
  assign n1964_o = overflow_marker[10]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:90:33  */
  assign n1965_o = spikes[23:22]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:91:41  */
  assign n1966_o = timestamps[191:176]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:92:51  */
  assign n1967_o = overflow_marker[11]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:90:33  */
  assign n1968_o = spikes[25:24]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:91:41  */
  assign n1969_o = timestamps[207:192]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:92:51  */
  assign n1970_o = overflow_marker[12]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:90:33  */
  assign n1971_o = spikes[27:26]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:91:41  */
  assign n1972_o = timestamps[223:208]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:92:51  */
  assign n1973_o = overflow_marker[13]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:96:28  */
  assign n1974_o = ~spike_i;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:34  */
  assign n1976_o = win_end[16:0]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:24  */
  assign n1977_o = {1'b0, curr_time_i};  //  uext
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:24  */
  assign n1978_o = $unsigned(n1977_o) >= $unsigned(n1976_o);
  assign n1980_o = spikes[1:0]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:9  */
  assign n1981_o = n1978_o ? 2'b00 : n1980_o;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:34  */
  assign n1982_o = win_end[33:17]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:24  */
  assign n1983_o = {1'b0, curr_time_i};  //  uext
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:24  */
  assign n1984_o = $unsigned(n1983_o) >= $unsigned(n1982_o);
  assign n1986_o = spikes[3:2]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:9  */
  assign n1987_o = n1984_o ? 2'b00 : n1986_o;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:34  */
  assign n1988_o = win_end[50:34]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:24  */
  assign n1989_o = {1'b0, curr_time_i};  //  uext
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:24  */
  assign n1990_o = $unsigned(n1989_o) >= $unsigned(n1988_o);
  assign n1992_o = spikes[5:4]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:9  */
  assign n1993_o = n1990_o ? 2'b00 : n1992_o;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:34  */
  assign n1994_o = win_end[67:51]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:24  */
  assign n1995_o = {1'b0, curr_time_i};  //  uext
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:24  */
  assign n1996_o = $unsigned(n1995_o) >= $unsigned(n1994_o);
  assign n1998_o = spikes[7:6]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:9  */
  assign n1999_o = n1996_o ? 2'b00 : n1998_o;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:34  */
  assign n2000_o = win_end[84:68]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:24  */
  assign n2001_o = {1'b0, curr_time_i};  //  uext
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:24  */
  assign n2002_o = $unsigned(n2001_o) >= $unsigned(n2000_o);
  assign n2004_o = spikes[9:8]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:9  */
  assign n2005_o = n2002_o ? 2'b00 : n2004_o;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:34  */
  assign n2006_o = win_end[101:85]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:24  */
  assign n2007_o = {1'b0, curr_time_i};  //  uext
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:24  */
  assign n2008_o = $unsigned(n2007_o) >= $unsigned(n2006_o);
  assign n2010_o = spikes[11:10]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:9  */
  assign n2011_o = n2008_o ? 2'b00 : n2010_o;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:34  */
  assign n2012_o = win_end[118:102]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:24  */
  assign n2013_o = {1'b0, curr_time_i};  //  uext
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:24  */
  assign n2014_o = $unsigned(n2013_o) >= $unsigned(n2012_o);
  assign n2016_o = spikes[13:12]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:9  */
  assign n2017_o = n2014_o ? 2'b00 : n2016_o;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:34  */
  assign n2018_o = win_end[135:119]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:24  */
  assign n2019_o = {1'b0, curr_time_i};  //  uext
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:24  */
  assign n2020_o = $unsigned(n2019_o) >= $unsigned(n2018_o);
  assign n2022_o = spikes[15:14]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:9  */
  assign n2023_o = n2020_o ? 2'b00 : n2022_o;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:34  */
  assign n2024_o = win_end[152:136]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:24  */
  assign n2025_o = {1'b0, curr_time_i};  //  uext
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:24  */
  assign n2026_o = $unsigned(n2025_o) >= $unsigned(n2024_o);
  assign n2028_o = spikes[17:16]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:9  */
  assign n2029_o = n2026_o ? 2'b00 : n2028_o;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:34  */
  assign n2030_o = win_end[169:153]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:24  */
  assign n2031_o = {1'b0, curr_time_i};  //  uext
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:24  */
  assign n2032_o = $unsigned(n2031_o) >= $unsigned(n2030_o);
  assign n2034_o = spikes[19:18]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:9  */
  assign n2035_o = n2032_o ? 2'b00 : n2034_o;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:34  */
  assign n2036_o = win_end[186:170]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:24  */
  assign n2037_o = {1'b0, curr_time_i};  //  uext
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:24  */
  assign n2038_o = $unsigned(n2037_o) >= $unsigned(n2036_o);
  assign n2040_o = spikes[21:20]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:9  */
  assign n2041_o = n2038_o ? 2'b00 : n2040_o;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:34  */
  assign n2042_o = win_end[203:187]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:24  */
  assign n2043_o = {1'b0, curr_time_i};  //  uext
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:24  */
  assign n2044_o = $unsigned(n2043_o) >= $unsigned(n2042_o);
  assign n2046_o = spikes[23:22]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:9  */
  assign n2047_o = n2044_o ? 2'b00 : n2046_o;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:34  */
  assign n2048_o = win_end[220:204]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:24  */
  assign n2049_o = {1'b0, curr_time_i};  //  uext
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:24  */
  assign n2050_o = $unsigned(n2049_o) >= $unsigned(n2048_o);
  assign n2052_o = spikes[25:24]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:9  */
  assign n2053_o = n2050_o ? 2'b00 : n2052_o;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:34  */
  assign n2054_o = win_end[237:221]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:24  */
  assign n2055_o = {1'b0, curr_time_i};  //  uext
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:24  */
  assign n2056_o = $unsigned(n2055_o) >= $unsigned(n2054_o);
  assign n2058_o = spikes[27:26]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:9  */
  assign n2059_o = n2056_o ? 2'b00 : n2058_o;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:34  */
  assign n2060_o = win_end[254:238]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:24  */
  assign n2061_o = {1'b0, curr_time_i};  //  uext
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:24  */
  assign n2062_o = $unsigned(n2061_o) >= $unsigned(n2060_o);
  assign n2064_o = spikes[29:28]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:9  */
  assign n2065_o = n2062_o ? 2'b00 : n2064_o;
  assign n2066_o = {n1972_o, n1969_o, n1966_o, n1963_o, n1960_o, n1957_o, n1954_o, n1951_o, n1948_o, n1945_o, n1942_o, n1939_o, n1936_o, n1933_o, curr_time_i};
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:87:5  */
  assign n2067_o = spike_strb_i ? n2066_o : timestamps;
  assign n2068_o = {n2065_o, n2059_o, n2053_o, n2047_o, n2041_o, n2035_o, n2029_o, n2023_o, n2017_o, n2011_o, n2005_o, n1999_o, n1993_o, n1987_o, n1981_o};
  assign n2069_o = {n1971_o, n1968_o, n1965_o, n1962_o, n1959_o, n1956_o, n1953_o, n1950_o, n1947_o, n1944_o, n1941_o, n1938_o, n1935_o, n1932_o, n1974_o, spike_i};
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:87:5  */
  assign n2070_o = spike_strb_i ? n2069_o : n2068_o;
  assign n2071_o = {n1973_o, n1970_o, n1967_o, n1964_o, n1961_o, n1958_o, n1955_o, n1952_o, n1949_o, n1946_o, n1943_o, n1940_o, n1937_o, n1934_o, 1'b0};
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:87:5  */
  assign n2072_o = spike_strb_i ? n2071_o : n1931_o;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:87:5  */
  assign n2075_o = spike_strb_i ? 1'b1 : 1'b0;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:113:12  */
  always @*
    end_of_window_logic_virt_win_end = n2334_o; // (isignal)
  initial
    end_of_window_logic_virt_win_end = 255'bX;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:114:12  */
  always @*
    end_of_window_logic_carry = n2335_o; // (isignal)
  initial
    end_of_window_logic_carry = 15'bX;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:117:50  */
  assign n2081_o = timestamps[15:0]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:117:33  */
  assign n2082_o = {1'b0, n2081_o};  //  uext
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:117:65  */
  assign n2084_o = n2082_o + 17'b01001110001000000;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:118:25  */
  assign n2085_o = overflow_marker[0]; // extract
  assign n2087_o = end_of_window_logic_virt_win_end[254:17]; // extract
  assign n2088_o = {n2087_o, n2084_o};
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:121:36  */
  assign n2089_o = n2088_o[16]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:118:7  */
  assign n2090_o = n2085_o ? 1'b0 : n2089_o;
  assign n2091_o = end_of_window_logic_carry[13:0]; // extract
  assign n2092_o = {n2090_o, n2091_o};
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:123:35  */
  assign n2093_o = n2092_o[14]; // extract
  assign n2094_o = end_of_window_logic_virt_win_end[254:17]; // extract
  assign n2095_o = {n2094_o, n2084_o};
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:123:74  */
  assign n2096_o = n2095_o[15:0]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:123:39  */
  assign n2097_o = {n2093_o, n2096_o};
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:117:50  */
  assign n2098_o = timestamps[31:16]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:117:33  */
  assign n2099_o = {1'b0, n2098_o};  //  uext
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:117:65  */
  assign n2101_o = n2099_o + 17'b01001110001000000;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:118:25  */
  assign n2102_o = overflow_marker[1]; // extract
  assign n2104_o = end_of_window_logic_virt_win_end[254:34]; // extract
  assign n2105_o = {n2104_o, n2101_o, n2084_o};
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:121:36  */
  assign n2106_o = n2105_o[33]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:118:7  */
  assign n2107_o = n2102_o ? 1'b0 : n2106_o;
  assign n2108_o = end_of_window_logic_carry[12:0]; // extract
  assign n2109_o = {n2090_o, n2107_o, n2108_o};
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:123:35  */
  assign n2110_o = n2109_o[13]; // extract
  assign n2111_o = end_of_window_logic_virt_win_end[254:34]; // extract
  assign n2112_o = {n2111_o, n2101_o, n2084_o};
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:123:74  */
  assign n2113_o = n2112_o[32:17]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:123:39  */
  assign n2114_o = {n2110_o, n2113_o};
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:117:50  */
  assign n2115_o = timestamps[47:32]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:117:33  */
  assign n2116_o = {1'b0, n2115_o};  //  uext
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:117:65  */
  assign n2118_o = n2116_o + 17'b01001110001000000;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:118:25  */
  assign n2119_o = overflow_marker[2]; // extract
  assign n2121_o = end_of_window_logic_virt_win_end[254:51]; // extract
  assign n2122_o = {n2121_o, n2118_o, n2101_o, n2084_o};
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:121:36  */
  assign n2123_o = n2122_o[50]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:118:7  */
  assign n2124_o = n2119_o ? 1'b0 : n2123_o;
  assign n2125_o = end_of_window_logic_carry[11:0]; // extract
  assign n2126_o = {n2090_o, n2107_o, n2124_o, n2125_o};
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:123:35  */
  assign n2127_o = n2126_o[12]; // extract
  assign n2128_o = end_of_window_logic_virt_win_end[254:51]; // extract
  assign n2129_o = {n2128_o, n2118_o, n2101_o, n2084_o};
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:123:74  */
  assign n2130_o = n2129_o[49:34]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:123:39  */
  assign n2131_o = {n2127_o, n2130_o};
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:117:50  */
  assign n2132_o = timestamps[63:48]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:117:33  */
  assign n2133_o = {1'b0, n2132_o};  //  uext
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:117:65  */
  assign n2135_o = n2133_o + 17'b01001110001000000;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:118:25  */
  assign n2136_o = overflow_marker[3]; // extract
  assign n2138_o = end_of_window_logic_virt_win_end[254:68]; // extract
  assign n2139_o = {n2138_o, n2135_o, n2118_o, n2101_o, n2084_o};
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:121:36  */
  assign n2140_o = n2139_o[67]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:118:7  */
  assign n2141_o = n2136_o ? 1'b0 : n2140_o;
  assign n2142_o = end_of_window_logic_carry[10:0]; // extract
  assign n2143_o = {n2090_o, n2107_o, n2124_o, n2141_o, n2142_o};
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:123:35  */
  assign n2144_o = n2143_o[11]; // extract
  assign n2145_o = end_of_window_logic_virt_win_end[254:68]; // extract
  assign n2146_o = {n2145_o, n2135_o, n2118_o, n2101_o, n2084_o};
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:123:74  */
  assign n2147_o = n2146_o[66:51]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:123:39  */
  assign n2148_o = {n2144_o, n2147_o};
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:117:50  */
  assign n2149_o = timestamps[79:64]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:117:33  */
  assign n2150_o = {1'b0, n2149_o};  //  uext
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:117:65  */
  assign n2152_o = n2150_o + 17'b01001110001000000;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:118:25  */
  assign n2153_o = overflow_marker[4]; // extract
  assign n2155_o = end_of_window_logic_virt_win_end[254:85]; // extract
  assign n2156_o = {n2155_o, n2152_o, n2135_o, n2118_o, n2101_o, n2084_o};
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:121:36  */
  assign n2157_o = n2156_o[84]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:118:7  */
  assign n2158_o = n2153_o ? 1'b0 : n2157_o;
  assign n2159_o = end_of_window_logic_carry[9:0]; // extract
  assign n2160_o = {n2090_o, n2107_o, n2124_o, n2141_o, n2158_o, n2159_o};
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:123:35  */
  assign n2161_o = n2160_o[10]; // extract
  assign n2162_o = end_of_window_logic_virt_win_end[254:85]; // extract
  assign n2163_o = {n2162_o, n2152_o, n2135_o, n2118_o, n2101_o, n2084_o};
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:123:74  */
  assign n2164_o = n2163_o[83:68]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:123:39  */
  assign n2165_o = {n2161_o, n2164_o};
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:117:50  */
  assign n2166_o = timestamps[95:80]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:117:33  */
  assign n2167_o = {1'b0, n2166_o};  //  uext
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:117:65  */
  assign n2169_o = n2167_o + 17'b01001110001000000;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:118:25  */
  assign n2170_o = overflow_marker[5]; // extract
  assign n2172_o = end_of_window_logic_virt_win_end[254:102]; // extract
  assign n2173_o = {n2172_o, n2169_o, n2152_o, n2135_o, n2118_o, n2101_o, n2084_o};
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:121:36  */
  assign n2174_o = n2173_o[101]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:118:7  */
  assign n2175_o = n2170_o ? 1'b0 : n2174_o;
  assign n2176_o = end_of_window_logic_carry[8:0]; // extract
  assign n2177_o = {n2090_o, n2107_o, n2124_o, n2141_o, n2158_o, n2175_o, n2176_o};
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:123:35  */
  assign n2178_o = n2177_o[9]; // extract
  assign n2179_o = end_of_window_logic_virt_win_end[254:102]; // extract
  assign n2180_o = {n2179_o, n2169_o, n2152_o, n2135_o, n2118_o, n2101_o, n2084_o};
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:123:74  */
  assign n2181_o = n2180_o[100:85]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:123:39  */
  assign n2182_o = {n2178_o, n2181_o};
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:117:50  */
  assign n2183_o = timestamps[111:96]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:117:33  */
  assign n2184_o = {1'b0, n2183_o};  //  uext
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:117:65  */
  assign n2186_o = n2184_o + 17'b01001110001000000;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:118:25  */
  assign n2187_o = overflow_marker[6]; // extract
  assign n2189_o = end_of_window_logic_virt_win_end[254:119]; // extract
  assign n2190_o = {n2189_o, n2186_o, n2169_o, n2152_o, n2135_o, n2118_o, n2101_o, n2084_o};
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:121:36  */
  assign n2191_o = n2190_o[118]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:118:7  */
  assign n2192_o = n2187_o ? 1'b0 : n2191_o;
  assign n2193_o = end_of_window_logic_carry[7:0]; // extract
  assign n2194_o = {n2090_o, n2107_o, n2124_o, n2141_o, n2158_o, n2175_o, n2192_o, n2193_o};
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:123:35  */
  assign n2195_o = n2194_o[8]; // extract
  assign n2196_o = end_of_window_logic_virt_win_end[254:119]; // extract
  assign n2197_o = {n2196_o, n2186_o, n2169_o, n2152_o, n2135_o, n2118_o, n2101_o, n2084_o};
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:123:74  */
  assign n2198_o = n2197_o[117:102]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:123:39  */
  assign n2199_o = {n2195_o, n2198_o};
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:117:50  */
  assign n2200_o = timestamps[127:112]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:117:33  */
  assign n2201_o = {1'b0, n2200_o};  //  uext
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:117:65  */
  assign n2203_o = n2201_o + 17'b01001110001000000;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:118:25  */
  assign n2204_o = overflow_marker[7]; // extract
  assign n2206_o = end_of_window_logic_virt_win_end[254:136]; // extract
  assign n2207_o = {n2206_o, n2203_o, n2186_o, n2169_o, n2152_o, n2135_o, n2118_o, n2101_o, n2084_o};
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:121:36  */
  assign n2208_o = n2207_o[135]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:118:7  */
  assign n2209_o = n2204_o ? 1'b0 : n2208_o;
  assign n2210_o = end_of_window_logic_carry[6:0]; // extract
  assign n2211_o = {n2090_o, n2107_o, n2124_o, n2141_o, n2158_o, n2175_o, n2192_o, n2209_o, n2210_o};
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:123:35  */
  assign n2212_o = n2211_o[7]; // extract
  assign n2213_o = end_of_window_logic_virt_win_end[254:136]; // extract
  assign n2214_o = {n2213_o, n2203_o, n2186_o, n2169_o, n2152_o, n2135_o, n2118_o, n2101_o, n2084_o};
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:123:74  */
  assign n2215_o = n2214_o[134:119]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:123:39  */
  assign n2216_o = {n2212_o, n2215_o};
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:117:50  */
  assign n2217_o = timestamps[143:128]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:117:33  */
  assign n2218_o = {1'b0, n2217_o};  //  uext
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:117:65  */
  assign n2220_o = n2218_o + 17'b01001110001000000;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:118:25  */
  assign n2221_o = overflow_marker[8]; // extract
  assign n2223_o = end_of_window_logic_virt_win_end[254:153]; // extract
  assign n2224_o = {n2223_o, n2220_o, n2203_o, n2186_o, n2169_o, n2152_o, n2135_o, n2118_o, n2101_o, n2084_o};
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:121:36  */
  assign n2225_o = n2224_o[152]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:118:7  */
  assign n2226_o = n2221_o ? 1'b0 : n2225_o;
  assign n2227_o = end_of_window_logic_carry[5:0]; // extract
  assign n2228_o = {n2090_o, n2107_o, n2124_o, n2141_o, n2158_o, n2175_o, n2192_o, n2209_o, n2226_o, n2227_o};
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:123:35  */
  assign n2229_o = n2228_o[6]; // extract
  assign n2230_o = end_of_window_logic_virt_win_end[254:153]; // extract
  assign n2231_o = {n2230_o, n2220_o, n2203_o, n2186_o, n2169_o, n2152_o, n2135_o, n2118_o, n2101_o, n2084_o};
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:123:74  */
  assign n2232_o = n2231_o[151:136]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:123:39  */
  assign n2233_o = {n2229_o, n2232_o};
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:117:50  */
  assign n2234_o = timestamps[159:144]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:117:33  */
  assign n2235_o = {1'b0, n2234_o};  //  uext
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:117:65  */
  assign n2237_o = n2235_o + 17'b01001110001000000;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:118:25  */
  assign n2238_o = overflow_marker[9]; // extract
  assign n2240_o = end_of_window_logic_virt_win_end[254:170]; // extract
  assign n2241_o = {n2240_o, n2237_o, n2220_o, n2203_o, n2186_o, n2169_o, n2152_o, n2135_o, n2118_o, n2101_o, n2084_o};
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:121:36  */
  assign n2242_o = n2241_o[169]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:118:7  */
  assign n2243_o = n2238_o ? 1'b0 : n2242_o;
  assign n2244_o = end_of_window_logic_carry[4:0]; // extract
  assign n2245_o = {n2090_o, n2107_o, n2124_o, n2141_o, n2158_o, n2175_o, n2192_o, n2209_o, n2226_o, n2243_o, n2244_o};
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:123:35  */
  assign n2246_o = n2245_o[5]; // extract
  assign n2247_o = end_of_window_logic_virt_win_end[254:170]; // extract
  assign n2248_o = {n2247_o, n2237_o, n2220_o, n2203_o, n2186_o, n2169_o, n2152_o, n2135_o, n2118_o, n2101_o, n2084_o};
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:123:74  */
  assign n2249_o = n2248_o[168:153]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:123:39  */
  assign n2250_o = {n2246_o, n2249_o};
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:117:50  */
  assign n2251_o = timestamps[175:160]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:117:33  */
  assign n2252_o = {1'b0, n2251_o};  //  uext
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:117:65  */
  assign n2254_o = n2252_o + 17'b01001110001000000;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:118:25  */
  assign n2255_o = overflow_marker[10]; // extract
  assign n2257_o = end_of_window_logic_virt_win_end[254:187]; // extract
  assign n2258_o = {n2257_o, n2254_o, n2237_o, n2220_o, n2203_o, n2186_o, n2169_o, n2152_o, n2135_o, n2118_o, n2101_o, n2084_o};
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:121:36  */
  assign n2259_o = n2258_o[186]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:118:7  */
  assign n2260_o = n2255_o ? 1'b0 : n2259_o;
  assign n2261_o = end_of_window_logic_carry[3:0]; // extract
  assign n2262_o = {n2090_o, n2107_o, n2124_o, n2141_o, n2158_o, n2175_o, n2192_o, n2209_o, n2226_o, n2243_o, n2260_o, n2261_o};
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:123:35  */
  assign n2263_o = n2262_o[4]; // extract
  assign n2264_o = end_of_window_logic_virt_win_end[254:187]; // extract
  assign n2265_o = {n2264_o, n2254_o, n2237_o, n2220_o, n2203_o, n2186_o, n2169_o, n2152_o, n2135_o, n2118_o, n2101_o, n2084_o};
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:123:74  */
  assign n2266_o = n2265_o[185:170]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:123:39  */
  assign n2267_o = {n2263_o, n2266_o};
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:117:50  */
  assign n2268_o = timestamps[191:176]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:117:33  */
  assign n2269_o = {1'b0, n2268_o};  //  uext
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:117:65  */
  assign n2271_o = n2269_o + 17'b01001110001000000;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:118:25  */
  assign n2272_o = overflow_marker[11]; // extract
  assign n2274_o = end_of_window_logic_virt_win_end[254:204]; // extract
  assign n2275_o = {n2274_o, n2271_o, n2254_o, n2237_o, n2220_o, n2203_o, n2186_o, n2169_o, n2152_o, n2135_o, n2118_o, n2101_o, n2084_o};
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:121:36  */
  assign n2276_o = n2275_o[203]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:118:7  */
  assign n2277_o = n2272_o ? 1'b0 : n2276_o;
  assign n2278_o = end_of_window_logic_carry[2:0]; // extract
  assign n2279_o = {n2090_o, n2107_o, n2124_o, n2141_o, n2158_o, n2175_o, n2192_o, n2209_o, n2226_o, n2243_o, n2260_o, n2277_o, n2278_o};
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:123:35  */
  assign n2280_o = n2279_o[3]; // extract
  assign n2281_o = end_of_window_logic_virt_win_end[254:204]; // extract
  assign n2282_o = {n2281_o, n2271_o, n2254_o, n2237_o, n2220_o, n2203_o, n2186_o, n2169_o, n2152_o, n2135_o, n2118_o, n2101_o, n2084_o};
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:123:74  */
  assign n2283_o = n2282_o[202:187]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:123:39  */
  assign n2284_o = {n2280_o, n2283_o};
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:117:50  */
  assign n2285_o = timestamps[207:192]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:117:33  */
  assign n2286_o = {1'b0, n2285_o};  //  uext
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:117:65  */
  assign n2288_o = n2286_o + 17'b01001110001000000;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:118:25  */
  assign n2289_o = overflow_marker[12]; // extract
  assign n2291_o = end_of_window_logic_virt_win_end[254:221]; // extract
  assign n2292_o = {n2291_o, n2288_o, n2271_o, n2254_o, n2237_o, n2220_o, n2203_o, n2186_o, n2169_o, n2152_o, n2135_o, n2118_o, n2101_o, n2084_o};
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:121:36  */
  assign n2293_o = n2292_o[220]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:118:7  */
  assign n2294_o = n2289_o ? 1'b0 : n2293_o;
  assign n2295_o = end_of_window_logic_carry[1:0]; // extract
  assign n2296_o = {n2090_o, n2107_o, n2124_o, n2141_o, n2158_o, n2175_o, n2192_o, n2209_o, n2226_o, n2243_o, n2260_o, n2277_o, n2294_o, n2295_o};
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:123:35  */
  assign n2297_o = n2296_o[2]; // extract
  assign n2298_o = end_of_window_logic_virt_win_end[254:221]; // extract
  assign n2299_o = {n2298_o, n2288_o, n2271_o, n2254_o, n2237_o, n2220_o, n2203_o, n2186_o, n2169_o, n2152_o, n2135_o, n2118_o, n2101_o, n2084_o};
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:123:74  */
  assign n2300_o = n2299_o[219:204]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:123:39  */
  assign n2301_o = {n2297_o, n2300_o};
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:117:50  */
  assign n2302_o = timestamps[223:208]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:117:33  */
  assign n2303_o = {1'b0, n2302_o};  //  uext
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:117:65  */
  assign n2305_o = n2303_o + 17'b01001110001000000;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:118:25  */
  assign n2306_o = overflow_marker[13]; // extract
  assign n2308_o = end_of_window_logic_virt_win_end[254:238]; // extract
  assign n2309_o = {n2308_o, n2305_o, n2288_o, n2271_o, n2254_o, n2237_o, n2220_o, n2203_o, n2186_o, n2169_o, n2152_o, n2135_o, n2118_o, n2101_o, n2084_o};
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:121:36  */
  assign n2310_o = n2309_o[237]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:118:7  */
  assign n2311_o = n2306_o ? 1'b0 : n2310_o;
  assign n2312_o = end_of_window_logic_carry[0]; // extract
  assign n2313_o = {n2090_o, n2107_o, n2124_o, n2141_o, n2158_o, n2175_o, n2192_o, n2209_o, n2226_o, n2243_o, n2260_o, n2277_o, n2294_o, n2311_o, n2312_o};
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:123:35  */
  assign n2314_o = n2313_o[1]; // extract
  assign n2315_o = end_of_window_logic_virt_win_end[254:238]; // extract
  assign n2316_o = {n2315_o, n2305_o, n2288_o, n2271_o, n2254_o, n2237_o, n2220_o, n2203_o, n2186_o, n2169_o, n2152_o, n2135_o, n2118_o, n2101_o, n2084_o};
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:123:74  */
  assign n2317_o = n2316_o[236:221]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:123:39  */
  assign n2318_o = {n2314_o, n2317_o};
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:117:50  */
  assign n2319_o = timestamps[239:224]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:117:33  */
  assign n2320_o = {1'b0, n2319_o};  //  uext
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:117:65  */
  assign n2322_o = n2320_o + 17'b01001110001000000;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:118:25  */
  assign n2323_o = overflow_marker[14]; // extract
  assign n2325_o = {n2322_o, n2305_o, n2288_o, n2271_o, n2254_o, n2237_o, n2220_o, n2203_o, n2186_o, n2169_o, n2152_o, n2135_o, n2118_o, n2101_o, n2084_o};
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:121:36  */
  assign n2326_o = n2325_o[254]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:118:7  */
  assign n2327_o = n2323_o ? 1'b0 : n2326_o;
  assign n2328_o = {n2090_o, n2107_o, n2124_o, n2141_o, n2158_o, n2175_o, n2192_o, n2209_o, n2226_o, n2243_o, n2260_o, n2277_o, n2294_o, n2311_o, n2327_o};
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:123:35  */
  assign n2329_o = n2328_o[0]; // extract
  assign n2330_o = {n2322_o, n2305_o, n2288_o, n2271_o, n2254_o, n2237_o, n2220_o, n2203_o, n2186_o, n2169_o, n2152_o, n2135_o, n2118_o, n2101_o, n2084_o};
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:123:74  */
  assign n2331_o = n2330_o[253:238]; // extract
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:123:39  */
  assign n2332_o = {n2329_o, n2331_o};
  assign n2334_o = {n2322_o, n2305_o, n2288_o, n2271_o, n2254_o, n2237_o, n2220_o, n2203_o, n2186_o, n2169_o, n2152_o, n2135_o, n2118_o, n2101_o, n2084_o};
  assign n2335_o = {n2090_o, n2107_o, n2124_o, n2141_o, n2158_o, n2175_o, n2192_o, n2209_o, n2226_o, n2243_o, n2260_o, n2277_o, n2294_o, n2311_o, n2327_o};
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:65:5  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n2336_q <= 240'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    else
      n2336_q <= next_timestamps;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:65:5  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n2337_q <= 30'b000000000000000000000000000000;
    else
      n2337_q <= next_spikes;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:60:5  */
  assign n2338_o = {n2332_o, n2318_o, n2301_o, n2284_o, n2267_o, n2250_o, n2233_o, n2216_o, n2199_o, n2182_o, n2165_o, n2148_o, n2131_o, n2114_o, n2097_o};
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:65:5  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n2339_q <= 15'b000000000000000;
    else
      n2339_q <= next_overflow_marker;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:65:5  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n2340_q <= 1'b0;
    else
      n2340_q <= next_spikes_strb;
endmodule

module uart_10_8
  (input  clock_i,
   input  reset_i,
   input  [9:0] baudrate_adj_i,
   input  tx_start_strb_i,
   input  [7:0] tx_data_i,
   input  rx_i,
   output tx_strb_o,
   output tx_o,
   output rx_data_strb_o,
   output [7:0] rx_data_o);
  wire uart_tx_0_tx_strb_o;
  wire uart_tx_0_tx_o;
  wire [7:0] uart_rx_0_data_o;
  wire uart_rx_0_data_valid_strb_o;
  assign tx_strb_o = uart_tx_0_tx_strb_o; //(module output)
  assign tx_o = uart_tx_0_tx_o; //(module output)
  assign rx_data_strb_o = uart_rx_0_data_valid_strb_o; //(module output)
  assign rx_data_o = uart_rx_0_data_o; //(module output)
  /* ../../../vhdl/floating_window/tbs_core/uart/rtl/uart_ea.vhd:45:9  */
  uart_tx_10_8 uart_tx_0 (
    .clock_i(clock_i),
    .reset_i(reset_i),
    .baudrate_adj_i(baudrate_adj_i),
    .tx_start_strb_i(tx_start_strb_i),
    .data_i(tx_data_i),
    .tx_strb_o(uart_tx_0_tx_strb_o),
    .tx_o(uart_tx_0_tx_o));
  /* ../../../vhdl/floating_window/tbs_core/uart/rtl/uart_ea.vhd:63:3  */
  uart_rx_10_8 uart_rx_0 (
    .clock_i(clock_i),
    .reset_i(reset_i),
    .baudrate_adj_i(baudrate_adj_i),
    .rx_i(rx_i),
    .data_o(uart_rx_0_data_o),
    .data_valid_strb_o(uart_rx_0_data_valid_strb_o));
endmodule

module memory2uart_17_8
  (input  clock_i,
   input  reset_i,
   input  read_strb_i,
   input  tx_strb_i,
   input  [16:0] memory_data_i,
   output [7:0] uart_data_o,
   output tx_start_strb_o);
  wire [23:0] shift_reg_out;
  wire [23:0] next_shift_reg_out;
  wire tx_start_strb;
  wire next_tx_start_strb;
  wire [1:0] counter;
  wire [1:0] next_counter;
  wire [23:0] data;
  wire [23:0] n1850_o;
  wire [7:0] n1865_o;
  wire [7:0] n1866_o;
  wire [7:0] n1867_o;
  wire n1869_o;
  wire n1870_o;
  wire [15:0] n1871_o;
  wire [15:0] n1872_o;
  wire [15:0] n1873_o;
  wire n1876_o;
  wire [23:0] n1877_o;
  wire [15:0] n1878_o;
  wire [15:0] n1879_o;
  wire [7:0] n1880_o;
  wire [7:0] n1881_o;
  wire [7:0] n1882_o;
  wire n1885_o;
  wire n1892_o;
  wire [1:0] n1894_o;
  wire [1:0] n1896_o;
  wire [1:0] n1897_o;
  wire [7:0] n1899_o;
  reg [23:0] n1900_q;
  wire [23:0] n1901_o;
  reg n1902_q;
  reg [1:0] n1903_q;
  assign uart_data_o = n1899_o; //(module output)
  assign tx_start_strb_o = tx_start_strb; //(module output)
  /* ../../../vhdl/floating_window/tbs_core/memory2uart/rtl/memory2uart_ea.vhd:46:8  */
  assign shift_reg_out = n1900_q; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/memory2uart/rtl/memory2uart_ea.vhd:47:8  */
  assign next_shift_reg_out = n1901_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/memory2uart/rtl/memory2uart_ea.vhd:48:8  */
  assign tx_start_strb = n1902_q; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/memory2uart/rtl/memory2uart_ea.vhd:49:8  */
  assign next_tx_start_strb = n1885_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/memory2uart/rtl/memory2uart_ea.vhd:50:8  */
  assign counter = n1903_q; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/memory2uart/rtl/memory2uart_ea.vhd:51:8  */
  assign next_counter = n1897_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/memory2uart/rtl/memory2uart_ea.vhd:52:8  */
  assign data = n1850_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/memory2uart/rtl/memory2uart_ea.vhd:57:29  */
  assign n1850_o = {{7{memory_data_i[16]}}, memory_data_i}; // sext
  /* ../../../vhdl/floating_window/tbs_core/memory2uart/rtl/memory2uart_ea.vhd:87:38  */
  assign n1865_o = data[7:0]; // extract
  /* ../../../vhdl/floating_window/tbs_core/memory2uart/rtl/memory2uart_ea.vhd:87:38  */
  assign n1866_o = data[15:8]; // extract
  /* ../../../vhdl/floating_window/tbs_core/memory2uart/rtl/memory2uart_ea.vhd:87:38  */
  assign n1867_o = data[23:16]; // extract
  /* ../../../vhdl/floating_window/tbs_core/memory2uart/rtl/memory2uart_ea.vhd:90:51  */
  assign n1869_o = $unsigned(counter) < $unsigned(2'b10);
  /* ../../../vhdl/floating_window/tbs_core/memory2uart/rtl/memory2uart_ea.vhd:90:39  */
  assign n1870_o = n1869_o & tx_strb_i;
  /* ../../../vhdl/floating_window/tbs_core/memory2uart/rtl/memory2uart_ea.vhd:91:76  */
  assign n1871_o = shift_reg_out[23:8]; // extract
  assign n1872_o = shift_reg_out[15:0]; // extract
  /* ../../../vhdl/floating_window/tbs_core/memory2uart/rtl/memory2uart_ea.vhd:90:17  */
  assign n1873_o = n1870_o ? n1871_o : n1872_o;
  /* ../../../vhdl/floating_window/tbs_core/memory2uart/rtl/memory2uart_ea.vhd:90:17  */
  assign n1876_o = n1870_o ? 1'b1 : 1'b0;
  assign n1877_o = {n1865_o, n1866_o, n1867_o};
  assign n1878_o = n1877_o[15:0]; // extract
  /* ../../../vhdl/floating_window/tbs_core/memory2uart/rtl/memory2uart_ea.vhd:82:5  */
  assign n1879_o = read_strb_i ? n1878_o : n1873_o;
  assign n1880_o = n1877_o[23:16]; // extract
  assign n1881_o = shift_reg_out[23:16]; // extract
  /* ../../../vhdl/floating_window/tbs_core/memory2uart/rtl/memory2uart_ea.vhd:82:5  */
  assign n1882_o = read_strb_i ? n1880_o : n1881_o;
  /* ../../../vhdl/floating_window/tbs_core/memory2uart/rtl/memory2uart_ea.vhd:82:5  */
  assign n1885_o = read_strb_i ? 1'b1 : n1876_o;
  /* ../../../vhdl/floating_window/tbs_core/memory2uart/rtl/memory2uart_ea.vhd:103:18  */
  assign n1892_o = counter == 2'b10;
  /* ../../../vhdl/floating_window/tbs_core/memory2uart/rtl/memory2uart_ea.vhd:106:33  */
  assign n1894_o = counter + 2'b01;
  /* ../../../vhdl/floating_window/tbs_core/memory2uart/rtl/memory2uart_ea.vhd:103:7  */
  assign n1896_o = n1892_o ? 2'b00 : n1894_o;
  /* ../../../vhdl/floating_window/tbs_core/memory2uart/rtl/memory2uart_ea.vhd:102:5  */
  assign n1897_o = tx_strb_i ? n1896_o : counter;
  /* ../../../vhdl/floating_window/tbs_core/memory2uart/rtl/memory2uart_ea.vhd:114:37  */
  assign n1899_o = shift_reg_out[7:0]; // extract
  /* ../../../vhdl/floating_window/tbs_core/memory2uart/rtl/memory2uart_ea.vhd:66:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1900_q <= 24'b000000000000000000000000;
    else
      n1900_q <= next_shift_reg_out;
  /* ../../../vhdl/floating_window/tbs_core/memory2uart/rtl/memory2uart_ea.vhd:62:17  */
  assign n1901_o = {n1882_o, n1879_o};
  /* ../../../vhdl/floating_window/tbs_core/memory2uart/rtl/memory2uart_ea.vhd:66:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1902_q <= 1'b0;
    else
      n1902_q <= next_tx_start_strb;
  /* ../../../vhdl/floating_window/tbs_core/memory2uart/rtl/memory2uart_ea.vhd:66:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1903_q <= 2'b00;
    else
      n1903_q <= next_counter;
endmodule

module spike_memory_17_7
  (input  clock_i,
   input  reset_i,
   input  enable_write_i,
   input  [16:0] a_data_i,
   input  enable_read_i,
   input  tx_strb_i,
   output read_strb_o,
   output [16:0] b_data_o,
   output fifo_full_o,
   output fifo_empty_o);
  wire [6:0] head;
  wire [6:0] next_head;
  wire [6:0] tail;
  wire [6:0] next_tail;
  wire [6:0] fifo_fill_count;
  wire write_strb;
  wire write_delayed_strb;
  wire read_strb;
  wire fifo_empty;
  wire fifo_full;
  wire [16:0] a_data;
  wire [16:0] next_a_data;
  wire [2:0] sync_read_strb;
  wire [2:0] next_sync_read_strb;
  wire [2:0] tx_active;
  wire [2:0] next_tx_active;
  wire n1783_o;
  wire n1784_o;
  wire [6:0] n1786_o;
  wire [6:0] n1787_o;
  wire n1790_o;
  wire [16:0] n1792_o;
  wire n1795_o;
  wire n1796_o;
  wire n1797_o;
  wire n1798_o;
  wire n1799_o;
  wire [6:0] n1801_o;
  wire [6:0] n1802_o;
  wire n1805_o;
  wire [2:0] n1808_o;
  wire n1810_o;
  wire n1811_o;
  wire [2:0] n1812_o;
  wire [2:0] n1813_o;
  wire [6:0] n1815_o;
  wire [6:0] n1817_o;
  wire n1818_o;
  wire [6:0] n1819_o;
  wire [6:0] n1820_o;
  wire n1823_o;
  wire n1824_o;
  wire n1828_o;
  wire n1829_o;
  wire [16:0] dual_ram_0_a_data_o;
  wire [16:0] dual_ram_0_b_data_o;
  localparam n1831_o = 1'b0;
  localparam [16:0] n1832_o = 17'b00000000000000000;
  wire n1836_o;
  wire n1838_o;
  wire n1840_o;
  reg [6:0] n1841_q;
  reg [6:0] n1842_q;
  reg n1843_q;
  reg [16:0] n1844_q;
  reg [2:0] n1845_q;
  wire [2:0] n1846_o;
  reg [2:0] n1847_q;
  assign read_strb_o = n1840_o; //(module output)
  assign b_data_o = dual_ram_0_b_data_o; //(module output)
  assign fifo_full_o = fifo_full; //(module output)
  assign fifo_empty_o = fifo_empty; //(module output)
  /* ../../../vhdl/floating_window/tbs_core/spike_memory/rtl/spike_memory_ea.vhd:49:8  */
  assign head = n1841_q; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/spike_memory/rtl/spike_memory_ea.vhd:50:8  */
  assign next_head = n1787_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/spike_memory/rtl/spike_memory_ea.vhd:53:8  */
  assign tail = n1842_q; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/spike_memory/rtl/spike_memory_ea.vhd:54:8  */
  assign next_tail = n1802_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/spike_memory/rtl/spike_memory_ea.vhd:57:8  */
  assign fifo_fill_count = n1819_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/spike_memory/rtl/spike_memory_ea.vhd:59:8  */
  assign write_strb = n1790_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/spike_memory/rtl/spike_memory_ea.vhd:60:8  */
  assign write_delayed_strb = n1843_q; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/spike_memory/rtl/spike_memory_ea.vhd:62:8  */
  assign read_strb = n1805_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/spike_memory/rtl/spike_memory_ea.vhd:65:8  */
  assign fifo_empty = n1824_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/spike_memory/rtl/spike_memory_ea.vhd:66:8  */
  assign fifo_full = n1829_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/spike_memory/rtl/spike_memory_ea.vhd:68:8  */
  assign a_data = n1844_q; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/spike_memory/rtl/spike_memory_ea.vhd:69:8  */
  assign next_a_data = n1792_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/spike_memory/rtl/spike_memory_ea.vhd:71:8  */
  assign sync_read_strb = n1845_q; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/spike_memory/rtl/spike_memory_ea.vhd:72:8  */
  assign next_sync_read_strb = n1846_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/spike_memory/rtl/spike_memory_ea.vhd:74:8  */
  assign tx_active = n1847_q; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/spike_memory/rtl/spike_memory_ea.vhd:75:8  */
  assign next_tx_active = n1813_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/spike_memory/rtl/spike_memory_ea.vhd:110:55  */
  assign n1783_o = ~fifo_full;
  /* ../../../vhdl/floating_window/tbs_core/spike_memory/rtl/spike_memory_ea.vhd:110:41  */
  assign n1784_o = n1783_o & enable_write_i;
  /* ../../../vhdl/floating_window/tbs_core/spike_memory/rtl/spike_memory_ea.vhd:111:43  */
  assign n1786_o = head + 7'b0000001;
  /* ../../../vhdl/floating_window/tbs_core/spike_memory/rtl/spike_memory_ea.vhd:110:17  */
  assign n1787_o = n1784_o ? n1786_o : head;
  /* ../../../vhdl/floating_window/tbs_core/spike_memory/rtl/spike_memory_ea.vhd:110:17  */
  assign n1790_o = n1784_o ? 1'b1 : 1'b0;
  /* ../../../vhdl/floating_window/tbs_core/spike_memory/rtl/spike_memory_ea.vhd:110:17  */
  assign n1792_o = n1784_o ? a_data_i : a_data;
  /* ../../../vhdl/floating_window/tbs_core/spike_memory/rtl/spike_memory_ea.vhd:127:55  */
  assign n1795_o = ~fifo_empty;
  /* ../../../vhdl/floating_window/tbs_core/spike_memory/rtl/spike_memory_ea.vhd:127:40  */
  assign n1796_o = n1795_o & enable_read_i;
  /* ../../../vhdl/floating_window/tbs_core/spike_memory/rtl/spike_memory_ea.vhd:127:74  */
  assign n1797_o = tx_active[2]; // extract
  /* ../../../vhdl/floating_window/tbs_core/spike_memory/rtl/spike_memory_ea.vhd:127:85  */
  assign n1798_o = ~n1797_o;
  /* ../../../vhdl/floating_window/tbs_core/spike_memory/rtl/spike_memory_ea.vhd:127:61  */
  assign n1799_o = n1798_o & n1796_o;
  /* ../../../vhdl/floating_window/tbs_core/spike_memory/rtl/spike_memory_ea.vhd:128:43  */
  assign n1801_o = tail + 7'b0000001;
  /* ../../../vhdl/floating_window/tbs_core/spike_memory/rtl/spike_memory_ea.vhd:127:17  */
  assign n1802_o = n1799_o ? n1801_o : tail;
  /* ../../../vhdl/floating_window/tbs_core/spike_memory/rtl/spike_memory_ea.vhd:127:17  */
  assign n1805_o = n1799_o ? 1'b1 : 1'b0;
  /* ../../../vhdl/floating_window/tbs_core/spike_memory/rtl/spike_memory_ea.vhd:127:17  */
  assign n1808_o = n1799_o ? 3'b111 : tx_active;
  /* ../../../vhdl/floating_window/tbs_core/spike_memory/rtl/spike_memory_ea.vhd:137:39  */
  assign n1810_o = tx_active[1]; // extract
  /* ../../../vhdl/floating_window/tbs_core/spike_memory/rtl/spike_memory_ea.vhd:137:39  */
  assign n1811_o = tx_active[0]; // extract
  assign n1812_o = {n1810_o, n1811_o, 1'b0};
  /* ../../../vhdl/floating_window/tbs_core/spike_memory/rtl/spike_memory_ea.vhd:134:5  */
  assign n1813_o = tx_strb_i ? n1812_o : n1808_o;
  /* ../../../vhdl/floating_window/tbs_core/spike_memory/rtl/spike_memory_ea.vhd:145:33  */
  assign n1815_o = head - tail;
  /* ../../../vhdl/floating_window/tbs_core/spike_memory/rtl/spike_memory_ea.vhd:145:40  */
  assign n1817_o = n1815_o + 7'b0000000;
  /* ../../../vhdl/floating_window/tbs_core/spike_memory/rtl/spike_memory_ea.vhd:145:62  */
  assign n1818_o = $unsigned(head) < $unsigned(tail);
  /* ../../../vhdl/floating_window/tbs_core/spike_memory/rtl/spike_memory_ea.vhd:145:52  */
  assign n1819_o = n1818_o ? n1817_o : n1820_o;
  /* ../../../vhdl/floating_window/tbs_core/spike_memory/rtl/spike_memory_ea.vhd:145:79  */
  assign n1820_o = head - tail;
  /* ../../../vhdl/floating_window/tbs_core/spike_memory/rtl/spike_memory_ea.vhd:147:48  */
  assign n1823_o = fifo_fill_count == 7'b0000000;
  /* ../../../vhdl/floating_window/tbs_core/spike_memory/rtl/spike_memory_ea.vhd:147:27  */
  assign n1824_o = n1823_o ? 1'b1 : 1'b0;
  /* ../../../vhdl/floating_window/tbs_core/spike_memory/rtl/spike_memory_ea.vhd:148:47  */
  assign n1828_o = $unsigned(fifo_fill_count) >= $unsigned(7'b1111111);
  /* ../../../vhdl/floating_window/tbs_core/spike_memory/rtl/spike_memory_ea.vhd:148:26  */
  assign n1829_o = n1828_o ? 1'b1 : 1'b0;
  /* ../../../vhdl/floating_window/tbs_core/spike_memory/rtl/spike_memory_ea.vhd:152:9  */
  dual_ram_17_7 dual_ram_0 (
    .a_clock_i(clock_i),
    .a_write_i(write_delayed_strb),
    .a_addr_i(head),
    .a_data_i(a_data),
    .b_clock_i(clock_i),
    .b_write_i(n1831_o),
    .b_addr_i(tail),
    .b_data_i(n1832_o),
    .a_data_o(),
    .b_data_o(dual_ram_0_b_data_o));
  /* ../../../vhdl/floating_window/tbs_core/spike_memory/rtl/spike_memory_ea.vhd:180:49  */
  assign n1836_o = sync_read_strb[1]; // extract
  /* ../../../vhdl/floating_window/tbs_core/spike_memory/rtl/spike_memory_ea.vhd:180:49  */
  assign n1838_o = sync_read_strb[0]; // extract
  /* ../../../vhdl/floating_window/tbs_core/spike_memory/rtl/spike_memory_ea.vhd:186:38  */
  assign n1840_o = sync_read_strb[2]; // extract
  /* ../../../vhdl/floating_window/tbs_core/spike_memory/rtl/spike_memory_ea.vhd:90:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1841_q <= 7'b0000000;
    else
      n1841_q <= next_head;
  /* ../../../vhdl/floating_window/tbs_core/spike_memory/rtl/spike_memory_ea.vhd:90:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1842_q <= 7'b0000000;
    else
      n1842_q <= next_tail;
  /* ../../../vhdl/floating_window/tbs_core/spike_memory/rtl/spike_memory_ea.vhd:90:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1843_q <= 1'b0;
    else
      n1843_q <= write_strb;
  /* ../../../vhdl/floating_window/tbs_core/spike_memory/rtl/spike_memory_ea.vhd:90:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1844_q <= 17'b00000000000000000;
    else
      n1844_q <= next_a_data;
  /* ../../../vhdl/floating_window/tbs_core/spike_memory/rtl/spike_memory_ea.vhd:90:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1845_q <= 3'b000;
    else
      n1845_q <= next_sync_read_strb;
  /* ../../../vhdl/floating_window/tbs_core/spike_memory/rtl/spike_memory_ea.vhd:83:17  */
  assign n1846_o = {n1836_o, n1838_o, read_strb};
  /* ../../../vhdl/floating_window/tbs_core/spike_memory/rtl/spike_memory_ea.vhd:90:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1847_q <= 3'b000;
    else
      n1847_q <= next_tx_active;
endmodule

module spike_encoder_16_17
  (input  clock_i,
   input  reset_i,
   input  spike_i,
   input  spike_strb_i,
   input  overflow_strb_i,
   input  [15:0] curr_time_i,
   output [16:0] encoded_spike_o,
   output encoded_spike_strb_o);
  wire [16:0] encoded_spike;
  wire [16:0] next_encoded_spike;
  wire encoded_spike_strb;
  wire next_encoded_spike_strb;
  wire delayed_spike_strb;
  wire next_delayed_spike_strb;
  wire delayed_spike;
  wire next_delayed_spike;
  wire n1727_o;
  wire n1730_o;
  wire n1733_o;
  wire n1735_o;
  wire [16:0] n1736_o;
  wire n1737_o;
  wire [16:0] n1738_o;
  wire [16:0] n1739_o;
  wire [16:0] n1740_o;
  wire n1743_o;
  wire [16:0] n1746_o;
  wire n1748_o;
  reg [16:0] n1753_q;
  reg n1754_q;
  reg n1755_q;
  reg n1756_q;
  assign encoded_spike_o = encoded_spike; //(module output)
  assign encoded_spike_strb_o = encoded_spike_strb; //(module output)
  /* ../../../vhdl/floating_window/tbs_core/spike_encoder/rtl/spike_encoder_ea.vhd:40:8  */
  assign encoded_spike = n1753_q; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/spike_encoder/rtl/spike_encoder_ea.vhd:41:8  */
  assign next_encoded_spike = n1746_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/spike_encoder/rtl/spike_encoder_ea.vhd:42:8  */
  assign encoded_spike_strb = n1754_q; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/spike_encoder/rtl/spike_encoder_ea.vhd:43:8  */
  assign next_encoded_spike_strb = n1748_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/spike_encoder/rtl/spike_encoder_ea.vhd:44:8  */
  assign delayed_spike_strb = n1755_q; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/spike_encoder/rtl/spike_encoder_ea.vhd:45:8  */
  assign next_delayed_spike_strb = n1730_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/spike_encoder/rtl/spike_encoder_ea.vhd:46:8  */
  assign delayed_spike = n1756_q; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/spike_encoder/rtl/spike_encoder_ea.vhd:47:8  */
  assign next_delayed_spike = n1733_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/spike_encoder/rtl/spike_encoder_ea.vhd:78:30  */
  assign n1727_o = spike_strb_i & overflow_strb_i;
  /* ../../../vhdl/floating_window/tbs_core/spike_encoder/rtl/spike_encoder_ea.vhd:78:5  */
  assign n1730_o = n1727_o ? 1'b1 : 1'b0;
  /* ../../../vhdl/floating_window/tbs_core/spike_encoder/rtl/spike_encoder_ea.vhd:78:5  */
  assign n1733_o = n1727_o ? spike_i : 1'b0;
  /* ../../../vhdl/floating_window/tbs_core/spike_encoder/rtl/spike_encoder_ea.vhd:86:42  */
  assign n1735_o = spike_strb_i | delayed_spike_strb;
  /* ../../../vhdl/floating_window/tbs_core/spike_encoder/rtl/spike_encoder_ea.vhd:88:45  */
  assign n1736_o = {1'b0, curr_time_i};  //  uext
  /* ../../../vhdl/floating_window/tbs_core/spike_encoder/rtl/spike_encoder_ea.vhd:89:24  */
  assign n1737_o = spike_i | delayed_spike;
  /* ../../../vhdl/floating_window/tbs_core/spike_encoder/rtl/spike_encoder_ea.vhd:92:38  */
  assign n1738_o = -n1736_o;
  /* ../../../vhdl/floating_window/tbs_core/spike_encoder/rtl/spike_encoder_ea.vhd:89:7  */
  assign n1739_o = n1737_o ? n1736_o : n1738_o;
  /* ../../../vhdl/floating_window/tbs_core/spike_encoder/rtl/spike_encoder_ea.vhd:86:17  */
  assign n1740_o = n1735_o ? n1739_o : encoded_spike;
  /* ../../../vhdl/floating_window/tbs_core/spike_encoder/rtl/spike_encoder_ea.vhd:86:17  */
  assign n1743_o = n1735_o ? 1'b1 : 1'b0;
  /* ../../../vhdl/floating_window/tbs_core/spike_encoder/rtl/spike_encoder_ea.vhd:83:5  */
  assign n1746_o = overflow_strb_i ? 17'b00000000000000000 : n1740_o;
  /* ../../../vhdl/floating_window/tbs_core/spike_encoder/rtl/spike_encoder_ea.vhd:83:5  */
  assign n1748_o = overflow_strb_i ? 1'b1 : n1743_o;
  /* ../../../vhdl/floating_window/tbs_core/spike_encoder/rtl/spike_encoder_ea.vhd:59:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1753_q <= 17'b00000000000000000;
    else
      n1753_q <= next_encoded_spike;
  /* ../../../vhdl/floating_window/tbs_core/spike_encoder/rtl/spike_encoder_ea.vhd:59:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1754_q <= 1'b0;
    else
      n1754_q <= next_encoded_spike_strb;
  /* ../../../vhdl/floating_window/tbs_core/spike_encoder/rtl/spike_encoder_ea.vhd:59:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1755_q <= 1'b0;
    else
      n1755_q <= next_delayed_spike_strb;
  /* ../../../vhdl/floating_window/tbs_core/spike_encoder/rtl/spike_encoder_ea.vhd:59:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1756_q <= 1'b0;
    else
      n1756_q <= next_delayed_spike;
endmodule

module time_measurement_16_65536
  (input  clock_i,
   input  reset_i,
   output overflow_strb_o,
   output [15:0] curr_time_o);
  wire [15:0] counter_value;
  wire [15:0] next_counter_value;
  wire overflow_strb;
  wire next_overflow_strb;
  wire n1697_o;
  wire [15:0] n1699_o;
  wire [15:0] n1701_o;
  wire n1704_o;
  reg [15:0] n1706_q;
  reg n1707_q;
  assign overflow_strb_o = overflow_strb; //(module output)
  assign curr_time_o = counter_value; //(module output)
  /* ../../../vhdl/floating_window/tbs_core/time_measurement/rtl/time_measurement_ea.vhd:39:8  */
  assign counter_value = n1706_q; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/time_measurement/rtl/time_measurement_ea.vhd:40:8  */
  assign next_counter_value = n1701_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/time_measurement/rtl/time_measurement_ea.vhd:42:8  */
  assign overflow_strb = n1707_q; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/time_measurement/rtl/time_measurement_ea.vhd:43:8  */
  assign next_overflow_strb = n1704_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/time_measurement/rtl/time_measurement_ea.vhd:65:34  */
  assign n1697_o = counter_value == 16'b1111111111111111;
  /* ../../../vhdl/floating_window/tbs_core/time_measurement/rtl/time_measurement_ea.vhd:69:61  */
  assign n1699_o = counter_value + 16'b0000000000000001;
  /* ../../../vhdl/floating_window/tbs_core/time_measurement/rtl/time_measurement_ea.vhd:65:17  */
  assign n1701_o = n1697_o ? 16'b0000000000000000 : n1699_o;
  /* ../../../vhdl/floating_window/tbs_core/time_measurement/rtl/time_measurement_ea.vhd:65:17  */
  assign n1704_o = n1697_o ? 1'b1 : 1'b0;
  /* ../../../vhdl/floating_window/tbs_core/time_measurement/rtl/time_measurement_ea.vhd:52:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1706_q <= 16'b0000000000000000;
    else
      n1706_q <= next_counter_value;
  /* ../../../vhdl/floating_window/tbs_core/time_measurement/rtl/time_measurement_ea.vhd:52:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1707_q <= 1'b0;
    else
      n1707_q <= next_overflow_strb;
endmodule

module sc_noc_generator_20
  (input  clock_i,
   input  reset_i,
   input  enable_i,
   input  [19:0] period_adj_i,
   input  [19:0] duty_cycle_adj_i,
   input  [19:0] overlap_adj_i,
   output sc_noc_1_o,
   output sc_noc_2_o);
  wire [19:0] counter_value;
  wire [19:0] next_counter_value;
  wire n1662_o;
  wire [19:0] n1664_o;
  wire [19:0] n1666_o;
  wire n1669_o;
  wire n1671_o;
  wire n1672_o;
  wire n1673_o;
  wire n1676_o;
  wire [19:0] n1677_o;
  wire n1678_o;
  wire n1679_o;
  wire n1680_o;
  wire [19:0] n1682_o;
  reg [19:0] n1683_q;
  assign sc_noc_1_o = n1673_o; //(module output)
  assign sc_noc_2_o = n1680_o; //(module output)
  /* ../../../vhdl/floating_window/tbs_core/sc_noc_generator/rtl/sc_noc_generator_ea.vhd:34:8  */
  assign counter_value = n1683_q; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/sc_noc_generator/rtl/sc_noc_generator_ea.vhd:35:8  */
  assign next_counter_value = n1666_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/sc_noc_generator/rtl/sc_noc_generator_ea.vhd:56:34  */
  assign n1662_o = counter_value == period_adj_i;
  /* ../../../vhdl/floating_window/tbs_core/sc_noc_generator/rtl/sc_noc_generator_ea.vhd:59:61  */
  assign n1664_o = counter_value + 20'b00000000000000000001;
  /* ../../../vhdl/floating_window/tbs_core/sc_noc_generator/rtl/sc_noc_generator_ea.vhd:56:17  */
  assign n1666_o = n1662_o ? 20'b00000000000000000000 : n1664_o;
  /* ../../../vhdl/floating_window/tbs_core/sc_noc_generator/rtl/sc_noc_generator_ea.vhd:65:41  */
  assign n1669_o = $unsigned(counter_value) <= $unsigned(duty_cycle_adj_i);
  /* ../../../vhdl/floating_window/tbs_core/sc_noc_generator/rtl/sc_noc_generator_ea.vhd:65:82  */
  assign n1671_o = duty_cycle_adj_i != 20'b00000000000000000000;
  /* ../../../vhdl/floating_window/tbs_core/sc_noc_generator/rtl/sc_noc_generator_ea.vhd:65:61  */
  assign n1672_o = n1671_o & n1669_o;
  /* ../../../vhdl/floating_window/tbs_core/sc_noc_generator/rtl/sc_noc_generator_ea.vhd:65:21  */
  assign n1673_o = n1672_o ? 1'b1 : 1'b0;
  /* ../../../vhdl/floating_window/tbs_core/sc_noc_generator/rtl/sc_noc_generator_ea.vhd:66:41  */
  assign n1676_o = $unsigned(counter_value) > $unsigned(overlap_adj_i);
  /* ../../../vhdl/floating_window/tbs_core/sc_noc_generator/rtl/sc_noc_generator_ea.vhd:66:93  */
  assign n1677_o = overlap_adj_i + duty_cycle_adj_i;
  /* ../../../vhdl/floating_window/tbs_core/sc_noc_generator/rtl/sc_noc_generator_ea.vhd:66:75  */
  assign n1678_o = $unsigned(counter_value) <= $unsigned(n1677_o);
  /* ../../../vhdl/floating_window/tbs_core/sc_noc_generator/rtl/sc_noc_generator_ea.vhd:66:57  */
  assign n1679_o = n1678_o & n1676_o;
  /* ../../../vhdl/floating_window/tbs_core/sc_noc_generator/rtl/sc_noc_generator_ea.vhd:66:21  */
  assign n1680_o = n1679_o ? 1'b1 : 1'b0;
  /* ../../../vhdl/floating_window/tbs_core/sc_noc_generator/rtl/sc_noc_generator_ea.vhd:43:17  */
  assign n1682_o = enable_i ? next_counter_value : counter_value;
  /* ../../../vhdl/floating_window/tbs_core/sc_noc_generator/rtl/sc_noc_generator_ea.vhd:43:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1683_q <= 20'b00000000000000000000;
    else
      n1683_q <= n1682_o;
endmodule

module analog_trig_8
  (input  clock_i,
   input  reset_i,
   input  enable_i,
   input  [7:0] period_adj_i,
   input  [7:0] duty_cycle_adj_i,
   output analog_trigger_o);
  wire [7:0] counter_value;
  wire [7:0] next_counter_value;
  wire n1637_o;
  wire [7:0] n1639_o;
  wire [7:0] n1641_o;
  wire n1644_o;
  wire n1646_o;
  wire n1647_o;
  wire n1648_o;
  wire [7:0] n1650_o;
  reg [7:0] n1651_q;
  assign analog_trigger_o = n1648_o; //(module output)
  /* ../../../vhdl/floating_window/tbs_core/analog_trigger/rtl/analog_trigger_ea.vhd:31:8  */
  assign counter_value = n1651_q; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/analog_trigger/rtl/analog_trigger_ea.vhd:32:8  */
  assign next_counter_value = n1641_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/analog_trigger/rtl/analog_trigger_ea.vhd:56:34  */
  assign n1637_o = counter_value == period_adj_i;
  /* ../../../vhdl/floating_window/tbs_core/analog_trigger/rtl/analog_trigger_ea.vhd:59:61  */
  assign n1639_o = counter_value + 8'b00000001;
  /* ../../../vhdl/floating_window/tbs_core/analog_trigger/rtl/analog_trigger_ea.vhd:56:17  */
  assign n1641_o = n1637_o ? 8'b00000000 : n1639_o;
  /* ../../../vhdl/floating_window/tbs_core/analog_trigger/rtl/analog_trigger_ea.vhd:65:47  */
  assign n1644_o = $unsigned(counter_value) <= $unsigned(duty_cycle_adj_i);
  /* ../../../vhdl/floating_window/tbs_core/analog_trigger/rtl/analog_trigger_ea.vhd:65:88  */
  assign n1646_o = duty_cycle_adj_i != 8'b00000000;
  /* ../../../vhdl/floating_window/tbs_core/analog_trigger/rtl/analog_trigger_ea.vhd:65:67  */
  assign n1647_o = n1646_o & n1644_o;
  /* ../../../vhdl/floating_window/tbs_core/analog_trigger/rtl/analog_trigger_ea.vhd:65:27  */
  assign n1648_o = n1647_o ? 1'b1 : 1'b0;
  /* ../../../vhdl/floating_window/tbs_core/analog_trigger/rtl/analog_trigger_ea.vhd:43:17  */
  assign n1650_o = enable_i ? next_counter_value : counter_value;
  /* ../../../vhdl/floating_window/tbs_core/analog_trigger/rtl/analog_trigger_ea.vhd:43:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1651_q <= 8'b00000000;
    else
      n1651_q <= n1650_o;
endmodule

module dac_control_8_8_0_100
  (input  clock_i,
   input  reset_i,
   input  enable_dac_i,
   input  clear_dac_i,
   input  adaptive_mode_i,
   input  select_tbs_delta_steps_i,
   input  direction_i,
   input  update_dac_strb_i,
   input  [7:0] delta_steps_i,
   output [7:0] dac_counter_value_o,
   output dac_finished_strb_o,
   output dac_pd_o,
   output dac_wr_o,
   output dac_clr_o,
   output [7:0] dac_o);
  wire state;
  wire next_state;
  wire select_dac_value;
  wire next_select_dac_value;
  wire [8:0] dac_init_value;
  wire [8:0] next_dac_init_value;
  wire [8:0] dac_counter_value;
  wire [8:0] next_dac_counter_value;
  wire dac_counter_strb;
  wire delayed_dac_counter_strb;
  wire dac_change_in_progress;
  wire next_dac_change_in_progress;
  wire [6:0] settling_counter_value;
  wire [6:0] next_settling_counter_value;
  wire dac_finished_strb;
  wire n1531_o;
  wire n1533_o;
  wire n1534_o;
  wire n1536_o;
  wire n1538_o;
  wire [1:0] n1539_o;
  reg n1541_o;
  reg n1544_o;
  reg [8:0] n1546_o;
  wire n1549_o;
  wire [8:0] n1550_o;
  wire [8:0] n1551_o;
  wire n1553_o;
  wire [8:0] n1554_o;
  wire [8:0] n1555_o;
  wire n1557_o;
  wire [8:0] n1558_o;
  wire [8:0] n1559_o;
  wire [8:0] n1560_o;
  wire [8:0] n1562_o;
  wire n1563_o;
  wire n1564_o;
  wire [8:0] n1565_o;
  wire n1566_o;
  wire [8:0] n1567_o;
  wire n1568_o;
  wire [8:0] n1569_o;
  wire [8:0] n1570_o;
  wire [8:0] n1571_o;
  wire [8:0] n1573_o;
  wire [8:0] n1574_o;
  wire n1577_o;
  wire [8:0] n1578_o;
  wire n1580_o;
  wire n1582_o;
  wire n1584_o;
  wire n1585_o;
  wire n1588_o;
  wire [8:0] n1589_o;
  wire n1590_o;
  wire n1595_o;
  wire n1596_o;
  wire n1597_o;
  wire n1599_o;
  wire n1601_o;
  wire n1605_o;
  wire n1606_o;
  wire [6:0] n1608_o;
  wire [6:0] n1610_o;
  wire n1614_o;
  wire n1615_o;
  wire n1616_o;
  wire sync_chain_0_sync_o;
  wire n1619_o;
  wire [7:0] n1620_o;
  wire [7:0] n1621_o;
  reg n1622_q;
  reg n1623_q;
  reg [8:0] n1624_q;
  reg [8:0] n1625_q;
  reg n1626_q;
  reg [6:0] n1627_q;
  assign dac_counter_value_o = n1620_o; //(module output)
  assign dac_finished_strb_o = dac_finished_strb; //(module output)
  assign dac_pd_o = enable_dac_i; //(module output)
  assign dac_wr_o = delayed_dac_counter_strb; //(module output)
  assign dac_clr_o = clear_dac_i; //(module output)
  assign dac_o = n1621_o; //(module output)
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:58:8  */
  assign state = n1622_q; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:59:8  */
  assign next_state = n1541_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:62:8  */
  assign select_dac_value = n1623_q; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:63:8  */
  assign next_select_dac_value = n1544_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:66:8  */
  assign dac_init_value = n1624_q; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:67:8  */
  assign next_dac_init_value = n1546_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:70:8  */
  assign dac_counter_value = n1625_q; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:71:8  */
  assign next_dac_counter_value = n1589_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:72:8  */
  assign dac_counter_strb = n1590_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:73:8  */
  assign delayed_dac_counter_strb = n1619_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:75:8  */
  assign dac_change_in_progress = n1626_q; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:76:8  */
  assign next_dac_change_in_progress = n1601_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:79:8  */
  assign settling_counter_value = n1627_q; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:80:8  */
  assign next_settling_counter_value = n1610_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:82:8  */
  assign dac_finished_strb = n1616_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:138:9  */
  assign n1531_o = update_dac_strb_i ? 1'b1 : state;
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:115:7  */
  assign n1533_o = state == 1'b0;
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:147:25  */
  assign n1534_o = ~enable_dac_i;
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:147:9  */
  assign n1536_o = n1534_o ? 1'b0 : state;
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:142:7  */
  assign n1538_o = state == 1'b1;
  assign n1539_o = {n1538_o, n1533_o};
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:114:5  */
  always @*
    case (n1539_o)
      2'b10: n1541_o = n1536_o;
      2'b01: n1541_o = n1531_o;
      default: n1541_o = 1'b0;
    endcase
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:114:5  */
  always @*
    case (n1539_o)
      2'b10: n1544_o = 1'b1;
      2'b01: n1544_o = 1'b0;
      default: n1544_o = select_dac_value;
    endcase
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:114:5  */
  always @*
    case (n1539_o)
      2'b10: n1546_o = dac_init_value;
      2'b01: n1546_o = 9'b010000000;
      default: n1546_o = dac_init_value;
    endcase
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:166:28  */
  assign n1549_o = update_dac_strb_i & direction_i;
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:167:31  */
  assign n1550_o = {1'b0, delta_steps_i};  //  uext
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:167:31  */
  assign n1551_o = dac_counter_value + n1550_o;
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:167:48  */
  assign n1553_o = n1551_o == 9'b011111111;
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:169:34  */
  assign n1554_o = {1'b0, delta_steps_i};  //  uext
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:169:34  */
  assign n1555_o = dac_counter_value + n1554_o;
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:169:51  */
  assign n1557_o = $unsigned(n1555_o) < $unsigned(9'b011111111);
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:170:55  */
  assign n1558_o = {1'b0, delta_steps_i};  //  uext
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:170:55  */
  assign n1559_o = dac_counter_value + n1558_o;
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:169:9  */
  assign n1560_o = n1557_o ? n1559_o : dac_counter_value;
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:167:9  */
  assign n1562_o = n1553_o ? 9'b011111111 : n1560_o;
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:173:25  */
  assign n1563_o = ~direction_i;
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:173:31  */
  assign n1564_o = update_dac_strb_i & n1563_o;
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:174:30  */
  assign n1565_o = {1'b0, delta_steps_i};  //  uext
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:174:30  */
  assign n1566_o = $unsigned(dac_counter_value) <= $unsigned(n1565_o);
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:176:33  */
  assign n1567_o = {1'b0, delta_steps_i};  //  uext
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:176:33  */
  assign n1568_o = $unsigned(dac_counter_value) > $unsigned(n1567_o);
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:177:55  */
  assign n1569_o = {1'b0, delta_steps_i};  //  uext
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:177:55  */
  assign n1570_o = dac_counter_value - n1569_o;
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:176:9  */
  assign n1571_o = n1568_o ? n1570_o : dac_counter_value;
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:174:9  */
  assign n1573_o = n1566_o ? 9'b000000000 : n1571_o;
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:173:7  */
  assign n1574_o = n1564_o ? n1573_o : dac_counter_value;
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:173:7  */
  assign n1577_o = n1564_o ? 1'b1 : 1'b0;
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:166:7  */
  assign n1578_o = n1549_o ? n1562_o : n1574_o;
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:166:7  */
  assign n1580_o = n1549_o ? 1'b1 : n1577_o;
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:185:16  */
  assign n1582_o = state == 1'b0;
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:185:42  */
  assign n1584_o = next_state == 1'b1;
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:185:27  */
  assign n1585_o = n1584_o & n1582_o;
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:185:7  */
  assign n1588_o = n1585_o ? 1'b1 : 1'b0;
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:165:5  */
  assign n1589_o = select_dac_value ? n1578_o : dac_init_value;
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:165:5  */
  assign n1590_o = select_dac_value ? n1580_o : n1588_o;
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:199:34  */
  assign n1595_o = settling_counter_value == 7'b1100011;
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:199:79  */
  assign n1596_o = ~dac_counter_strb;
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:199:58  */
  assign n1597_o = n1596_o & n1595_o;
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:199:5  */
  assign n1599_o = n1597_o ? 1'b0 : dac_change_in_progress;
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:197:5  */
  assign n1601_o = dac_counter_strb ? 1'b1 : n1599_o;
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:212:43  */
  assign n1605_o = settling_counter_value == 7'b1100011;
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:212:67  */
  assign n1606_o = n1605_o | dac_counter_strb;
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:215:79  */
  assign n1608_o = settling_counter_value + 7'b0000001;
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:212:17  */
  assign n1610_o = n1606_o ? 7'b0000000 : n1608_o;
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:219:57  */
  assign n1614_o = settling_counter_value == 7'b1100011;
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:219:81  */
  assign n1615_o = dac_change_in_progress & n1614_o;
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:219:28  */
  assign n1616_o = n1615_o ? 1'b1 : 1'b0;
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:226:9  */
  sync_chain_2_1 sync_chain_0 (
    .clock_i(clock_i),
    .reset_i(reset_i),
    .async_i(dac_counter_strb),
    .sync_o(sync_chain_0_sync_o));
  assign n1619_o = sync_chain_0_sync_o; // extract
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:241:26  */
  assign n1620_o = dac_counter_value[7:0];  // trunc
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:246:30  */
  assign n1621_o = dac_counter_value[7:0];  // trunc
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:95:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1622_q <= 1'b0;
    else
      n1622_q <= next_state;
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:95:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1623_q <= 1'b0;
    else
      n1623_q <= next_select_dac_value;
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:95:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1624_q <= 9'b000000000;
    else
      n1624_q <= next_dac_init_value;
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:95:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1625_q <= 9'b000000000;
    else
      n1625_q <= next_dac_counter_value;
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:95:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1626_q <= 1'b0;
    else
      n1626_q <= next_dac_change_in_progress;
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:95:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1627_q <= 7'b0000000;
    else
      n1627_q <= next_settling_counter_value;
endmodule

module dac_control_8_8_1_100
  (input  clock_i,
   input  reset_i,
   input  enable_dac_i,
   input  clear_dac_i,
   input  adaptive_mode_i,
   input  select_tbs_delta_steps_i,
   input  direction_i,
   input  update_dac_strb_i,
   input  [7:0] delta_steps_i,
   output [7:0] dac_counter_value_o,
   output dac_finished_strb_o,
   output dac_pd_o,
   output dac_wr_o,
   output dac_clr_o,
   output [7:0] dac_o);
  wire state;
  wire next_state;
  wire select_dac_value;
  wire next_select_dac_value;
  wire [8:0] dac_init_value;
  wire [8:0] next_dac_init_value;
  wire [8:0] dac_counter_value;
  wire [8:0] next_dac_counter_value;
  wire dac_counter_strb;
  wire delayed_dac_counter_strb;
  wire dac_change_in_progress;
  wire next_dac_change_in_progress;
  wire [6:0] settling_counter_value;
  wire [6:0] next_settling_counter_value;
  wire dac_finished_strb;
  wire [7:0] n1397_o;
  wire [8:0] n1399_o;
  wire [8:0] n1400_o;
  wire [8:0] n1402_o;
  wire [8:0] n1404_o;
  wire n1406_o;
  wire n1408_o;
  wire n1409_o;
  wire n1411_o;
  wire n1413_o;
  wire [1:0] n1414_o;
  reg n1416_o;
  reg n1419_o;
  reg [8:0] n1420_o;
  wire n1423_o;
  wire [8:0] n1424_o;
  wire [8:0] n1425_o;
  wire n1427_o;
  wire [8:0] n1428_o;
  wire [8:0] n1429_o;
  wire n1431_o;
  wire [8:0] n1432_o;
  wire [8:0] n1433_o;
  wire [8:0] n1434_o;
  wire [8:0] n1436_o;
  wire n1437_o;
  wire n1438_o;
  wire [8:0] n1439_o;
  wire n1440_o;
  wire [8:0] n1441_o;
  wire n1442_o;
  wire [8:0] n1443_o;
  wire [8:0] n1444_o;
  wire [8:0] n1445_o;
  wire [8:0] n1447_o;
  wire [8:0] n1448_o;
  wire n1451_o;
  wire [8:0] n1452_o;
  wire n1454_o;
  wire n1456_o;
  wire n1458_o;
  wire n1459_o;
  wire n1462_o;
  wire [8:0] n1463_o;
  wire n1464_o;
  wire n1469_o;
  wire n1470_o;
  wire n1471_o;
  wire n1473_o;
  wire n1475_o;
  wire n1479_o;
  wire n1480_o;
  wire [6:0] n1482_o;
  wire [6:0] n1484_o;
  wire n1488_o;
  wire n1489_o;
  wire n1490_o;
  wire sync_chain_0_sync_o;
  wire n1493_o;
  wire [7:0] n1494_o;
  wire [7:0] n1495_o;
  reg n1496_q;
  reg n1497_q;
  reg [8:0] n1498_q;
  reg [8:0] n1499_q;
  reg n1500_q;
  reg [6:0] n1501_q;
  assign dac_counter_value_o = n1494_o; //(module output)
  assign dac_finished_strb_o = dac_finished_strb; //(module output)
  assign dac_pd_o = enable_dac_i; //(module output)
  assign dac_wr_o = delayed_dac_counter_strb; //(module output)
  assign dac_clr_o = clear_dac_i; //(module output)
  assign dac_o = n1495_o; //(module output)
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:58:8  */
  assign state = n1496_q; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:59:8  */
  assign next_state = n1416_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:62:8  */
  assign select_dac_value = n1497_q; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:63:8  */
  assign next_select_dac_value = n1419_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:66:8  */
  assign dac_init_value = n1498_q; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:67:8  */
  assign next_dac_init_value = n1420_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:70:8  */
  assign dac_counter_value = n1499_q; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:71:8  */
  assign next_dac_counter_value = n1463_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:72:8  */
  assign dac_counter_strb = n1464_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:73:8  */
  assign delayed_dac_counter_strb = n1493_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:75:8  */
  assign dac_change_in_progress = n1500_q; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:76:8  */
  assign next_dac_change_in_progress = n1475_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:79:8  */
  assign settling_counter_value = n1501_q; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:80:8  */
  assign next_settling_counter_value = n1484_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:82:8  */
  assign dac_finished_strb = n1490_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:125:92  */
  assign n1397_o = delta_steps_i << 31'b0000000000000000000000000000001;
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:125:90  */
  assign n1399_o = {1'b0, n1397_o};  //  uext
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:125:90  */
  assign n1400_o = 9'b010000000 + n1399_o;
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:124:13  */
  assign n1402_o = select_tbs_delta_steps_i ? n1400_o : 9'b010000010;
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:121:11  */
  assign n1404_o = adaptive_mode_i ? 9'b010000010 : n1402_o;
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:138:9  */
  assign n1406_o = update_dac_strb_i ? 1'b1 : state;
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:115:7  */
  assign n1408_o = state == 1'b0;
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:147:25  */
  assign n1409_o = ~enable_dac_i;
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:147:9  */
  assign n1411_o = n1409_o ? 1'b0 : state;
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:142:7  */
  assign n1413_o = state == 1'b1;
  assign n1414_o = {n1413_o, n1408_o};
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:114:5  */
  always @*
    case (n1414_o)
      2'b10: n1416_o = n1411_o;
      2'b01: n1416_o = n1406_o;
      default: n1416_o = 1'b0;
    endcase
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:114:5  */
  always @*
    case (n1414_o)
      2'b10: n1419_o = 1'b1;
      2'b01: n1419_o = 1'b0;
      default: n1419_o = select_dac_value;
    endcase
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:114:5  */
  always @*
    case (n1414_o)
      2'b10: n1420_o = dac_init_value;
      2'b01: n1420_o = n1404_o;
      default: n1420_o = dac_init_value;
    endcase
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:166:28  */
  assign n1423_o = update_dac_strb_i & direction_i;
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:167:31  */
  assign n1424_o = {1'b0, delta_steps_i};  //  uext
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:167:31  */
  assign n1425_o = dac_counter_value + n1424_o;
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:167:48  */
  assign n1427_o = n1425_o == 9'b011111111;
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:169:34  */
  assign n1428_o = {1'b0, delta_steps_i};  //  uext
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:169:34  */
  assign n1429_o = dac_counter_value + n1428_o;
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:169:51  */
  assign n1431_o = $unsigned(n1429_o) < $unsigned(9'b011111111);
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:170:55  */
  assign n1432_o = {1'b0, delta_steps_i};  //  uext
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:170:55  */
  assign n1433_o = dac_counter_value + n1432_o;
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:169:9  */
  assign n1434_o = n1431_o ? n1433_o : dac_counter_value;
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:167:9  */
  assign n1436_o = n1427_o ? 9'b011111111 : n1434_o;
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:173:25  */
  assign n1437_o = ~direction_i;
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:173:31  */
  assign n1438_o = update_dac_strb_i & n1437_o;
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:174:30  */
  assign n1439_o = {1'b0, delta_steps_i};  //  uext
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:174:30  */
  assign n1440_o = $unsigned(dac_counter_value) <= $unsigned(n1439_o);
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:176:33  */
  assign n1441_o = {1'b0, delta_steps_i};  //  uext
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:176:33  */
  assign n1442_o = $unsigned(dac_counter_value) > $unsigned(n1441_o);
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:177:55  */
  assign n1443_o = {1'b0, delta_steps_i};  //  uext
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:177:55  */
  assign n1444_o = dac_counter_value - n1443_o;
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:176:9  */
  assign n1445_o = n1442_o ? n1444_o : dac_counter_value;
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:174:9  */
  assign n1447_o = n1440_o ? 9'b000000000 : n1445_o;
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:173:7  */
  assign n1448_o = n1438_o ? n1447_o : dac_counter_value;
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:173:7  */
  assign n1451_o = n1438_o ? 1'b1 : 1'b0;
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:166:7  */
  assign n1452_o = n1423_o ? n1436_o : n1448_o;
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:166:7  */
  assign n1454_o = n1423_o ? 1'b1 : n1451_o;
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:185:16  */
  assign n1456_o = state == 1'b0;
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:185:42  */
  assign n1458_o = next_state == 1'b1;
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:185:27  */
  assign n1459_o = n1458_o & n1456_o;
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:185:7  */
  assign n1462_o = n1459_o ? 1'b1 : 1'b0;
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:165:5  */
  assign n1463_o = select_dac_value ? n1452_o : dac_init_value;
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:165:5  */
  assign n1464_o = select_dac_value ? n1454_o : n1462_o;
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:199:34  */
  assign n1469_o = settling_counter_value == 7'b1100011;
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:199:79  */
  assign n1470_o = ~dac_counter_strb;
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:199:58  */
  assign n1471_o = n1470_o & n1469_o;
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:199:5  */
  assign n1473_o = n1471_o ? 1'b0 : dac_change_in_progress;
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:197:5  */
  assign n1475_o = dac_counter_strb ? 1'b1 : n1473_o;
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:212:43  */
  assign n1479_o = settling_counter_value == 7'b1100011;
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:212:67  */
  assign n1480_o = n1479_o | dac_counter_strb;
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:215:79  */
  assign n1482_o = settling_counter_value + 7'b0000001;
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:212:17  */
  assign n1484_o = n1480_o ? 7'b0000000 : n1482_o;
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:219:57  */
  assign n1488_o = settling_counter_value == 7'b1100011;
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:219:81  */
  assign n1489_o = dac_change_in_progress & n1488_o;
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:219:28  */
  assign n1490_o = n1489_o ? 1'b1 : 1'b0;
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:226:9  */
  sync_chain_2_1 sync_chain_0 (
    .clock_i(clock_i),
    .reset_i(reset_i),
    .async_i(dac_counter_strb),
    .sync_o(sync_chain_0_sync_o));
  assign n1493_o = sync_chain_0_sync_o; // extract
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:241:26  */
  assign n1494_o = dac_counter_value[7:0];  // trunc
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:246:30  */
  assign n1495_o = dac_counter_value[7:0];  // trunc
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:95:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1496_q <= 1'b0;
    else
      n1496_q <= next_state;
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:95:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1497_q <= 1'b0;
    else
      n1497_q <= next_select_dac_value;
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:95:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1498_q <= 9'b000000000;
    else
      n1498_q <= next_dac_init_value;
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:95:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1499_q <= 9'b000000000;
    else
      n1499_q <= next_dac_counter_value;
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:95:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1500_q <= 1'b0;
    else
      n1500_q <= next_dac_change_in_progress;
  /* ../../../vhdl/floating_window/tbs_core/dac_control/rtl/dac_control_ea.vhd:95:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1501_q <= 7'b0000000;
    else
      n1501_q <= next_settling_counter_value;
endmodule

module adaptive_threshold_control_16_8_8_255_0_3_2
  (input  clock_i,
   input  reset_i,
   input  sync_reset_i,
   input  overflow_strb_i,
   input  [15:0] curr_time_i,
   input  spike_i,
   input  spike_strb_i,
   input  [2:0] d_max_i,
   input  [2:0] d_min_i,
   output increasing_en_o,
   output decreasing_en_o,
   output direction_upper_o,
   output direction_lower_o,
   output delta_steps_upper_strb_o,
   output delta_steps_lower_strb_o,
   output [7:0] delta_steps_upper_o,
   output [7:0] delta_steps_lower_o,
   output adapt_on_overflow_strb_o);
  wire [29:0] spikes;
  wire spikes_strb;
  wire weylsd_strb;
  wire reset_delta;
  wire adapt_on_overflow_strb;
  wire adapt_on_overflow;
  wire next_adapt_on_overflow;
  wire is_empty_interval;
  wire start_weylsd_calc;
  wire adaptive_strb;
  wire adaptive_limited_strb;
  wire widen_threshold_strb;
  wire delta_steps_strb;
  wire direction_upper;
  wire direction_lower;
  wire delta_steps_upper_strb;
  wire delta_steps_lower_strb;
  wire [7:0] delta_steps;
  wire [7:0] prev_delta_steps;
  wire [7:0] delta_steps_limited;
  wire [7:0] delta_steps_sum;
  wire [7:0] delta_steps_upper;
  wire [7:0] delta_steps_lower;
  wire [8:0] steps_to_upper_v;
  wire [8:0] steps_to_lower_v;
  wire [2:0] weylsd;
  wire next_adaptive_strb;
  wire next_widen_threshold_strb;
  wire next_delta_steps_strb;
  wire [8:0] next_steps_to_upper_v;
  wire [8:0] next_steps_to_lower_v;
  wire [7:0] next_delta_steps;
  wire [7:0] next_prev_delta_steps;
  wire next_is_empty_interval;
  wire [29:0] spike_shift_reg_0_spikes_o;
  wire spike_shift_reg_0_spikes_strb_o;
  wire [2:0] weyls_discrepancy_0_weylsd_o;
  wire weyls_discrepancy_0_weylsd_strb_o;
  wire n1223_o;
  wire n1225_o;
  wire n1229_o;
  wire n1231_o;
  wire n1235_o;
  wire n1236_o;
  wire n1237_o;
  wire n1238_o;
  wire n1240_o;
  wire n1242_o;
  wire n1243_o;
  wire [7:0] n1245_o;
  wire n1246_o;
  wire n1248_o;
  wire n1249_o;
  wire [7:0] n1251_o;
  wire n1254_o;
  wire [7:0] n1255_o;
  wire n1257_o;
  wire n1260_o;
  wire [7:0] n1261_o;
  wire n1263_o;
  wire n1266_o;
  wire n1270_o;
  wire [7:0] n1272_o;
  wire [7:0] n1273_o;
  wire [7:0] n1275_o;
  wire [7:0] n1277_o;
  wire [7:0] n1278_o;
  wire [7:0] n1280_o;
  wire n1282_o;
  wire [8:0] n1283_o;
  wire n1284_o;
  wire n1285_o;
  wire [7:0] n1286_o;
  wire [8:0] n1287_o;
  wire n1288_o;
  wire n1289_o;
  wire n1290_o;
  wire [7:0] n1291_o;
  wire n1293_o;
  wire n1295_o;
  wire [7:0] n1296_o;
  wire n1297_o;
  wire n1299_o;
  wire [7:0] n1300_o;
  wire n1302_o;
  wire n1304_o;
  wire [7:0] n1305_o;
  wire n1308_o;
  wire n1310_o;
  wire n1312_o;
  wire [7:0] n1313_o;
  wire [7:0] n1314_o;
  wire n1315_o;
  wire n1316_o;
  wire [7:0] n1317_o;
  wire [7:0] n1318_o;
  wire n1319_o;
  wire n1320_o;
  wire [7:0] n1321_o;
  wire [7:0] n1322_o;
  wire n1323_o;
  wire n1324_o;
  wire n1325_o;
  wire n1326_o;
  wire n1328_o;
  wire n1329_o;
  wire n1330_o;
  wire [8:0] n1332_o;
  wire [8:0] n1333_o;
  wire [8:0] n1334_o;
  wire [8:0] n1335_o;
  wire [8:0] n1336_o;
  wire [8:0] n1337_o;
  wire [8:0] n1338_o;
  wire [8:0] n1339_o;
  wire [8:0] n1340_o;
  wire [8:0] n1341_o;
  wire [8:0] n1342_o;
  wire [8:0] n1343_o;
  wire [8:0] n1345_o;
  wire [8:0] n1347_o;
  wire n1351_o;
  wire n1352_o;
  wire n1356_o;
  wire n1357_o;
  reg n1359_q;
  reg n1360_q;
  reg n1361_q;
  reg n1362_q;
  reg n1363_q;
  reg [7:0] n1364_q;
  reg [7:0] n1365_q;
  reg [8:0] n1366_q;
  reg [8:0] n1367_q;
  assign increasing_en_o = n1352_o; //(module output)
  assign decreasing_en_o = n1357_o; //(module output)
  assign direction_upper_o = direction_upper; //(module output)
  assign direction_lower_o = direction_lower; //(module output)
  assign delta_steps_upper_strb_o = delta_steps_upper_strb; //(module output)
  assign delta_steps_lower_strb_o = delta_steps_lower_strb; //(module output)
  assign delta_steps_upper_o = delta_steps_upper; //(module output)
  assign delta_steps_lower_o = delta_steps_lower; //(module output)
  assign adapt_on_overflow_strb_o = adapt_on_overflow_strb; //(module output)
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:62:8  */
  assign spikes = spike_shift_reg_0_spikes_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:63:8  */
  assign spikes_strb = spike_shift_reg_0_spikes_strb_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:64:8  */
  assign weylsd_strb = weyls_discrepancy_0_weylsd_strb_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:65:8  */
  assign reset_delta = n1302_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:66:8  */
  assign adapt_on_overflow_strb = n1236_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:67:8  */
  assign adapt_on_overflow = n1359_q; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:68:8  */
  assign next_adapt_on_overflow = n1231_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:69:8  */
  assign is_empty_interval = n1360_q; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:70:8  */
  assign start_weylsd_calc = n1238_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:71:8  */
  assign adaptive_strb = n1361_q; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:72:8  */
  assign adaptive_limited_strb = n1304_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:73:8  */
  assign widen_threshold_strb = n1362_q; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:74:8  */
  assign delta_steps_strb = n1363_q; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:75:8  */
  assign direction_upper = n1329_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:76:8  */
  assign direction_lower = n1330_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:78:8  */
  assign delta_steps_upper_strb = n1315_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:79:8  */
  assign delta_steps_lower_strb = n1312_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:81:8  */
  assign delta_steps = n1364_q; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:82:8  */
  assign prev_delta_steps = n1365_q; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:83:8  */
  assign delta_steps_limited = n1305_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:84:8  */
  assign delta_steps_sum = n1280_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:85:8  */
  assign delta_steps_upper = n1321_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:86:8  */
  assign delta_steps_lower = n1322_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:88:8  */
  assign steps_to_upper_v = n1366_q; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:89:8  */
  assign steps_to_lower_v = n1367_q; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:90:8  */
  assign weylsd = weyls_discrepancy_0_weylsd_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:92:8  */
  assign next_adaptive_strb = n1263_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:93:8  */
  assign next_widen_threshold_strb = n1266_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:94:8  */
  assign next_delta_steps_strb = n1270_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:95:8  */
  assign next_steps_to_upper_v = n1345_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:96:8  */
  assign next_steps_to_lower_v = n1347_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:97:8  */
  assign next_delta_steps = n1278_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:98:8  */
  assign next_prev_delta_steps = n1277_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:99:8  */
  assign next_is_empty_interval = n1225_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:130:3  */
  spike_shift_reg_40000_16 spike_shift_reg_0 (
    .clock_i(clock_i),
    .reset_i(reset_i),
    .overflow_strb_i(overflow_strb_i),
    .curr_time_i(curr_time_i),
    .spike_i(spike_i),
    .spike_strb_i(spike_strb_i),
    .spikes_o(spike_shift_reg_0_spikes_o),
    .spikes_strb_o(spike_shift_reg_0_spikes_strb_o));
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:148:3  */
  weyls_discrepancy_8_3_6 weyls_discrepancy_0 (
    .clock_i(clock_i),
    .reset_i(reset_i),
    .spikes_i(spikes),
    .spikes_strb_i(start_weylsd_calc),
    .weylsd_o(weyls_discrepancy_0_weylsd_o),
    .weylsd_strb_o(weyls_discrepancy_0_weylsd_strb_o));
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:172:5  */
  assign n1223_o = spike_strb_i ? 1'b0 : is_empty_interval;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:170:5  */
  assign n1225_o = overflow_strb_i ? 1'b1 : n1223_o;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:186:5  */
  assign n1229_o = delta_steps_strb ? 1'b0 : adapt_on_overflow;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:184:5  */
  assign n1231_o = adapt_on_overflow_strb ? 1'b1 : n1229_o;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:193:50  */
  assign n1235_o = delta_steps == 8'b00000001;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:193:33  */
  assign n1236_o = n1235_o ? 1'b0 : n1237_o;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:193:76  */
  assign n1237_o = overflow_strb_i & is_empty_interval;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:194:36  */
  assign n1238_o = spikes_strb | adapt_on_overflow_strb;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:212:18  */
  assign n1240_o = $unsigned(weylsd) > $unsigned(d_max_i);
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:212:46  */
  assign n1242_o = $unsigned(delta_steps) < $unsigned(8'b00100000);
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:212:29  */
  assign n1243_o = n1242_o & n1240_o;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:215:36  */
  assign n1245_o = delta_steps << 31'b0000000000000000000000000000001;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:216:21  */
  assign n1246_o = $unsigned(weylsd) < $unsigned(d_min_i);
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:216:49  */
  assign n1248_o = $unsigned(delta_steps) > $unsigned(8'b00000001);
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:216:32  */
  assign n1249_o = n1248_o & n1246_o;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:218:36  */
  assign n1251_o = delta_steps >> 31'b0000000000000000000000000000001;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:216:7  */
  assign n1254_o = n1249_o ? 1'b1 : 1'b0;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:216:7  */
  assign n1255_o = n1249_o ? n1251_o : delta_steps;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:212:7  */
  assign n1257_o = n1243_o ? 1'b1 : n1254_o;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:212:7  */
  assign n1260_o = n1243_o ? 1'b1 : 1'b0;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:212:7  */
  assign n1261_o = n1243_o ? n1245_o : n1255_o;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:208:5  */
  assign n1263_o = weylsd_strb ? n1257_o : 1'b0;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:208:5  */
  assign n1266_o = weylsd_strb ? n1260_o : 1'b0;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:208:5  */
  assign n1270_o = weylsd_strb ? 1'b1 : 1'b0;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:208:5  */
  assign n1272_o = weylsd_strb ? n1261_o : delta_steps;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:208:5  */
  assign n1273_o = weylsd_strb ? delta_steps : prev_delta_steps;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:222:5  */
  assign n1275_o = sync_reset_i ? 8'b00000001 : n1272_o;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:222:5  */
  assign n1277_o = sync_reset_i ? 8'b00000000 : n1273_o;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:229:5  */
  assign n1278_o = reset_delta ? prev_delta_steps : n1275_o;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:235:41  */
  assign n1280_o = delta_steps + prev_delta_steps;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:244:26  */
  assign n1282_o = ~adapt_on_overflow;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:246:30  */
  assign n1283_o = {1'b0, delta_steps};  //  uext
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:246:28  */
  assign n1284_o = $unsigned(steps_to_upper_v) < $unsigned(n1283_o);
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:246:72  */
  assign n1285_o = spike_i & n1284_o;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:247:32  */
  assign n1286_o = steps_to_upper_v[7:0];  // trunc
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:251:33  */
  assign n1287_o = {1'b0, delta_steps};  //  uext
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:251:31  */
  assign n1288_o = $unsigned(steps_to_lower_v) < $unsigned(n1287_o);
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:251:88  */
  assign n1289_o = ~spike_i;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:251:75  */
  assign n1290_o = n1289_o & n1288_o;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:252:32  */
  assign n1291_o = steps_to_lower_v[7:0];  // trunc
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:251:7  */
  assign n1293_o = n1290_o ? adaptive_strb : 1'b0;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:251:7  */
  assign n1295_o = n1290_o ? 1'b0 : adaptive_strb;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:251:7  */
  assign n1296_o = n1290_o ? n1291_o : delta_steps;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:246:7  */
  assign n1297_o = n1285_o ? adaptive_strb : n1293_o;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:246:7  */
  assign n1299_o = n1285_o ? 1'b0 : n1295_o;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:246:7  */
  assign n1300_o = n1285_o ? n1286_o : n1296_o;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:244:5  */
  assign n1302_o = n1282_o ? n1297_o : 1'b0;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:244:5  */
  assign n1304_o = n1282_o ? n1299_o : adaptive_strb;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:244:5  */
  assign n1305_o = n1282_o ? n1300_o : delta_steps;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:269:26  */
  assign n1308_o = ~adapt_on_overflow;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:275:11  */
  assign n1310_o = spike_i ? delta_steps_strb : 1'b0;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:269:5  */
  assign n1312_o = n1324_o ? 1'b0 : delta_steps_strb;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:282:11  */
  assign n1313_o = spike_i ? delta_steps_limited : delta_steps_sum;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:282:11  */
  assign n1314_o = spike_i ? delta_steps_sum : delta_steps_limited;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:269:5  */
  assign n1315_o = n1323_o ? n1310_o : delta_steps_strb;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:273:9  */
  assign n1316_o = spike_i & widen_threshold_strb;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:273:9  */
  assign n1317_o = widen_threshold_strb ? delta_steps_limited : n1313_o;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:273:9  */
  assign n1318_o = widen_threshold_strb ? delta_steps_limited : n1314_o;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:271:7  */
  assign n1319_o = widen_threshold_strb & adaptive_limited_strb;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:271:7  */
  assign n1320_o = n1316_o & adaptive_limited_strb;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:269:5  */
  assign n1321_o = n1325_o ? n1317_o : delta_steps_limited;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:269:5  */
  assign n1322_o = n1326_o ? n1318_o : delta_steps_limited;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:269:5  */
  assign n1323_o = n1319_o & n1308_o;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:269:5  */
  assign n1324_o = n1320_o & n1308_o;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:269:5  */
  assign n1325_o = adaptive_limited_strb & n1308_o;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:269:5  */
  assign n1326_o = adaptive_limited_strb & n1308_o;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:294:36  */
  assign n1328_o = ~adapt_on_overflow;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:294:31  */
  assign n1329_o = spike_i & n1328_o;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:295:31  */
  assign n1330_o = spike_i | adapt_on_overflow;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:309:53  */
  assign n1332_o = {1'b0, delta_steps_lower};  //  uext
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:309:51  */
  assign n1333_o = steps_to_lower_v + n1332_o;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:312:53  */
  assign n1334_o = {1'b0, delta_steps_lower};  //  uext
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:312:51  */
  assign n1335_o = steps_to_lower_v - n1334_o;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:308:7  */
  assign n1336_o = direction_lower ? n1333_o : n1335_o;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:307:5  */
  assign n1337_o = delta_steps_lower_strb ? n1336_o : steps_to_lower_v;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:318:53  */
  assign n1338_o = {1'b0, delta_steps_upper};  //  uext
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:318:51  */
  assign n1339_o = steps_to_upper_v - n1338_o;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:321:53  */
  assign n1340_o = {1'b0, delta_steps_upper};  //  uext
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:321:51  */
  assign n1341_o = steps_to_upper_v + n1340_o;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:317:7  */
  assign n1342_o = direction_upper ? n1339_o : n1341_o;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:316:5  */
  assign n1343_o = delta_steps_upper_strb ? n1342_o : steps_to_upper_v;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:325:5  */
  assign n1345_o = sync_reset_i ? 9'b001111101 : n1343_o;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:325:5  */
  assign n1347_o = sync_reset_i ? 9'b001111111 : n1337_o;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:334:48  */
  assign n1351_o = steps_to_upper_v == 9'b000000000;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:334:26  */
  assign n1352_o = n1351_o ? 1'b0 : 1'b1;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:335:48  */
  assign n1356_o = steps_to_lower_v == 9'b000000000;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:335:26  */
  assign n1357_o = n1356_o ? 1'b0 : 1'b1;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:115:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1359_q <= 1'b0;
    else
      n1359_q <= next_adapt_on_overflow;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:115:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1360_q <= 1'b0;
    else
      n1360_q <= next_is_empty_interval;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:115:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1361_q <= 1'b0;
    else
      n1361_q <= next_adaptive_strb;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:115:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1362_q <= 1'b0;
    else
      n1362_q <= next_widen_threshold_strb;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:115:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1363_q <= 1'b0;
    else
      n1363_q <= next_delta_steps_strb;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:115:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1364_q <= 8'b00000001;
    else
      n1364_q <= next_delta_steps;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:115:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1365_q <= 8'b00000001;
    else
      n1365_q <= next_prev_delta_steps;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:115:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1366_q <= 9'b001111101;
    else
      n1366_q <= next_steps_to_upper_v;
  /* ../../../vhdl/floating_window/tbs_core/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:115:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1367_q <= 9'b001111111;
    else
      n1367_q <= next_steps_to_lower_v;
endmodule

module spike_detector
  (input  clock_i,
   input  reset_i,
   input  detection_en_i,
   input  comp_upper_i,
   input  comp_lower_i,
   input  change_upper_strb_i,
   input  change_lower_strb_i,
   input  stopped_changing_upper_strb_i,
   input  stopped_changing_lower_strb_i,
   input  increasing_en_i,
   input  decreasing_en_i,
   input  pause_detection_strb_i,
   output spike_o,
   output spike_strb_o);
  wire spike;
  wire hold_spike;
  wire spike_strb;
  wire lock_detection;
  wire next_lock_detection;
  wire upper_is_changing;
  wire next_upper_is_changing;
  wire lower_is_changing;
  wire next_lower_is_changing;
  wire is_changing;
  wire next_is_changing;
  wire is_changing_f_edge;
  wire n1115_o;
  wire n1116_o;
  wire n1117_o;
  wire n1118_o;
  wire n1119_o;
  wire n1121_o;
  wire n1124_o;
  wire n1126_o;
  wire n1128_o;
  wire n1129_o;
  wire n1131_o;
  wire n1137_o;
  wire n1153_o;
  wire n1155_o;
  wire n1159_o;
  wire n1161_o;
  wire n1163_o;
  wire n1164_o;
  wire n1165_o;
  wire n1167_o;
  wire n1169_o;
  wire n1171_o;
  wire n1172_o;
  reg n1173_q;
  reg n1174_q;
  reg n1175_q;
  reg n1176_q;
  reg n1177_q;
  assign spike_o = n1171_o; //(module output)
  assign spike_strb_o = spike_strb; //(module output)
  /* ../../../vhdl/floating_window/tbs_core/spike_detector/rtl/spike_detector_ea.vhd:45:8  */
  assign spike = n1129_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/spike_detector/rtl/spike_detector_ea.vhd:46:8  */
  assign hold_spike = n1173_q; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/spike_detector/rtl/spike_detector_ea.vhd:47:8  */
  assign spike_strb = n1131_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/spike_detector/rtl/spike_detector_ea.vhd:48:8  */
  assign lock_detection = n1174_q; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/spike_detector/rtl/spike_detector_ea.vhd:49:8  */
  assign next_lock_detection = n1169_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/spike_detector/rtl/spike_detector_ea.vhd:51:8  */
  assign upper_is_changing = n1175_q; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/spike_detector/rtl/spike_detector_ea.vhd:52:8  */
  assign next_upper_is_changing = n1155_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/spike_detector/rtl/spike_detector_ea.vhd:53:8  */
  assign lower_is_changing = n1176_q; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/spike_detector/rtl/spike_detector_ea.vhd:54:8  */
  assign next_lower_is_changing = n1161_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/spike_detector/rtl/spike_detector_ea.vhd:56:8  */
  assign is_changing = n1177_q; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/spike_detector/rtl/spike_detector_ea.vhd:57:8  */
  assign next_is_changing = n1163_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/spike_detector/rtl/spike_detector_ea.vhd:59:8  */
  assign is_changing_f_edge = n1165_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/spike_detector/rtl/spike_detector_ea.vhd:84:23  */
  assign n1115_o = ~lock_detection;
  /* ../../../vhdl/floating_window/tbs_core/spike_detector/rtl/spike_detector_ea.vhd:84:29  */
  assign n1116_o = detection_en_i & n1115_o;
  /* ../../../vhdl/floating_window/tbs_core/spike_detector/rtl/spike_detector_ea.vhd:85:29  */
  assign n1117_o = increasing_en_i & comp_upper_i;
  /* ../../../vhdl/floating_window/tbs_core/spike_detector/rtl/spike_detector_ea.vhd:88:26  */
  assign n1118_o = ~comp_lower_i;
  /* ../../../vhdl/floating_window/tbs_core/spike_detector/rtl/spike_detector_ea.vhd:88:32  */
  assign n1119_o = decreasing_en_i & n1118_o;
  /* ../../../vhdl/floating_window/tbs_core/spike_detector/rtl/spike_detector_ea.vhd:88:7  */
  assign n1121_o = n1119_o ? 1'b0 : hold_spike;
  /* ../../../vhdl/floating_window/tbs_core/spike_detector/rtl/spike_detector_ea.vhd:88:7  */
  assign n1124_o = n1119_o ? 1'b1 : 1'b0;
  /* ../../../vhdl/floating_window/tbs_core/spike_detector/rtl/spike_detector_ea.vhd:85:7  */
  assign n1126_o = n1117_o ? 1'b1 : n1121_o;
  /* ../../../vhdl/floating_window/tbs_core/spike_detector/rtl/spike_detector_ea.vhd:85:7  */
  assign n1128_o = n1117_o ? 1'b1 : n1124_o;
  /* ../../../vhdl/floating_window/tbs_core/spike_detector/rtl/spike_detector_ea.vhd:84:5  */
  assign n1129_o = n1116_o ? n1126_o : hold_spike;
  /* ../../../vhdl/floating_window/tbs_core/spike_detector/rtl/spike_detector_ea.vhd:84:5  */
  assign n1131_o = n1116_o ? n1128_o : 1'b0;
  /* ../../../vhdl/floating_window/tbs_core/spike_detector/rtl/spike_detector_ea.vhd:111:9  */
  assign n1137_o = is_changing_f_edge ? 1'b0 : next_lock_detection;
  /* ../../../vhdl/floating_window/tbs_core/spike_detector/rtl/spike_detector_ea.vhd:127:5  */
  assign n1153_o = stopped_changing_upper_strb_i ? 1'b0 : upper_is_changing;
  /* ../../../vhdl/floating_window/tbs_core/spike_detector/rtl/spike_detector_ea.vhd:125:5  */
  assign n1155_o = change_upper_strb_i ? 1'b1 : n1153_o;
  /* ../../../vhdl/floating_window/tbs_core/spike_detector/rtl/spike_detector_ea.vhd:140:5  */
  assign n1159_o = stopped_changing_lower_strb_i ? 1'b0 : lower_is_changing;
  /* ../../../vhdl/floating_window/tbs_core/spike_detector/rtl/spike_detector_ea.vhd:138:5  */
  assign n1161_o = change_lower_strb_i ? 1'b1 : n1159_o;
  /* ../../../vhdl/floating_window/tbs_core/spike_detector/rtl/spike_detector_ea.vhd:147:41  */
  assign n1163_o = upper_is_changing | lower_is_changing;
  /* ../../../vhdl/floating_window/tbs_core/spike_detector/rtl/spike_detector_ea.vhd:148:26  */
  assign n1164_o = ~next_is_changing;
  /* ../../../vhdl/floating_window/tbs_core/spike_detector/rtl/spike_detector_ea.vhd:148:48  */
  assign n1165_o = n1164_o & is_changing;
  /* ../../../vhdl/floating_window/tbs_core/spike_detector/rtl/spike_detector_ea.vhd:158:25  */
  assign n1167_o = spike_strb | pause_detection_strb_i;
  /* ../../../vhdl/floating_window/tbs_core/spike_detector/rtl/spike_detector_ea.vhd:158:5  */
  assign n1169_o = n1167_o ? 1'b1 : lock_detection;
  /* ../../../vhdl/floating_window/tbs_core/spike_detector/rtl/spike_detector_ea.vhd:166:26  */
  assign n1171_o = spike_strb ? spike : hold_spike;
  /* ../../../vhdl/floating_window/tbs_core/spike_detector/rtl/spike_detector_ea.vhd:69:17  */
  assign n1172_o = spike_strb ? spike : hold_spike;
  /* ../../../vhdl/floating_window/tbs_core/spike_detector/rtl/spike_detector_ea.vhd:69:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1173_q <= 1'b0;
    else
      n1173_q <= n1172_o;
  /* ../../../vhdl/floating_window/tbs_core/spike_detector/rtl/spike_detector_ea.vhd:106:7  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1174_q <= 1'b0;
    else
      n1174_q <= n1137_o;
  /* ../../../vhdl/floating_window/tbs_core/spike_detector/rtl/spike_detector_ea.vhd:106:7  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1175_q <= 1'b0;
    else
      n1175_q <= next_upper_is_changing;
  /* ../../../vhdl/floating_window/tbs_core/spike_detector/rtl/spike_detector_ea.vhd:106:7  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1176_q <= 1'b0;
    else
      n1176_q <= next_lower_is_changing;
  /* ../../../vhdl/floating_window/tbs_core/spike_detector/rtl/spike_detector_ea.vhd:106:7  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1177_q <= 1'b0;
    else
      n1177_q <= next_is_changing;
endmodule

module sync_chain_2_2
  (input  clock_i,
   input  reset_i,
   input  [1:0] async_i,
   output [1:0] sync_o);
  wire [3:0] \buf ;
  wire [1:0] n1097_o;
  wire [3:0] n1098_o;
  wire [3:0] n1100_o;
  wire [1:0] n1103_o;
  reg [3:0] n1104_q;
  assign sync_o = n1103_o; //(module output)
  /* ../../../vhdl/floating_window/tbs_core/sync_chain/rtl/sync_chain_ea.vhd:36:8  */
  assign \buf  = n1104_q; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/sync_chain/rtl/sync_chain_ea.vhd:49:46  */
  assign n1097_o = \buf [1:0]; // extract
  /* ../../../vhdl/floating_window/tbs_core/debouncer/rtl/debouncer_ea.vhd:81:9  */
  assign n1098_o = {n1097_o, async_i};
  /* ../../../vhdl/floating_window/tbs_core/debouncer/rtl/debouncer_ea.vhd:68:9  */
  assign n1100_o = {2'b00, 2'b00};
  /* ../../../vhdl/floating_window/tbs_core/sync_chain/rtl/sync_chain_ea.vhd:56:22  */
  assign n1103_o = \buf [3:2]; // extract
  /* ../../../vhdl/floating_window/tbs_core/sync_chain/rtl/sync_chain_ea.vhd:47:25  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1104_q <= n1100_o;
    else
      n1104_q <= n1098_o;
endmodule

module debouncer_21_2000000
  (input  clock_i,
   input  reset_i,
   input  bouncing_i,
   output debounced_o);
  wire bouncing_sync;
  wire bouncing_sync_d;
  wire bouncing_edge_r;
  wire bouncing_edge_f;
  wire reset_counter_strb;
  wire [20:0] counter_value;
  wire [20:0] next_counter_value;
  wire [1:0] state;
  wire [1:0] next_state;
  wire debounced;
  wire next_debounced;
  wire sync_chain_0_sync_o;
  wire n1015_o;
  wire n1022_o;
  wire n1023_o;
  wire n1024_o;
  wire n1025_o;
  wire n1040_o;
  wire n1041_o;
  wire [20:0] n1043_o;
  wire [20:0] n1045_o;
  wire n1050_o;
  wire [1:0] n1052_o;
  wire n1054_o;
  wire [1:0] n1056_o;
  wire n1058_o;
  wire n1060_o;
  wire n1063_o;
  wire [1:0] n1065_o;
  wire n1066_o;
  wire n1068_o;
  wire n1070_o;
  wire n1071_o;
  wire n1074_o;
  wire [1:0] n1076_o;
  wire n1077_o;
  wire n1079_o;
  wire [2:0] n1080_o;
  reg n1082_o;
  reg [1:0] n1085_o;
  reg n1086_o;
  reg n1088_q;
  reg [20:0] n1089_q;
  reg [1:0] n1090_q;
  reg n1091_q;
  assign debounced_o = debounced; //(module output)
  /* ../../../vhdl/floating_window/tbs_core/debouncer/rtl/debouncer_ea.vhd:30:8  */
  assign bouncing_sync = n1015_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/debouncer/rtl/debouncer_ea.vhd:33:8  */
  assign bouncing_sync_d = n1088_q; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/debouncer/rtl/debouncer_ea.vhd:34:8  */
  assign bouncing_edge_r = n1023_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/debouncer/rtl/debouncer_ea.vhd:35:8  */
  assign bouncing_edge_f = n1025_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/debouncer/rtl/debouncer_ea.vhd:38:8  */
  assign reset_counter_strb = n1082_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/debouncer/rtl/debouncer_ea.vhd:39:8  */
  assign counter_value = n1089_q; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/debouncer/rtl/debouncer_ea.vhd:40:8  */
  assign next_counter_value = n1045_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/debouncer/rtl/debouncer_ea.vhd:44:8  */
  assign state = n1090_q; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/debouncer/rtl/debouncer_ea.vhd:45:8  */
  assign next_state = n1085_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/debouncer/rtl/debouncer_ea.vhd:47:8  */
  assign debounced = n1091_q; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/debouncer/rtl/debouncer_ea.vhd:48:8  */
  assign next_debounced = n1086_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/debouncer/rtl/debouncer_ea.vhd:53:9  */
  sync_chain_2_1 sync_chain_0 (
    .clock_i(clock_i),
    .reset_i(reset_i),
    .async_i(bouncing_i),
    .sync_o(sync_chain_0_sync_o));
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1168:17  */
  assign n1015_o = sync_chain_0_sync_o; // extract
  /* ../../../vhdl/floating_window/tbs_core/debouncer/rtl/debouncer_ea.vhd:77:29  */
  assign n1022_o = ~bouncing_sync_d;
  /* ../../../vhdl/floating_window/tbs_core/debouncer/rtl/debouncer_ea.vhd:77:50  */
  assign n1023_o = n1022_o & bouncing_sync;
  /* ../../../vhdl/floating_window/tbs_core/debouncer/rtl/debouncer_ea.vhd:78:49  */
  assign n1024_o = ~bouncing_sync;
  /* ../../../vhdl/floating_window/tbs_core/debouncer/rtl/debouncer_ea.vhd:78:44  */
  assign n1025_o = bouncing_sync_d & n1024_o;
  /* ../../../vhdl/floating_window/tbs_core/debouncer/rtl/debouncer_ea.vhd:101:22  */
  assign n1040_o = counter_value == 21'b111101000010001111111;
  /* ../../../vhdl/floating_window/tbs_core/debouncer/rtl/debouncer_ea.vhd:101:42  */
  assign n1041_o = n1040_o | reset_counter_strb;
  /* ../../../vhdl/floating_window/tbs_core/debouncer/rtl/debouncer_ea.vhd:104:61  */
  assign n1043_o = counter_value + 21'b000000000000000000001;
  /* ../../../vhdl/floating_window/tbs_core/debouncer/rtl/debouncer_ea.vhd:101:5  */
  assign n1045_o = n1041_o ? 21'b000000000000000000000 : n1043_o;
  /* ../../../vhdl/floating_window/tbs_core/debouncer/rtl/debouncer_ea.vhd:124:33  */
  assign n1050_o = bouncing_edge_f ? 1'b1 : 1'b0;
  /* ../../../vhdl/floating_window/tbs_core/debouncer/rtl/debouncer_ea.vhd:124:33  */
  assign n1052_o = bouncing_edge_f ? 2'b01 : state;
  /* ../../../vhdl/floating_window/tbs_core/debouncer/rtl/debouncer_ea.vhd:121:9  */
  assign n1054_o = bouncing_edge_r ? 1'b1 : n1050_o;
  /* ../../../vhdl/floating_window/tbs_core/debouncer/rtl/debouncer_ea.vhd:121:9  */
  assign n1056_o = bouncing_edge_r ? 2'b10 : n1052_o;
  /* ../../../vhdl/floating_window/tbs_core/debouncer/rtl/debouncer_ea.vhd:120:25  */
  assign n1058_o = state == 2'b00;
  /* ../../../vhdl/floating_window/tbs_core/debouncer/rtl/debouncer_ea.vhd:132:50  */
  assign n1060_o = $unsigned(counter_value) >= $unsigned(21'b111101000010001111111);
  /* ../../../vhdl/floating_window/tbs_core/debouncer/rtl/debouncer_ea.vhd:133:41  */
  assign n1063_o = bouncing_sync_d ? 1'b1 : 1'b0;
  /* ../../../vhdl/floating_window/tbs_core/debouncer/rtl/debouncer_ea.vhd:132:33  */
  assign n1065_o = n1060_o ? 2'b00 : state;
  /* ../../../vhdl/floating_window/tbs_core/debouncer/rtl/debouncer_ea.vhd:132:33  */
  assign n1066_o = n1060_o ? n1063_o : debounced;
  /* ../../../vhdl/floating_window/tbs_core/debouncer/rtl/debouncer_ea.vhd:131:25  */
  assign n1068_o = state == 2'b10;
  /* ../../../vhdl/floating_window/tbs_core/debouncer/rtl/debouncer_ea.vhd:144:50  */
  assign n1070_o = $unsigned(counter_value) >= $unsigned(21'b111101000010001111111);
  /* ../../../vhdl/floating_window/tbs_core/debouncer/rtl/debouncer_ea.vhd:145:60  */
  assign n1071_o = ~bouncing_sync_d;
  /* ../../../vhdl/floating_window/tbs_core/debouncer/rtl/debouncer_ea.vhd:145:41  */
  assign n1074_o = n1071_o ? 1'b0 : 1'b1;
  /* ../../../vhdl/floating_window/tbs_core/debouncer/rtl/debouncer_ea.vhd:144:33  */
  assign n1076_o = n1070_o ? 2'b00 : state;
  /* ../../../vhdl/floating_window/tbs_core/debouncer/rtl/debouncer_ea.vhd:144:33  */
  assign n1077_o = n1070_o ? n1074_o : debounced;
  /* ../../../vhdl/floating_window/tbs_core/debouncer/rtl/debouncer_ea.vhd:143:7  */
  assign n1079_o = state == 2'b01;
  assign n1080_o = {n1079_o, n1068_o, n1058_o};
  /* ../../../vhdl/floating_window/tbs_core/debouncer/rtl/debouncer_ea.vhd:118:17  */
  always @*
    case (n1080_o)
      3'b100: n1082_o = 1'b0;
      3'b010: n1082_o = 1'b0;
      3'b001: n1082_o = n1054_o;
      default: n1082_o = 1'b0;
    endcase
  /* ../../../vhdl/floating_window/tbs_core/debouncer/rtl/debouncer_ea.vhd:118:17  */
  always @*
    case (n1080_o)
      3'b100: n1085_o = n1076_o;
      3'b010: n1085_o = n1065_o;
      3'b001: n1085_o = n1056_o;
      default: n1085_o = 2'b00;
    endcase
  /* ../../../vhdl/floating_window/tbs_core/debouncer/rtl/debouncer_ea.vhd:118:17  */
  always @*
    case (n1080_o)
      3'b100: n1086_o = n1077_o;
      3'b010: n1086_o = n1066_o;
      3'b001: n1086_o = debounced;
      default: n1086_o = debounced;
    endcase
  /* ../../../vhdl/floating_window/tbs_core/debouncer/rtl/debouncer_ea.vhd:72:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1088_q <= 1'b0;
    else
      n1088_q <= bouncing_sync;
  /* ../../../vhdl/floating_window/tbs_core/debouncer/rtl/debouncer_ea.vhd:87:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1089_q <= 21'b000000000000000000000;
    else
      n1089_q <= next_counter_value;
  /* ../../../vhdl/floating_window/tbs_core/debouncer/rtl/debouncer_ea.vhd:87:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1090_q <= 2'b00;
    else
      n1090_q <= next_state;
  /* ../../../vhdl/floating_window/tbs_core/debouncer/rtl/debouncer_ea.vhd:87:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1091_q <= 1'b0;
    else
      n1091_q <= next_debounced;
endmodule

module debouncer_12_2500
  (input  clock_i,
   input  reset_i,
   input  bouncing_i,
   output debounced_o);
  wire bouncing_sync;
  wire bouncing_sync_d;
  wire bouncing_edge_r;
  wire bouncing_edge_f;
  wire reset_counter_strb;
  wire [11:0] counter_value;
  wire [11:0] next_counter_value;
  wire [1:0] state;
  wire [1:0] next_state;
  wire debounced;
  wire next_debounced;
  wire sync_chain_0_sync_o;
  wire n936_o;
  wire n943_o;
  wire n944_o;
  wire n945_o;
  wire n946_o;
  wire n961_o;
  wire n962_o;
  wire [11:0] n964_o;
  wire [11:0] n966_o;
  wire n971_o;
  wire [1:0] n973_o;
  wire n975_o;
  wire [1:0] n977_o;
  wire n979_o;
  wire n981_o;
  wire n984_o;
  wire [1:0] n986_o;
  wire n987_o;
  wire n989_o;
  wire n991_o;
  wire n992_o;
  wire n995_o;
  wire [1:0] n997_o;
  wire n998_o;
  wire n1000_o;
  wire [2:0] n1001_o;
  reg n1003_o;
  reg [1:0] n1006_o;
  reg n1007_o;
  reg n1009_q;
  reg [11:0] n1010_q;
  reg [1:0] n1011_q;
  reg n1012_q;
  assign debounced_o = debounced; //(module output)
  /* ../../../vhdl/floating_window/tbs_core/debouncer/rtl/debouncer_ea.vhd:30:8  */
  assign bouncing_sync = n936_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/debouncer/rtl/debouncer_ea.vhd:33:8  */
  assign bouncing_sync_d = n1009_q; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/debouncer/rtl/debouncer_ea.vhd:34:8  */
  assign bouncing_edge_r = n944_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/debouncer/rtl/debouncer_ea.vhd:35:8  */
  assign bouncing_edge_f = n946_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/debouncer/rtl/debouncer_ea.vhd:38:8  */
  assign reset_counter_strb = n1003_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/debouncer/rtl/debouncer_ea.vhd:39:8  */
  assign counter_value = n1010_q; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/debouncer/rtl/debouncer_ea.vhd:40:8  */
  assign next_counter_value = n966_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/debouncer/rtl/debouncer_ea.vhd:44:8  */
  assign state = n1011_q; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/debouncer/rtl/debouncer_ea.vhd:45:8  */
  assign next_state = n1006_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/debouncer/rtl/debouncer_ea.vhd:47:8  */
  assign debounced = n1012_q; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/debouncer/rtl/debouncer_ea.vhd:48:8  */
  assign next_debounced = n1007_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/debouncer/rtl/debouncer_ea.vhd:53:9  */
  sync_chain_2_1 sync_chain_0 (
    .clock_i(clock_i),
    .reset_i(reset_i),
    .async_i(bouncing_i),
    .sync_o(sync_chain_0_sync_o));
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:671:34  */
  assign n936_o = sync_chain_0_sync_o; // extract
  /* ../../../vhdl/floating_window/tbs_core/debouncer/rtl/debouncer_ea.vhd:77:29  */
  assign n943_o = ~bouncing_sync_d;
  /* ../../../vhdl/floating_window/tbs_core/debouncer/rtl/debouncer_ea.vhd:77:50  */
  assign n944_o = n943_o & bouncing_sync;
  /* ../../../vhdl/floating_window/tbs_core/debouncer/rtl/debouncer_ea.vhd:78:49  */
  assign n945_o = ~bouncing_sync;
  /* ../../../vhdl/floating_window/tbs_core/debouncer/rtl/debouncer_ea.vhd:78:44  */
  assign n946_o = bouncing_sync_d & n945_o;
  /* ../../../vhdl/floating_window/tbs_core/debouncer/rtl/debouncer_ea.vhd:101:22  */
  assign n961_o = counter_value == 12'b100111000011;
  /* ../../../vhdl/floating_window/tbs_core/debouncer/rtl/debouncer_ea.vhd:101:42  */
  assign n962_o = n961_o | reset_counter_strb;
  /* ../../../vhdl/floating_window/tbs_core/debouncer/rtl/debouncer_ea.vhd:104:61  */
  assign n964_o = counter_value + 12'b000000000001;
  /* ../../../vhdl/floating_window/tbs_core/debouncer/rtl/debouncer_ea.vhd:101:5  */
  assign n966_o = n962_o ? 12'b000000000000 : n964_o;
  /* ../../../vhdl/floating_window/tbs_core/debouncer/rtl/debouncer_ea.vhd:124:33  */
  assign n971_o = bouncing_edge_f ? 1'b1 : 1'b0;
  /* ../../../vhdl/floating_window/tbs_core/debouncer/rtl/debouncer_ea.vhd:124:33  */
  assign n973_o = bouncing_edge_f ? 2'b01 : state;
  /* ../../../vhdl/floating_window/tbs_core/debouncer/rtl/debouncer_ea.vhd:121:9  */
  assign n975_o = bouncing_edge_r ? 1'b1 : n971_o;
  /* ../../../vhdl/floating_window/tbs_core/debouncer/rtl/debouncer_ea.vhd:121:9  */
  assign n977_o = bouncing_edge_r ? 2'b10 : n973_o;
  /* ../../../vhdl/floating_window/tbs_core/debouncer/rtl/debouncer_ea.vhd:120:25  */
  assign n979_o = state == 2'b00;
  /* ../../../vhdl/floating_window/tbs_core/debouncer/rtl/debouncer_ea.vhd:132:50  */
  assign n981_o = $unsigned(counter_value) >= $unsigned(12'b100111000011);
  /* ../../../vhdl/floating_window/tbs_core/debouncer/rtl/debouncer_ea.vhd:133:41  */
  assign n984_o = bouncing_sync_d ? 1'b1 : 1'b0;
  /* ../../../vhdl/floating_window/tbs_core/debouncer/rtl/debouncer_ea.vhd:132:33  */
  assign n986_o = n981_o ? 2'b00 : state;
  /* ../../../vhdl/floating_window/tbs_core/debouncer/rtl/debouncer_ea.vhd:132:33  */
  assign n987_o = n981_o ? n984_o : debounced;
  /* ../../../vhdl/floating_window/tbs_core/debouncer/rtl/debouncer_ea.vhd:131:25  */
  assign n989_o = state == 2'b10;
  /* ../../../vhdl/floating_window/tbs_core/debouncer/rtl/debouncer_ea.vhd:144:50  */
  assign n991_o = $unsigned(counter_value) >= $unsigned(12'b100111000011);
  /* ../../../vhdl/floating_window/tbs_core/debouncer/rtl/debouncer_ea.vhd:145:60  */
  assign n992_o = ~bouncing_sync_d;
  /* ../../../vhdl/floating_window/tbs_core/debouncer/rtl/debouncer_ea.vhd:145:41  */
  assign n995_o = n992_o ? 1'b0 : 1'b1;
  /* ../../../vhdl/floating_window/tbs_core/debouncer/rtl/debouncer_ea.vhd:144:33  */
  assign n997_o = n991_o ? 2'b00 : state;
  /* ../../../vhdl/floating_window/tbs_core/debouncer/rtl/debouncer_ea.vhd:144:33  */
  assign n998_o = n991_o ? n995_o : debounced;
  /* ../../../vhdl/floating_window/tbs_core/debouncer/rtl/debouncer_ea.vhd:143:7  */
  assign n1000_o = state == 2'b01;
  assign n1001_o = {n1000_o, n989_o, n979_o};
  /* ../../../vhdl/floating_window/tbs_core/debouncer/rtl/debouncer_ea.vhd:118:17  */
  always @*
    case (n1001_o)
      3'b100: n1003_o = 1'b0;
      3'b010: n1003_o = 1'b0;
      3'b001: n1003_o = n975_o;
      default: n1003_o = 1'b0;
    endcase
  /* ../../../vhdl/floating_window/tbs_core/debouncer/rtl/debouncer_ea.vhd:118:17  */
  always @*
    case (n1001_o)
      3'b100: n1006_o = n997_o;
      3'b010: n1006_o = n986_o;
      3'b001: n1006_o = n977_o;
      default: n1006_o = 2'b00;
    endcase
  /* ../../../vhdl/floating_window/tbs_core/debouncer/rtl/debouncer_ea.vhd:118:17  */
  always @*
    case (n1001_o)
      3'b100: n1007_o = n998_o;
      3'b010: n1007_o = n987_o;
      3'b001: n1007_o = debounced;
      default: n1007_o = debounced;
    endcase
  /* ../../../vhdl/floating_window/tbs_core/debouncer/rtl/debouncer_ea.vhd:72:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1009_q <= 1'b0;
    else
      n1009_q <= bouncing_sync;
  /* ../../../vhdl/floating_window/tbs_core/debouncer/rtl/debouncer_ea.vhd:87:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1010_q <= 12'b000000000000;
    else
      n1010_q <= next_counter_value;
  /* ../../../vhdl/floating_window/tbs_core/debouncer/rtl/debouncer_ea.vhd:87:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1011_q <= 2'b00;
    else
      n1011_q <= next_state;
  /* ../../../vhdl/floating_window/tbs_core/debouncer/rtl/debouncer_ea.vhd:87:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1012_q <= 1'b0;
    else
      n1012_q <= next_debounced;
endmodule

module sync_chain_2_1
  (input  clock_i,
   input  reset_i,
   input  async_i,
   output sync_o);
  wire [1:0] \buf ;
  wire n926_o;
  wire [1:0] n927_o;
  wire [1:0] n929_o;
  wire n932_o;
  reg [1:0] n933_q;
  assign sync_o = n932_o; //(module output)
  /* ../../../vhdl/floating_window/tbs_core/sync_chain/rtl/sync_chain_ea.vhd:36:8  */
  assign \buf  = n933_q; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/sync_chain/rtl/sync_chain_ea.vhd:49:46  */
  assign n926_o = \buf [0]; // extract
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:893:54  */
  assign n927_o = {n926_o, async_i};
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:869:42  */
  assign n929_o = {1'b0, 1'b0};
  /* ../../../vhdl/floating_window/tbs_core/sync_chain/rtl/sync_chain_ea.vhd:56:22  */
  assign n932_o = \buf [1]; // extract
  /* ../../../vhdl/floating_window/tbs_core/sync_chain/rtl/sync_chain_ea.vhd:47:25  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n933_q <= n929_o;
    else
      n933_q <= n927_o;
endmodule

module tbs_core_10000000_22_3000000_21_2000000_2_2_255_0_2_2_3_8_16_65536_100_8_8_200_20_1000000_7_17_10_521_8
  (input  clock_i,
   input  reset_btn_i,
   input  comp_upper_i,
   input  comp_lower_i,
   input  trigger_start_sampling_i,
   input  trigger_start_mode_i,
   input  adaptive_mode_i,
   input  control_mode_i,
   input  signal_select_in_i,
   input  enable_i,
   input  select_tbs_delta_steps_i,
   input  uart_rx_i,
   output signal_select_en_o,
   output signal_select_in_o,
   output amp_sdn_o,
   output dac_pd_o,
   output dac_clr_o,
   output dac_wr_upper_o,
   output dac_wr_lower_o,
   output [7:0] dac_upper_o,
   output [7:0] dac_lower_o,
   output idle_led_o,
   output overflow_led_o,
   output underflow_led_o,
   output analog_trigger_o,
   output sc_noc_1_o,
   output sc_noc_2_o,
   output uart_tx_o);
  wire reset_i;
  wire reset_sync;
  wire reset_entity;
  wire trigger_start_sampling_sync;
  wire trigger_start_sampling_debounced;
  wire trigger_start_mode_debounced;
  wire adaptive_mode_debounced;
  wire control_mode_debounced;
  wire signal_select_in_debounced;
  wire enable_debounced;
  wire select_tbs_delta_steps_debounced;
  wire adaptive_mode_d;
  wire control_mode_d;
  wire signal_select_in_d;
  wire select_tbs_delta_steps_d;
  wire trigger_start_mode_d;
  wire trigger_start_sampling_d;
  wire adaptive_mode_edge_f;
  wire adaptive_mode_edge_r;
  wire control_mode_edge_f;
  wire control_mode_edge_r;
  wire select_tbs_delta_steps_edge_f;
  wire select_tbs_delta_steps_edge_r;
  wire signal_select_in_edge_f;
  wire signal_select_in_edge_r;
  wire trigger_start_mode_edge_f;
  wire trigger_start_mode_edge_r;
  wire trigger_start_sampling_edge_r;
  wire input_changed_strb;
  wire input_changed_reset_strb;
  wire uart_changed_strb;
  wire uart_changed_reset_strb;
  wire comp_upper_sync;
  wire comp_lower_sync;
  wire spike;
  wire spike_strb;
  wire detection_en;
  wire pause_detection_strb;
  wire increasing_en;
  wire decreasing_en;
  wire next_tbs_increasing_en;
  wire next_tbs_decreasing_en;
  wire tbs_increasing_en;
  wire tbs_decreasing_en;
  wire adaptive_increasing_en;
  wire adaptive_decreasing_en;
  wire [7:0] tbs_delta_steps_upper;
  wire [7:0] tbs_delta_steps_lower;
  wire reset_delta_steps_strb;
  wire atbs_direction_upper;
  wire atbs_direction_lower;
  wire atbs_delta_steps_upper_strb;
  wire atbs_delta_steps_lower_strb;
  wire [7:0] atbs_delta_steps_upper;
  wire [7:0] atbs_delta_steps_lower;
  wire adapt_on_overflow_strb;
  wire clear_dac;
  wire dac_init_strb;
  wire direction_upper;
  wire update_dac_upper_strb;
  wire [7:0] dac_counter_value_upper;
  wire dac_finished_upper_strb;
  wire dac_pd_upper;
  wire dac_wr_upper;
  wire dac_clr_upper;
  wire [7:0] dac_upper;
  wire direction_lower;
  wire update_dac_lower_strb;
  wire [7:0] dac_counter_value_lower;
  wire dac_finished_lower_strb;
  wire dac_pd_lower;
  wire dac_wr_lower;
  wire dac_clr_lower;
  wire [7:0] dac_lower;
  wire delta_steps_upper_strb;
  wire delta_steps_lower_strb;
  wire [7:0] delta_steps_upper;
  wire [7:0] delta_steps_lower;
  wire reset_time_measurement;
  wire reset_time_measurement_strb;
  wire overflow_strb;
  wire [15:0] curr_time;
  wire [16:0] encoded_spike;
  wire encoded_spike_strb;
  wire select_enable_write;
  wire enable_write_mux;
  wire enable_read;
  wire read_strb;
  wire [16:0] b_data;
  wire fifo_full;
  wire fifo_empty;
  wire uart_reset;
  wire tx_start_strb;
  wire uart_tx_strb;
  wire uart_tx;
  wire [7:0] tx_data;
  wire uart_rx_data_strb;
  wire [7:0] uart_rx_data;
  wire analog_trigger_uart;
  wire next_analog_trigger_uart;
  wire [7:0] analog_trigger_period_adj_uart;
  wire [7:0] next_analog_trigger_period_adj_uart;
  wire [7:0] analog_trigger_duty_cycle_adj_uart;
  wire [7:0] next_analog_trigger_duty_cycle_adj_uart;
  wire sc_noc_generator_uart;
  wire next_sc_noc_generator_uart;
  wire [19:0] sc_noc_generator_period_adj_uart;
  wire [19:0] next_sc_noc_generator_period_adj_uart;
  wire [19:0] sc_noc_generator_duty_cycle_adj_uart;
  wire [19:0] next_sc_noc_generator_duty_cycle_adj_uart;
  wire [19:0] sc_noc_generator_overlap_adj_uart;
  wire [19:0] next_sc_noc_generator_overlap_adj_uart;
  wire baudrate_uart;
  wire next_baudrate_uart;
  wire [9:0] baudrate_adj_uart;
  wire [9:0] next_baudrate_adj_uart;
  wire tbs_virtual_delta_steps_uart;
  wire next_tbs_virtual_delta_steps_uart;
  wire [7:0] next_tbs_virtual_delta_steps_adj_uart;
  wire [7:0] tbs_virtual_delta_steps_adj_uart;
  wire [21:0] main_counter_value;
  wire [21:0] next_main_counter_value;
  wire reset_main_counter_strb;
  wire [2:0] state;
  wire [2:0] next_state;
  wire next_idle_led;
  wire next_overflow_led;
  wire next_underflow_led;
  wire next_select_enable_write;
  wire next_enable_read;
  wire next_detection_en;
  wire next_clear_dac;
  wire idle_led;
  wire overflow_led;
  wire underflow_led;
  wire analog_trigger;
  wire sc_noc_1;
  wire sc_noc_2;
  wire trigger_start_mode;
  wire trigger_start_mode_uart;
  wire next_trigger_start_mode_uart;
  wire adaptive_mode;
  wire adaptive_mode_uart;
  wire next_adaptive_mode_uart;
  wire signal_select_in;
  wire signal_select_in_uart;
  wire next_signal_select_in_uart;
  wire enable_analog;
  wire enable_analog_uart;
  wire next_enable_analog_uart;
  wire select_tbs_delta_steps;
  wire select_tbs_delta_steps_uart;
  wire next_select_tbs_delta_steps_uart;
  wire uart_start_sampling_strb;
  wire sync_chain_0_sync_o;
  localparam n49_o = 1'b1;
  wire n51_o;
  wire n52_o;
  wire n53_o;
  wire n54_o;
  wire n55_o;
  wire sync_chain_2_sync_o;
  wire n57_o;
  wire debouncer_0_debounced_o;
  wire debouncer_1_debounced_o;
  wire debouncer_2_debounced_o;
  wire debouncer_3_debounced_o;
  wire debouncer_4_debounced_o;
  wire debouncer_5_debounced_o;
  wire debouncer_6_debounced_o;
  wire n86_o;
  wire n87_o;
  wire n88_o;
  wire n89_o;
  wire n90_o;
  wire n91_o;
  wire n92_o;
  wire n93_o;
  wire n94_o;
  wire n95_o;
  wire n96_o;
  wire n97_o;
  wire n98_o;
  wire n99_o;
  wire n100_o;
  wire n101_o;
  wire n102_o;
  wire n103_o;
  wire n104_o;
  wire n105_o;
  wire n106_o;
  wire n107_o;
  wire n109_o;
  wire n110_o;
  wire n111_o;
  wire n112_o;
  wire n113_o;
  wire n114_o;
  wire n115_o;
  wire n116_o;
  wire n117_o;
  wire n118_o;
  wire [1:0] sync_chain_1_sync_o;
  wire [1:0] n120_o;
  wire n122_o;
  wire n123_o;
  wire spike_detector_0_spike_o;
  wire spike_detector_0_spike_strb_o;
  wire adaptive_ctrl_0_increasing_en_o;
  wire adaptive_ctrl_0_decreasing_en_o;
  wire adaptive_ctrl_0_direction_upper_o;
  wire adaptive_ctrl_0_direction_lower_o;
  wire adaptive_ctrl_0_delta_steps_upper_strb_o;
  wire adaptive_ctrl_0_delta_steps_lower_strb_o;
  wire [7:0] adaptive_ctrl_0_delta_steps_upper_o;
  wire [7:0] adaptive_ctrl_0_delta_steps_lower_o;
  wire adaptive_ctrl_0_adapt_on_overflow_strb_o;
  localparam [2:0] n126_o = 3'b010;
  localparam [2:0] n127_o = 3'b010;
  wire [7:0] dac_control_0_dac_counter_value_o;
  wire dac_control_0_dac_finished_strb_o;
  wire dac_control_0_dac_pd_o;
  wire dac_control_0_dac_wr_o;
  wire dac_control_0_dac_clr_o;
  wire [7:0] dac_control_0_dac_o;
  wire n143_o;
  wire [7:0] dac_control_1_dac_counter_value_o;
  wire dac_control_1_dac_finished_strb_o;
  wire dac_control_1_dac_pd_o;
  wire dac_control_1_dac_wr_o;
  wire dac_control_1_dac_clr_o;
  wire [7:0] dac_control_1_dac_o;
  wire n150_o;
  wire [7:0] n162_o;
  wire n163_o;
  wire n165_o;
  wire n166_o;
  wire n169_o;
  wire n172_o;
  wire n174_o;
  wire n177_o;
  wire [7:0] n179_o;
  wire [7:0] n181_o;
  wire [7:0] n183_o;
  wire [7:0] n184_o;
  wire n185_o;
  wire n186_o;
  wire n187_o;
  wire n188_o;
  wire n189_o;
  wire n191_o;
  wire n192_o;
  wire analog_trigger_0_analog_trigger_o;
  wire sc_noc_generator_0_sc_noc_1_o;
  wire sc_noc_generator_0_sc_noc_2_o;
  wire n196_o;
  wire n197_o;
  wire time_measurement_0_overflow_strb_o;
  wire [15:0] time_measurement_0_curr_time_o;
  wire [16:0] spike_encoder_0_encoded_spike_o;
  wire spike_encoder_0_encoded_spike_strb_o;
  wire n202_o;
  wire spike_memory_0_read_strb_o;
  wire [16:0] spike_memory_0_b_data_o;
  wire spike_memory_0_fifo_full_o;
  wire spike_memory_0_fifo_empty_o;
  wire [7:0] memory2uart_0_uart_data_o;
  wire memory2uart_0_tx_start_strb_o;
  wire uart_0_tx_strb_o;
  wire uart_0_tx_o;
  wire uart_0_rx_data_strb_o;
  wire [7:0] uart_0_rx_data_o;
  wire n222_o;
  wire n223_o;
  wire [21:0] n225_o;
  wire [21:0] n227_o;
  wire n258_o;
  wire [2:0] n261_o;
  wire n263_o;
  wire n265_o;
  wire n267_o;
  wire n269_o;
  wire n271_o;
  wire n274_o;
  wire [2:0] n277_o;
  wire n279_o;
  wire n281_o;
  wire n283_o;
  wire n285_o;
  wire [2:0] n288_o;
  wire n290_o;
  wire n291_o;
  wire n292_o;
  wire n293_o;
  wire n294_o;
  wire n295_o;
  wire [2:0] n298_o;
  wire [2:0] n300_o;
  wire n302_o;
  wire n305_o;
  wire n308_o;
  wire [2:0] n310_o;
  wire n311_o;
  wire n313_o;
  wire n315_o;
  wire n316_o;
  wire n317_o;
  wire n318_o;
  wire n321_o;
  wire n324_o;
  wire n327_o;
  wire [2:0] n330_o;
  wire n332_o;
  wire n334_o;
  wire n336_o;
  wire n339_o;
  wire n342_o;
  wire n344_o;
  wire n345_o;
  wire n348_o;
  wire n350_o;
  wire n351_o;
  wire n352_o;
  wire [2:0] n355_o;
  wire n357_o;
  wire n360_o;
  wire n363_o;
  wire [2:0] n365_o;
  wire n366_o;
  wire n368_o;
  wire [6:0] n369_o;
  reg n371_o;
  reg n374_o;
  reg n377_o;
  reg n380_o;
  reg n383_o;
  reg n387_o;
  reg [2:0] n391_o;
  reg n392_o;
  reg n394_o;
  reg n396_o;
  reg n399_o;
  reg n400_o;
  reg n403_o;
  reg n405_o;
  wire n460_o;
  wire n462_o;
  wire n464_o;
  wire n466_o;
  wire n468_o;
  wire n470_o;
  wire [7:0] n472_o;
  wire [7:0] n474_o;
  wire [7:0] n476_o;
  wire [7:0] n478_o;
  wire [7:0] n480_o;
  wire [7:0] n482_o;
  wire [7:0] n484_o;
  wire [7:0] n486_o;
  wire [7:0] n488_o;
  wire [7:0] n490_o;
  wire [7:0] n492_o;
  wire [7:0] n494_o;
  wire n496_o;
  wire n498_o;
  wire n500_o;
  wire [19:0] n502_o;
  wire [19:0] n504_o;
  wire [19:0] n506_o;
  wire [19:0] n508_o;
  wire [19:0] n510_o;
  wire [19:0] n512_o;
  wire [19:0] n514_o;
  wire [19:0] n516_o;
  wire [19:0] n518_o;
  wire n520_o;
  wire n522_o;
  wire n524_o;
  wire n526_o;
  wire [9:0] n528_o;
  wire [9:0] n530_o;
  wire [9:0] n532_o;
  wire [9:0] n534_o;
  wire n536_o;
  wire n538_o;
  wire n540_o;
  wire n542_o;
  wire n544_o;
  wire [7:0] n546_o;
  wire [7:0] n548_o;
  wire [7:0] n550_o;
  wire [7:0] n552_o;
  wire [7:0] n554_o;
  wire n556_o;
  wire n558_o;
  wire n560_o;
  wire n562_o;
  wire n564_o;
  wire n566_o;
  wire n568_o;
  wire n570_o;
  wire n572_o;
  wire n574_o;
  wire n576_o;
  wire n578_o;
  wire n580_o;
  wire n582_o;
  wire n584_o;
  wire n586_o;
  wire n588_o;
  wire n590_o;
  wire n592_o;
  wire n593_o;
  wire n595_o;
  wire n596_o;
  wire n597_o;
  wire n599_o;
  wire n600_o;
  wire n601_o;
  wire n602_o;
  wire n605_o;
  wire n606_o;
  wire n607_o;
  wire n608_o;
  wire n609_o;
  wire n611_o;
  wire n612_o;
  wire n613_o;
  wire n614_o;
  wire n615_o;
  wire n618_o;
  wire n621_o;
  wire n623_o;
  wire n624_o;
  wire n625_o;
  wire n626_o;
  wire n627_o;
  wire n629_o;
  wire n631_o;
  wire n633_o;
  wire n634_o;
  wire n635_o;
  wire n636_o;
  wire n637_o;
  wire n639_o;
  wire n641_o;
  wire n643_o;
  wire n645_o;
  wire n646_o;
  wire n647_o;
  wire n648_o;
  wire n649_o;
  wire n651_o;
  wire n653_o;
  wire n655_o;
  wire n657_o;
  wire n658_o;
  wire n659_o;
  wire n660_o;
  wire n661_o;
  wire n663_o;
  wire n664_o;
  wire n666_o;
  wire n668_o;
  wire n670_o;
  wire n671_o;
  wire n672_o;
  wire n673_o;
  wire n674_o;
  wire n676_o;
  wire n677_o;
  wire n679_o;
  wire n681_o;
  wire n683_o;
  wire n684_o;
  wire n685_o;
  wire n686_o;
  wire n687_o;
  wire n689_o;
  wire n690_o;
  wire n691_o;
  wire n693_o;
  wire n695_o;
  wire n697_o;
  wire n698_o;
  wire n699_o;
  wire n700_o;
  wire n701_o;
  wire n703_o;
  wire n704_o;
  wire n705_o;
  wire n707_o;
  wire n709_o;
  wire n711_o;
  wire n712_o;
  wire n713_o;
  wire n714_o;
  wire n715_o;
  wire n717_o;
  wire n718_o;
  wire n719_o;
  wire n720_o;
  wire n722_o;
  wire n724_o;
  wire n726_o;
  wire n727_o;
  wire n728_o;
  wire n729_o;
  wire n730_o;
  wire n732_o;
  wire n733_o;
  wire n734_o;
  wire n735_o;
  wire n737_o;
  wire n739_o;
  wire n741_o;
  wire n742_o;
  wire n743_o;
  wire n744_o;
  wire n745_o;
  wire n747_o;
  wire n748_o;
  wire n749_o;
  wire n750_o;
  wire n751_o;
  wire n753_o;
  wire n755_o;
  wire n757_o;
  wire n758_o;
  wire n759_o;
  wire n760_o;
  wire n761_o;
  wire n763_o;
  wire n764_o;
  wire n765_o;
  wire n766_o;
  wire n767_o;
  wire n769_o;
  wire n771_o;
  wire n773_o;
  wire n774_o;
  wire n775_o;
  wire n776_o;
  wire n778_o;
  wire [7:0] n779_o;
  wire n780_o;
  wire n781_o;
  wire n782_o;
  wire n783_o;
  wire n784_o;
  wire n786_o;
  wire n788_o;
  wire n790_o;
  wire n791_o;
  wire n792_o;
  wire n794_o;
  wire [9:0] n795_o;
  wire n796_o;
  wire [7:0] n797_o;
  wire n798_o;
  wire n799_o;
  wire n800_o;
  wire n801_o;
  wire n802_o;
  wire n804_o;
  wire n806_o;
  wire n808_o;
  wire n809_o;
  wire n811_o;
  wire [19:0] n812_o;
  wire [19:0] n813_o;
  wire [19:0] n814_o;
  wire n815_o;
  wire [9:0] n816_o;
  wire n817_o;
  wire [7:0] n818_o;
  wire n819_o;
  wire n820_o;
  wire n821_o;
  wire n822_o;
  wire n823_o;
  wire n825_o;
  wire n827_o;
  wire n829_o;
  wire n831_o;
  wire [7:0] n832_o;
  wire [7:0] n833_o;
  wire n834_o;
  wire [19:0] n835_o;
  wire [19:0] n836_o;
  wire [19:0] n837_o;
  wire n838_o;
  wire [9:0] n839_o;
  wire n840_o;
  wire [7:0] n841_o;
  wire n842_o;
  wire n843_o;
  wire n844_o;
  wire n845_o;
  wire n846_o;
  wire n848_o;
  wire n850_o;
  wire n853_o;
  wire n855_o;
  wire n856_o;
  wire n857_o;
  wire n858_o;
  wire [19:0] n859_o;
  wire [19:0] n860_o;
  wire [19:0] n861_o;
  wire n862_o;
  wire [9:0] n863_o;
  wire n864_o;
  wire [7:0] n865_o;
  wire n866_o;
  wire n867_o;
  wire n868_o;
  wire n869_o;
  wire n870_o;
  wire n872_o;
  wire n875_o;
  wire n876_o;
  wire n877_o;
  wire n878_o;
  wire n879_o;
  wire n880_o;
  wire n881_o;
  wire n882_o;
  wire n883_o;
  wire n884_o;
  wire n885_o;
  wire n886_o;
  wire n887_o;
  reg n888_q;
  reg n889_q;
  reg n890_q;
  reg n891_q;
  reg n892_q;
  reg n893_q;
  reg n894_q;
  reg n895_q;
  reg n896_q;
  reg n897_q;
  reg n898_q;
  reg n899_q;
  reg n900_q;
  reg [7:0] n901_q;
  reg [7:0] n902_q;
  reg n903_q;
  reg [19:0] n904_q;
  reg [19:0] n905_q;
  reg [19:0] n906_q;
  reg n907_q;
  reg [9:0] n908_q;
  reg n909_q;
  reg [7:0] n910_q;
  reg [21:0] n911_q;
  reg [2:0] n912_q;
  reg n913_q;
  reg n914_q;
  reg n915_q;
  reg n916_q;
  reg n917_q;
  reg n918_q;
  reg n919_q;
  reg n920_q;
  assign signal_select_en_o = n885_o; //(module output)
  assign signal_select_in_o = signal_select_in; //(module output)
  assign amp_sdn_o = enable_analog; //(module output)
  assign dac_pd_o = n886_o; //(module output)
  assign dac_clr_o = n887_o; //(module output)
  assign dac_wr_upper_o = dac_wr_upper; //(module output)
  assign dac_wr_lower_o = dac_wr_lower; //(module output)
  assign dac_upper_o = dac_upper; //(module output)
  assign dac_lower_o = dac_lower; //(module output)
  assign idle_led_o = idle_led; //(module output)
  assign overflow_led_o = overflow_led; //(module output)
  assign underflow_led_o = underflow_led; //(module output)
  assign analog_trigger_o = analog_trigger; //(module output)
  assign sc_noc_1_o = sc_noc_1; //(module output)
  assign sc_noc_2_o = sc_noc_2; //(module output)
  assign uart_tx_o = uart_tx; //(module output)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:165:8  */
  assign reset_i = n53_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:166:8  */
  assign reset_sync = n51_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:167:8  */
  assign reset_entity = n55_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:170:8  */
  assign trigger_start_sampling_sync = n57_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:173:8  */
  assign trigger_start_sampling_debounced = debouncer_0_debounced_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:174:8  */
  assign trigger_start_mode_debounced = debouncer_1_debounced_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:175:8  */
  assign adaptive_mode_debounced = debouncer_2_debounced_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:176:8  */
  assign control_mode_debounced = debouncer_3_debounced_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:177:8  */
  assign signal_select_in_debounced = debouncer_4_debounced_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:178:8  */
  assign enable_debounced = debouncer_5_debounced_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:179:8  */
  assign select_tbs_delta_steps_debounced = debouncer_6_debounced_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:182:8  */
  assign adaptive_mode_d = n888_q; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:183:8  */
  assign control_mode_d = n889_q; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:184:8  */
  assign signal_select_in_d = n890_q; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:185:8  */
  assign select_tbs_delta_steps_d = n891_q; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:186:8  */
  assign trigger_start_mode_d = n892_q; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:187:8  */
  assign trigger_start_sampling_d = n893_q; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:189:8  */
  assign adaptive_mode_edge_f = n93_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:190:8  */
  assign adaptive_mode_edge_r = n95_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:191:8  */
  assign control_mode_edge_f = n97_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:192:8  */
  assign control_mode_edge_r = n99_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:193:8  */
  assign select_tbs_delta_steps_edge_f = n105_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:194:8  */
  assign select_tbs_delta_steps_edge_r = n107_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:195:8  */
  assign signal_select_in_edge_f = n101_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:196:8  */
  assign signal_select_in_edge_r = n103_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:197:8  */
  assign trigger_start_mode_edge_f = n89_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:198:8  */
  assign trigger_start_mode_edge_r = n91_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:199:8  */
  assign trigger_start_sampling_edge_r = n87_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:202:8  */
  assign input_changed_strb = n118_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:203:8  */
  assign input_changed_reset_strb = n371_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:205:8  */
  assign uart_changed_strb = n850_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:206:8  */
  assign uart_changed_reset_strb = n374_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:212:8  */
  assign comp_upper_sync = n122_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:213:8  */
  assign comp_lower_sync = n123_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:216:8  */
  assign spike = spike_detector_0_spike_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:217:8  */
  assign spike_strb = spike_detector_0_spike_strb_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:218:8  */
  assign detection_en = n894_q; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:219:8  */
  assign pause_detection_strb = n189_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:222:8  */
  assign increasing_en = n191_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:223:8  */
  assign decreasing_en = n192_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:224:8  */
  assign next_tbs_increasing_en = n169_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:225:8  */
  assign next_tbs_decreasing_en = n177_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:226:8  */
  assign tbs_increasing_en = n895_q; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:227:8  */
  assign tbs_decreasing_en = n896_q; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:228:8  */
  assign adaptive_increasing_en = adaptive_ctrl_0_increasing_en_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:229:8  */
  assign adaptive_decreasing_en = adaptive_ctrl_0_decreasing_en_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:232:8  */
  assign tbs_delta_steps_upper = n179_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:233:8  */
  assign tbs_delta_steps_lower = n181_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:236:8  */
  assign reset_delta_steps_strb = n377_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:237:8  */
  assign atbs_direction_upper = adaptive_ctrl_0_direction_upper_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:238:8  */
  assign atbs_direction_lower = adaptive_ctrl_0_direction_lower_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:239:8  */
  assign atbs_delta_steps_upper_strb = adaptive_ctrl_0_delta_steps_upper_strb_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:240:8  */
  assign atbs_delta_steps_lower_strb = adaptive_ctrl_0_delta_steps_lower_strb_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:241:8  */
  assign atbs_delta_steps_upper = adaptive_ctrl_0_delta_steps_upper_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:242:8  */
  assign atbs_delta_steps_lower = adaptive_ctrl_0_delta_steps_lower_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:243:8  */
  assign adapt_on_overflow_strb = adaptive_ctrl_0_adapt_on_overflow_strb_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:246:8  */
  assign clear_dac = n897_q; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:247:8  */
  assign dac_init_strb = n380_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:249:8  */
  assign direction_upper = n187_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:250:8  */
  assign update_dac_upper_strb = n143_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:251:8  */
  assign dac_counter_value_upper = dac_control_0_dac_counter_value_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:252:8  */
  assign dac_finished_upper_strb = dac_control_0_dac_finished_strb_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:253:8  */
  assign dac_pd_upper = dac_control_0_dac_pd_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:254:8  */
  assign dac_wr_upper = dac_control_0_dac_wr_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:255:8  */
  assign dac_clr_upper = dac_control_0_dac_clr_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:256:8  */
  assign dac_upper = dac_control_0_dac_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:258:8  */
  assign direction_lower = n188_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:259:8  */
  assign update_dac_lower_strb = n150_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:260:8  */
  assign dac_counter_value_lower = dac_control_1_dac_counter_value_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:261:8  */
  assign dac_finished_lower_strb = dac_control_1_dac_finished_strb_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:262:8  */
  assign dac_pd_lower = dac_control_1_dac_pd_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:263:8  */
  assign dac_wr_lower = dac_control_1_dac_wr_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:264:8  */
  assign dac_clr_lower = dac_control_1_dac_clr_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:265:8  */
  assign dac_lower = dac_control_1_dac_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:269:8  */
  assign delta_steps_upper_strb = n185_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:270:8  */
  assign delta_steps_lower_strb = n186_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:271:8  */
  assign delta_steps_upper = n183_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:272:8  */
  assign delta_steps_lower = n184_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:277:8  */
  assign reset_time_measurement = n197_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:278:8  */
  assign reset_time_measurement_strb = n383_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:279:8  */
  assign overflow_strb = time_measurement_0_overflow_strb_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:280:8  */
  assign curr_time = time_measurement_0_curr_time_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:283:8  */
  assign encoded_spike = spike_encoder_0_encoded_spike_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:284:8  */
  assign encoded_spike_strb = spike_encoder_0_encoded_spike_strb_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:287:8  */
  assign select_enable_write = n898_q; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:288:8  */
  assign enable_write_mux = n202_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:291:8  */
  assign enable_read = n899_q; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:292:8  */
  assign read_strb = spike_memory_0_read_strb_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:293:8  */
  assign b_data = spike_memory_0_b_data_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:294:8  */
  assign fifo_full = spike_memory_0_fifo_full_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:295:8  */
  assign fifo_empty = spike_memory_0_fifo_empty_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:298:8  */
  assign uart_reset = n853_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:299:8  */
  assign tx_start_strb = memory2uart_0_tx_start_strb_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:300:8  */
  assign uart_tx_strb = uart_0_tx_strb_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:301:8  */
  assign uart_tx = uart_0_tx_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:302:8  */
  assign tx_data = memory2uart_0_uart_data_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:303:8  */
  assign uart_rx_data_strb = uart_0_rx_data_strb_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:304:8  */
  assign uart_rx_data = uart_0_rx_data_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:308:8  */
  assign analog_trigger_uart = n900_q; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:309:8  */
  assign next_analog_trigger_uart = n855_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:310:8  */
  assign analog_trigger_period_adj_uart = n901_q; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:311:8  */
  assign next_analog_trigger_period_adj_uart = n832_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:312:8  */
  assign analog_trigger_duty_cycle_adj_uart = n902_q; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:313:8  */
  assign next_analog_trigger_duty_cycle_adj_uart = n833_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:315:8  */
  assign sc_noc_generator_uart = n903_q; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:316:8  */
  assign next_sc_noc_generator_uart = n858_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:317:8  */
  assign sc_noc_generator_period_adj_uart = n904_q; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:318:8  */
  assign next_sc_noc_generator_period_adj_uart = n859_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:319:8  */
  assign sc_noc_generator_duty_cycle_adj_uart = n905_q; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:320:8  */
  assign next_sc_noc_generator_duty_cycle_adj_uart = n860_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:321:8  */
  assign sc_noc_generator_overlap_adj_uart = n906_q; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:322:8  */
  assign next_sc_noc_generator_overlap_adj_uart = n861_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:324:8  */
  assign baudrate_uart = n907_q; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:325:8  */
  assign next_baudrate_uart = n862_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:326:8  */
  assign baudrate_adj_uart = n908_q; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:327:8  */
  assign next_baudrate_adj_uart = n863_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:329:8  */
  assign tbs_virtual_delta_steps_uart = n909_q; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:330:8  */
  assign next_tbs_virtual_delta_steps_uart = n864_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:331:8  */
  assign next_tbs_virtual_delta_steps_adj_uart = n865_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:332:8  */
  assign tbs_virtual_delta_steps_adj_uart = n910_q; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:337:8  */
  assign main_counter_value = n911_q; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:338:8  */
  assign next_main_counter_value = n227_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:340:8  */
  assign reset_main_counter_strb = n387_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:344:8  */
  assign state = n912_q; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:345:8  */
  assign next_state = n391_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:347:8  */
  assign next_idle_led = n392_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:348:8  */
  assign next_overflow_led = n394_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:349:8  */
  assign next_underflow_led = n396_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:350:8  */
  assign next_select_enable_write = n399_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:351:8  */
  assign next_enable_read = n400_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:352:8  */
  assign next_detection_en = n403_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:353:8  */
  assign next_clear_dac = n405_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:356:8  */
  assign idle_led = n913_q; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:357:8  */
  assign overflow_led = n914_q; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:358:8  */
  assign underflow_led = n915_q; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:361:8  */
  assign analog_trigger = analog_trigger_0_analog_trigger_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:364:8  */
  assign sc_noc_1 = sc_noc_generator_0_sc_noc_1_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:365:8  */
  assign sc_noc_2 = sc_noc_generator_0_sc_noc_2_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:369:8  */
  assign trigger_start_mode = n876_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:370:8  */
  assign trigger_start_mode_uart = n916_q; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:371:8  */
  assign next_trigger_start_mode_uart = n866_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:373:8  */
  assign adaptive_mode = n878_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:374:8  */
  assign adaptive_mode_uart = n917_q; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:375:8  */
  assign next_adaptive_mode_uart = n867_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:377:8  */
  assign signal_select_in = n880_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:378:8  */
  assign signal_select_in_uart = n918_q; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:379:8  */
  assign next_signal_select_in_uart = n868_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:381:8  */
  assign enable_analog = n882_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:382:8  */
  assign enable_analog_uart = n919_q; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:383:8  */
  assign next_enable_analog_uart = n869_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:385:8  */
  assign select_tbs_delta_steps = n884_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:386:8  */
  assign select_tbs_delta_steps_uart = n920_q; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:387:8  */
  assign next_select_tbs_delta_steps_uart = n870_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:389:8  */
  assign uart_start_sampling_strb = n872_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:398:9  */
  sync_chain_2_1 sync_chain_0 (
    .clock_i(clock_i),
    .reset_i(reset_btn_i),
    .async_i(n49_o),
    .sync_o(sync_chain_0_sync_o));
  assign n51_o = sync_chain_0_sync_o; // extract
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:413:14  */
  assign n52_o = ~reset_sync;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:413:29  */
  assign n53_o = n52_o | uart_reset;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:414:27  */
  assign n54_o = reset_i | input_changed_reset_strb;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:414:55  */
  assign n55_o = n54_o | uart_changed_reset_strb;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:418:3  */
  sync_chain_2_1 sync_chain_2 (
    .clock_i(clock_i),
    .reset_i(reset_i),
    .async_i(trigger_start_sampling_i),
    .sync_o(sync_chain_2_sync_o));
  assign n57_o = sync_chain_2_sync_o; // extract
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:435:9  */
  debouncer_12_2500 debouncer_0 (
    .clock_i(clock_i),
    .reset_i(reset_i),
    .bouncing_i(trigger_start_sampling_i),
    .debounced_o(debouncer_0_debounced_o));
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:448:3  */
  debouncer_21_2000000 debouncer_1 (
    .clock_i(clock_i),
    .reset_i(reset_i),
    .bouncing_i(trigger_start_mode_i),
    .debounced_o(debouncer_1_debounced_o));
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:461:3  */
  debouncer_21_2000000 debouncer_2 (
    .clock_i(clock_i),
    .reset_i(reset_i),
    .bouncing_i(adaptive_mode_i),
    .debounced_o(debouncer_2_debounced_o));
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:474:3  */
  debouncer_21_2000000 debouncer_3 (
    .clock_i(clock_i),
    .reset_i(reset_i),
    .bouncing_i(control_mode_i),
    .debounced_o(debouncer_3_debounced_o));
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:487:3  */
  debouncer_21_2000000 debouncer_4 (
    .clock_i(clock_i),
    .reset_i(reset_i),
    .bouncing_i(signal_select_in_i),
    .debounced_o(debouncer_4_debounced_o));
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:500:3  */
  debouncer_21_2000000 debouncer_5 (
    .clock_i(clock_i),
    .reset_i(reset_i),
    .bouncing_i(enable_i),
    .debounced_o(debouncer_5_debounced_o));
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:513:3  */
  debouncer_21_2000000 debouncer_6 (
    .clock_i(clock_i),
    .reset_i(reset_i),
    .bouncing_i(select_tbs_delta_steps_i),
    .debounced_o(debouncer_6_debounced_o));
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:547:37  */
  assign n86_o = ~trigger_start_sampling_d;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:547:67  */
  assign n87_o = n86_o & trigger_start_sampling_sync;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:548:58  */
  assign n88_o = ~trigger_start_mode_debounced;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:548:53  */
  assign n89_o = trigger_start_mode_d & n88_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:549:39  */
  assign n90_o = ~trigger_start_mode_d;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:549:65  */
  assign n91_o = n90_o & trigger_start_mode_debounced;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:550:48  */
  assign n92_o = ~adaptive_mode_debounced;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:550:43  */
  assign n93_o = adaptive_mode_d & n92_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:551:34  */
  assign n94_o = ~adaptive_mode_d;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:551:55  */
  assign n95_o = n94_o & adaptive_mode_debounced;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:552:46  */
  assign n96_o = ~control_mode_debounced;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:552:41  */
  assign n97_o = control_mode_d & n96_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:553:33  */
  assign n98_o = ~control_mode_d;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:553:53  */
  assign n99_o = n98_o & control_mode_debounced;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:554:54  */
  assign n100_o = ~signal_select_in_debounced;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:554:49  */
  assign n101_o = signal_select_in_d & n100_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:555:37  */
  assign n102_o = ~signal_select_in_d;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:555:61  */
  assign n103_o = n102_o & signal_select_in_debounced;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:556:66  */
  assign n104_o = ~select_tbs_delta_steps_debounced;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:556:61  */
  assign n105_o = select_tbs_delta_steps_d & n104_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:557:43  */
  assign n106_o = ~select_tbs_delta_steps_d;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:557:73  */
  assign n107_o = n106_o & select_tbs_delta_steps_debounced;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:559:67  */
  assign n109_o = trigger_start_mode_edge_f | trigger_start_mode_edge_r;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:559:102  */
  assign n110_o = n109_o | adaptive_mode_edge_f;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:560:56  */
  assign n111_o = n110_o | adaptive_mode_edge_r;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:560:86  */
  assign n112_o = n111_o | control_mode_edge_f;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:561:55  */
  assign n113_o = n112_o | control_mode_edge_r;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:561:84  */
  assign n114_o = n113_o | signal_select_in_edge_f;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:562:59  */
  assign n115_o = n114_o | signal_select_in_edge_r;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:562:92  */
  assign n116_o = n115_o | select_tbs_delta_steps_edge_f;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:563:65  */
  assign n117_o = n116_o | select_tbs_delta_steps_edge_r;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:559:29  */
  assign n118_o = n117_o ? 1'b1 : 1'b0;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:572:9  */
  sync_chain_2_2 sync_chain_1 (
    .clock_i(clock_i),
    .reset_i(reset_i),
    .async_i(n120_o),
    .sync_o(sync_chain_1_sync_o));
  assign n120_o = {comp_lower_i, comp_upper_i};
  assign n122_o = sync_chain_1_sync_o[0]; // extract
  assign n123_o = sync_chain_1_sync_o[1]; // extract
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:589:3  */
  spike_detector spike_detector_0 (
    .clock_i(clock_i),
    .reset_i(reset_entity),
    .detection_en_i(detection_en),
    .comp_upper_i(comp_upper_sync),
    .comp_lower_i(comp_lower_sync),
    .change_upper_strb_i(delta_steps_upper_strb),
    .change_lower_strb_i(delta_steps_lower_strb),
    .stopped_changing_upper_strb_i(dac_finished_upper_strb),
    .stopped_changing_lower_strb_i(dac_finished_lower_strb),
    .increasing_en_i(increasing_en),
    .decreasing_en_i(decreasing_en),
    .pause_detection_strb_i(pause_detection_strb),
    .spike_o(spike_detector_0_spike_o),
    .spike_strb_o(spike_detector_0_spike_strb_o));
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:611:3  */
  adaptive_threshold_control_16_8_8_255_0_3_2 adaptive_ctrl_0 (
    .clock_i(clock_i),
    .reset_i(reset_entity),
    .sync_reset_i(reset_delta_steps_strb),
    .overflow_strb_i(overflow_strb),
    .curr_time_i(curr_time),
    .spike_i(spike),
    .spike_strb_i(spike_strb),
    .d_max_i(n126_o),
    .d_min_i(n127_o),
    .increasing_en_o(adaptive_ctrl_0_increasing_en_o),
    .decreasing_en_o(adaptive_ctrl_0_decreasing_en_o),
    .direction_upper_o(adaptive_ctrl_0_direction_upper_o),
    .direction_lower_o(adaptive_ctrl_0_direction_lower_o),
    .delta_steps_upper_strb_o(adaptive_ctrl_0_delta_steps_upper_strb_o),
    .delta_steps_lower_strb_o(adaptive_ctrl_0_delta_steps_lower_strb_o),
    .delta_steps_upper_o(adaptive_ctrl_0_delta_steps_upper_o),
    .delta_steps_lower_o(adaptive_ctrl_0_delta_steps_lower_o),
    .adapt_on_overflow_strb_o(adaptive_ctrl_0_adapt_on_overflow_strb_o));
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:645:9  */
  dac_control_8_8_1_100 dac_control_0 (
    .clock_i(clock_i),
    .reset_i(reset_entity),
    .enable_dac_i(enable_analog),
    .clear_dac_i(clear_dac),
    .adaptive_mode_i(adaptive_mode),
    .select_tbs_delta_steps_i(select_tbs_delta_steps),
    .direction_i(direction_upper),
    .update_dac_strb_i(update_dac_upper_strb),
    .delta_steps_i(delta_steps_upper),
    .dac_counter_value_o(dac_control_0_dac_counter_value_o),
    .dac_finished_strb_o(dac_control_0_dac_finished_strb_o),
    .dac_pd_o(dac_control_0_dac_pd_o),
    .dac_wr_o(dac_control_0_dac_wr_o),
    .dac_clr_o(dac_control_0_dac_clr_o),
    .dac_o(dac_control_0_dac_o));
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:676:51  */
  assign n143_o = delta_steps_upper_strb | dac_init_strb;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:680:9  */
  dac_control_8_8_0_100 dac_control_1 (
    .clock_i(clock_i),
    .reset_i(reset_entity),
    .enable_dac_i(enable_analog),
    .clear_dac_i(clear_dac),
    .adaptive_mode_i(adaptive_mode),
    .select_tbs_delta_steps_i(select_tbs_delta_steps),
    .direction_i(direction_lower),
    .update_dac_strb_i(update_dac_lower_strb),
    .delta_steps_i(delta_steps_lower),
    .dac_counter_value_o(dac_control_1_dac_counter_value_o),
    .dac_finished_strb_o(dac_control_1_dac_finished_strb_o),
    .dac_pd_o(dac_control_1_dac_pd_o),
    .dac_wr_o(dac_control_1_dac_wr_o),
    .dac_clr_o(dac_control_1_dac_clr_o),
    .dac_o(dac_control_1_dac_o));
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:711:51  */
  assign n150_o = delta_steps_lower_strb | dac_init_strb;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:739:54  */
  assign n162_o = 8'b11111111 - tbs_delta_steps_upper;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:739:33  */
  assign n163_o = $unsigned(dac_counter_value_upper) > $unsigned(n162_o);
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:739:107  */
  assign n165_o = dac_counter_value_upper == 8'b11111111;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:739:79  */
  assign n166_o = n163_o | n165_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:739:5  */
  assign n169_o = n166_o ? 1'b0 : 1'b1;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:746:109  */
  assign n172_o = dac_counter_value_lower == 8'b00000000;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:746:81  */
  assign n174_o = 1'b0 | n172_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:746:5  */
  assign n177_o = n174_o ? 1'b0 : 1'b1;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:757:61  */
  assign n179_o = select_tbs_delta_steps ? tbs_virtual_delta_steps_adj_uart : 8'b00000001;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:758:61  */
  assign n181_o = select_tbs_delta_steps ? tbs_virtual_delta_steps_adj_uart : 8'b00000001;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:768:47  */
  assign n183_o = adaptive_mode ? atbs_delta_steps_upper : tbs_delta_steps_upper;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:769:47  */
  assign n184_o = adaptive_mode ? atbs_delta_steps_lower : tbs_delta_steps_lower;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:774:57  */
  assign n185_o = adaptive_mode ? atbs_delta_steps_upper_strb : spike_strb;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:775:57  */
  assign n186_o = adaptive_mode ? atbs_delta_steps_lower_strb : spike_strb;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:780:43  */
  assign n187_o = adaptive_mode ? atbs_direction_upper : spike;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:781:43  */
  assign n188_o = adaptive_mode ? atbs_direction_lower : spike;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:784:50  */
  assign n189_o = adaptive_mode ? adapt_on_overflow_strb : 1'b0;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:788:43  */
  assign n191_o = adaptive_mode ? adaptive_increasing_en : tbs_increasing_en;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:789:43  */
  assign n192_o = adaptive_mode ? adaptive_decreasing_en : tbs_decreasing_en;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:795:9  */
  analog_trig_8 analog_trigger_0 (
    .clock_i(clock_i),
    .reset_i(reset_entity),
    .enable_i(enable_analog),
    .period_adj_i(analog_trigger_period_adj_uart),
    .duty_cycle_adj_i(analog_trigger_duty_cycle_adj_uart),
    .analog_trigger_o(analog_trigger_0_analog_trigger_o));
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:816:3  */
  sc_noc_generator_20 sc_noc_generator_0 (
    .clock_i(clock_i),
    .reset_i(reset_entity),
    .enable_i(enable_analog),
    .period_adj_i(sc_noc_generator_period_adj_uart),
    .duty_cycle_adj_i(sc_noc_generator_duty_cycle_adj_uart),
    .overlap_adj_i(sc_noc_generator_overlap_adj_uart),
    .sc_noc_1_o(sc_noc_generator_0_sc_noc_1_o),
    .sc_noc_2_o(sc_noc_generator_0_sc_noc_2_o));
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:839:74  */
  assign n196_o = reset_time_measurement_strb & trigger_start_mode;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:839:42  */
  assign n197_o = reset_entity | n196_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:840:3  */
  time_measurement_16_65536 time_measurement_0 (
    .clock_i(clock_i),
    .reset_i(reset_time_measurement),
    .overflow_strb_o(time_measurement_0_overflow_strb_o),
    .curr_time_o(time_measurement_0_curr_time_o));
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:855:3  */
  spike_encoder_16_17 spike_encoder_0 (
    .clock_i(clock_i),
    .reset_i(reset_entity),
    .spike_i(spike),
    .spike_strb_i(spike_strb),
    .overflow_strb_i(overflow_strb),
    .curr_time_i(curr_time),
    .encoded_spike_o(spike_encoder_0_encoded_spike_o),
    .encoded_spike_strb_o(spike_encoder_0_encoded_spike_strb_o));
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:874:42  */
  assign n202_o = select_enable_write ? encoded_spike_strb : 1'b0;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:878:3  */
  spike_memory_17_7 spike_memory_0 (
    .clock_i(clock_i),
    .reset_i(reset_entity),
    .enable_write_i(enable_write_mux),
    .a_data_i(encoded_spike),
    .enable_read_i(enable_read),
    .tx_strb_i(uart_tx_strb),
    .read_strb_o(spike_memory_0_read_strb_o),
    .b_data_o(spike_memory_0_b_data_o),
    .fifo_full_o(spike_memory_0_fifo_full_o),
    .fifo_empty_o(spike_memory_0_fifo_empty_o));
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:901:3  */
  memory2uart_17_8 memory2uart_0 (
    .clock_i(clock_i),
    .reset_i(reset_entity),
    .read_strb_i(read_strb),
    .tx_strb_i(uart_tx_strb),
    .memory_data_i(b_data),
    .uart_data_o(memory2uart_0_uart_data_o),
    .tx_start_strb_o(memory2uart_0_tx_start_strb_o));
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:919:3  */
  uart_10_8 uart_0 (
    .clock_i(clock_i),
    .reset_i(reset_i),
    .baudrate_adj_i(baudrate_adj_uart),
    .tx_start_strb_i(tx_start_strb),
    .tx_data_i(tx_data),
    .rx_i(uart_rx_i),
    .tx_strb_o(uart_0_tx_strb_o),
    .tx_o(uart_0_tx_o),
    .rx_data_strb_o(uart_0_rx_data_strb_o),
    .rx_data_o(uart_0_rx_data_o));
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:964:39  */
  assign n222_o = main_counter_value == 22'b1011011100011010111111;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:964:62  */
  assign n223_o = n222_o | reset_main_counter_strb;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:967:71  */
  assign n225_o = main_counter_value + 22'b0000000000000000000001;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:964:17  */
  assign n227_o = n223_o ? 22'b0000000000000000000000 : n225_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1020:9  */
  assign n258_o = fifo_empty ? 1'b0 : enable_read;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1031:9  */
  assign n261_o = enable_analog ? 3'b001 : 3'b000;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1031:9  */
  assign n263_o = enable_analog ? 1'b0 : idle_led;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1019:7  */
  assign n265_o = state == 3'b000;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1038:7  */
  assign n267_o = state == 3'b001;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1058:9  */
  assign n269_o = fifo_empty ? 1'b0 : enable_read;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1063:31  */
  assign n271_o = $unsigned(main_counter_value) >= $unsigned(22'b0111101000010011100100);
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1063:9  */
  assign n274_o = n271_o ? 1'b1 : 1'b0;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1063:9  */
  assign n277_o = n271_o ? 3'b011 : 3'b010;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1063:9  */
  assign n279_o = n271_o ? 1'b1 : clear_dac;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1057:7  */
  assign n281_o = state == 3'b010;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1076:9  */
  assign n283_o = fifo_empty ? 1'b0 : enable_read;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1081:31  */
  assign n285_o = $unsigned(main_counter_value) >= $unsigned(22'b0111101000010101001000);
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1081:9  */
  assign n288_o = n285_o ? 3'b100 : 3'b011;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1075:7  */
  assign n290_o = state == 3'b011;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1089:37  */
  assign n291_o = input_changed_strb | uart_changed_strb;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1093:29  */
  assign n292_o = ~enable_analog;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1098:34  */
  assign n293_o = ~trigger_start_mode;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1098:40  */
  assign n294_o = n293_o | trigger_start_sampling_debounced;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1098:82  */
  assign n295_o = n294_o | uart_start_sampling_strb;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1098:9  */
  assign n298_o = n295_o ? 3'b101 : 3'b100;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1093:9  */
  assign n300_o = n292_o ? 3'b000 : n298_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1093:9  */
  assign n302_o = n292_o ? 1'b1 : idle_led;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1089:9  */
  assign n305_o = n291_o ? 1'b1 : 1'b0;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1089:9  */
  assign n308_o = n291_o ? 1'b1 : 1'b0;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1089:9  */
  assign n310_o = n291_o ? 3'b001 : n300_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1089:9  */
  assign n311_o = n291_o ? idle_led : n302_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1087:7  */
  assign n313_o = state == 3'b100;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1105:9  */
  assign n315_o = fifo_empty ? 1'b0 : enable_read;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1111:31  */
  assign n316_o = ~trigger_start_mode;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1111:37  */
  assign n317_o = n316_o | trigger_start_sampling_edge_r;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1111:76  */
  assign n318_o = n317_o | uart_start_sampling_strb;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1111:9  */
  assign n321_o = n318_o ? 1'b1 : 1'b0;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1111:9  */
  assign n324_o = n318_o ? 1'b1 : 1'b0;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1111:9  */
  assign n327_o = n318_o ? 1'b1 : 1'b0;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1111:9  */
  assign n330_o = n318_o ? 3'b110 : 3'b101;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1111:9  */
  assign n332_o = n318_o ? 1'b1 : select_enable_write;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1111:9  */
  assign n334_o = n318_o ? 1'b1 : detection_en;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1104:7  */
  assign n336_o = state == 3'b101;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1138:9  */
  assign n339_o = fifo_empty ? 1'b1 : 1'b0;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1138:9  */
  assign n342_o = fifo_empty ? 1'b0 : 1'b1;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1134:9  */
  assign n344_o = fifo_full ? 1'b1 : overflow_led;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1134:9  */
  assign n345_o = fifo_full ? underflow_led : n339_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1134:9  */
  assign n348_o = fifo_full ? 1'b0 : 1'b1;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1134:9  */
  assign n350_o = fifo_full ? 1'b1 : n342_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1150:37  */
  assign n351_o = input_changed_strb | uart_changed_strb;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1154:29  */
  assign n352_o = ~enable_analog;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1154:9  */
  assign n355_o = n352_o ? 3'b000 : 3'b110;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1154:9  */
  assign n357_o = n352_o ? 1'b1 : idle_led;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1150:9  */
  assign n360_o = n351_o ? 1'b1 : 1'b0;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1150:9  */
  assign n363_o = n351_o ? 1'b1 : 1'b0;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1150:9  */
  assign n365_o = n351_o ? 3'b001 : n355_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1150:9  */
  assign n366_o = n351_o ? idle_led : n357_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1132:7  */
  assign n368_o = state == 3'b110;
  assign n369_o = {n368_o, n336_o, n313_o, n290_o, n281_o, n267_o, n265_o};
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1018:5  */
  always @*
    case (n369_o)
      7'b1000000: n371_o = n360_o;
      7'b0100000: n371_o = 1'b0;
      7'b0010000: n371_o = n305_o;
      7'b0001000: n371_o = 1'b0;
      7'b0000100: n371_o = 1'b0;
      7'b0000010: n371_o = 1'b0;
      7'b0000001: n371_o = 1'b0;
      default: n371_o = 1'b0;
    endcase
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1018:5  */
  always @*
    case (n369_o)
      7'b1000000: n374_o = n363_o;
      7'b0100000: n374_o = 1'b0;
      7'b0010000: n374_o = n308_o;
      7'b0001000: n374_o = 1'b0;
      7'b0000100: n374_o = 1'b0;
      7'b0000010: n374_o = 1'b0;
      7'b0000001: n374_o = 1'b0;
      default: n374_o = 1'b0;
    endcase
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1018:5  */
  always @*
    case (n369_o)
      7'b1000000: n377_o = 1'b0;
      7'b0100000: n377_o = n321_o;
      7'b0010000: n377_o = 1'b0;
      7'b0001000: n377_o = 1'b0;
      7'b0000100: n377_o = 1'b0;
      7'b0000010: n377_o = 1'b0;
      7'b0000001: n377_o = 1'b0;
      default: n377_o = 1'b0;
    endcase
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1018:5  */
  always @*
    case (n369_o)
      7'b1000000: n380_o = 1'b0;
      7'b0100000: n380_o = 1'b0;
      7'b0010000: n380_o = 1'b0;
      7'b0001000: n380_o = 1'b0;
      7'b0000100: n380_o = n274_o;
      7'b0000010: n380_o = 1'b0;
      7'b0000001: n380_o = 1'b0;
      default: n380_o = 1'b0;
    endcase
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1018:5  */
  always @*
    case (n369_o)
      7'b1000000: n383_o = 1'b0;
      7'b0100000: n383_o = n324_o;
      7'b0010000: n383_o = 1'b0;
      7'b0001000: n383_o = 1'b0;
      7'b0000100: n383_o = 1'b0;
      7'b0000010: n383_o = 1'b0;
      7'b0000001: n383_o = 1'b0;
      default: n383_o = 1'b0;
    endcase
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1018:5  */
  always @*
    case (n369_o)
      7'b1000000: n387_o = 1'b0;
      7'b0100000: n387_o = n327_o;
      7'b0010000: n387_o = 1'b0;
      7'b0001000: n387_o = 1'b0;
      7'b0000100: n387_o = 1'b0;
      7'b0000010: n387_o = 1'b1;
      7'b0000001: n387_o = 1'b0;
      default: n387_o = 1'b0;
    endcase
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1018:5  */
  always @*
    case (n369_o)
      7'b1000000: n391_o = n365_o;
      7'b0100000: n391_o = n330_o;
      7'b0010000: n391_o = n310_o;
      7'b0001000: n391_o = n288_o;
      7'b0000100: n391_o = n277_o;
      7'b0000010: n391_o = 3'b010;
      7'b0000001: n391_o = n261_o;
      default: n391_o = 3'b000;
    endcase
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1018:5  */
  always @*
    case (n369_o)
      7'b1000000: n392_o = n366_o;
      7'b0100000: n392_o = idle_led;
      7'b0010000: n392_o = n311_o;
      7'b0001000: n392_o = idle_led;
      7'b0000100: n392_o = idle_led;
      7'b0000010: n392_o = idle_led;
      7'b0000001: n392_o = n263_o;
      default: n392_o = idle_led;
    endcase
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1018:5  */
  always @*
    case (n369_o)
      7'b1000000: n394_o = n344_o;
      7'b0100000: n394_o = overflow_led;
      7'b0010000: n394_o = overflow_led;
      7'b0001000: n394_o = overflow_led;
      7'b0000100: n394_o = overflow_led;
      7'b0000010: n394_o = 1'b0;
      7'b0000001: n394_o = overflow_led;
      default: n394_o = overflow_led;
    endcase
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1018:5  */
  always @*
    case (n369_o)
      7'b1000000: n396_o = n345_o;
      7'b0100000: n396_o = underflow_led;
      7'b0010000: n396_o = underflow_led;
      7'b0001000: n396_o = underflow_led;
      7'b0000100: n396_o = underflow_led;
      7'b0000010: n396_o = 1'b0;
      7'b0000001: n396_o = underflow_led;
      default: n396_o = underflow_led;
    endcase
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1018:5  */
  always @*
    case (n369_o)
      7'b1000000: n399_o = n348_o;
      7'b0100000: n399_o = n332_o;
      7'b0010000: n399_o = select_enable_write;
      7'b0001000: n399_o = select_enable_write;
      7'b0000100: n399_o = select_enable_write;
      7'b0000010: n399_o = 1'b0;
      7'b0000001: n399_o = 1'b0;
      default: n399_o = select_enable_write;
    endcase
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1018:5  */
  always @*
    case (n369_o)
      7'b1000000: n400_o = n350_o;
      7'b0100000: n400_o = n315_o;
      7'b0010000: n400_o = enable_read;
      7'b0001000: n400_o = n283_o;
      7'b0000100: n400_o = n269_o;
      7'b0000010: n400_o = enable_read;
      7'b0000001: n400_o = n258_o;
      default: n400_o = enable_read;
    endcase
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1018:5  */
  always @*
    case (n369_o)
      7'b1000000: n403_o = detection_en;
      7'b0100000: n403_o = n334_o;
      7'b0010000: n403_o = detection_en;
      7'b0001000: n403_o = detection_en;
      7'b0000100: n403_o = detection_en;
      7'b0000010: n403_o = 1'b0;
      7'b0000001: n403_o = 1'b0;
      default: n403_o = detection_en;
    endcase
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1018:5  */
  always @*
    case (n369_o)
      7'b1000000: n405_o = clear_dac;
      7'b0100000: n405_o = clear_dac;
      7'b0010000: n405_o = clear_dac;
      7'b0001000: n405_o = clear_dac;
      7'b0000100: n405_o = n279_o;
      7'b0000010: n405_o = 1'b0;
      7'b0000001: n405_o = clear_dac;
      default: n405_o = clear_dac;
    endcase
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1250:25  */
  assign n460_o = uart_rx_data == 8'b01100001;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1253:28  */
  assign n462_o = uart_rx_data == 8'b01100010;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1256:28  */
  assign n464_o = uart_rx_data == 8'b01100011;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1259:28  */
  assign n466_o = uart_rx_data == 8'b01100100;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1262:28  */
  assign n468_o = uart_rx_data == 8'b01100101;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1265:28  */
  assign n470_o = uart_rx_data == 8'b01100110;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1265:9  */
  assign n472_o = n470_o ? 8'b00110001 : analog_trigger_period_adj_uart;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1265:9  */
  assign n474_o = n470_o ? 8'b00011000 : analog_trigger_duty_cycle_adj_uart;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1262:9  */
  assign n476_o = n468_o ? 8'b00110001 : n472_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1262:9  */
  assign n478_o = n468_o ? 8'b00001011 : n474_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1259:9  */
  assign n480_o = n466_o ? 8'b01100011 : n476_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1259:9  */
  assign n482_o = n466_o ? 8'b00110001 : n478_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1256:9  */
  assign n484_o = n464_o ? 8'b01100011 : n480_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1256:9  */
  assign n486_o = n464_o ? 8'b00011000 : n482_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1253:9  */
  assign n488_o = n462_o ? 8'b11000111 : n484_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1253:9  */
  assign n490_o = n462_o ? 8'b01100011 : n486_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1250:9  */
  assign n492_o = n460_o ? 8'b11000111 : n488_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1250:9  */
  assign n494_o = n460_o ? 8'b00110001 : n490_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1271:25  */
  assign n496_o = uart_rx_data == 8'b01100001;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1275:28  */
  assign n498_o = uart_rx_data == 8'b01100010;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1279:28  */
  assign n500_o = uart_rx_data == 8'b01100011;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1279:9  */
  assign n502_o = n500_o ? 20'b00111101000010001111 : sc_noc_generator_period_adj_uart;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1279:9  */
  assign n504_o = n500_o ? 20'b00001111010000100011 : sc_noc_generator_duty_cycle_adj_uart;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1279:9  */
  assign n506_o = n500_o ? 20'b00011110100001000111 : sc_noc_generator_overlap_adj_uart;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1275:9  */
  assign n508_o = n498_o ? 20'b01111010000100011111 : n502_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1275:9  */
  assign n510_o = n498_o ? 20'b00011110100001000111 : n504_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1275:9  */
  assign n512_o = n498_o ? 20'b00111101000010001111 : n506_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1271:9  */
  assign n514_o = n496_o ? 20'b11110100001000111111 : n508_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1271:9  */
  assign n516_o = n496_o ? 20'b00111101000010001111 : n510_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1271:9  */
  assign n518_o = n496_o ? 20'b01111010000100011111 : n512_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1287:25  */
  assign n520_o = uart_rx_data == 8'b01100001;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1289:28  */
  assign n522_o = uart_rx_data == 8'b01100010;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1291:28  */
  assign n524_o = uart_rx_data == 8'b01100011;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1293:28  */
  assign n526_o = uart_rx_data == 8'b01100100;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1293:9  */
  assign n528_o = n526_o ? 10'b0001010111 : baudrate_adj_uart;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1291:9  */
  assign n530_o = n524_o ? 10'b0010101110 : n528_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1289:9  */
  assign n532_o = n522_o ? 10'b0100000100 : n530_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1287:9  */
  assign n534_o = n520_o ? 10'b1000001001 : n532_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1298:25  */
  assign n536_o = uart_rx_data == 8'b01100001;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1300:28  */
  assign n538_o = uart_rx_data == 8'b01100010;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1302:28  */
  assign n540_o = uart_rx_data == 8'b01100011;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1304:28  */
  assign n542_o = uart_rx_data == 8'b01100100;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1306:28  */
  assign n544_o = uart_rx_data == 8'b01100101;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1306:9  */
  assign n546_o = n544_o ? 8'b00100000 : tbs_virtual_delta_steps_adj_uart;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1304:9  */
  assign n548_o = n542_o ? 8'b00010000 : n546_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1302:9  */
  assign n550_o = n540_o ? 8'b00001000 : n548_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1300:9  */
  assign n552_o = n538_o ? 8'b00000100 : n550_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1298:9  */
  assign n554_o = n536_o ? 8'b00000010 : n552_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1310:25  */
  assign n556_o = uart_rx_data == 8'b00110000;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1312:28  */
  assign n558_o = uart_rx_data == 8'b00110001;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1314:28  */
  assign n560_o = uart_rx_data == 8'b00110010;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1316:28  */
  assign n562_o = uart_rx_data == 8'b00110011;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1318:28  */
  assign n564_o = uart_rx_data == 8'b00110100;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1320:28  */
  assign n566_o = uart_rx_data == 8'b00110101;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1322:28  */
  assign n568_o = uart_rx_data == 8'b00110110;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1324:28  */
  assign n570_o = uart_rx_data == 8'b00110111;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1326:28  */
  assign n572_o = uart_rx_data == 8'b00111000;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1328:28  */
  assign n574_o = uart_rx_data == 8'b00111001;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1330:28  */
  assign n576_o = uart_rx_data == 8'b01010101;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1332:28  */
  assign n578_o = uart_rx_data == 8'b01010011;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1334:28  */
  assign n580_o = uart_rx_data == 8'b01010010;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1336:28  */
  assign n582_o = uart_rx_data == 8'b01010100;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1338:28  */
  assign n584_o = uart_rx_data == 8'b01000011;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1340:28  */
  assign n586_o = uart_rx_data == 8'b01000010;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1342:28  */
  assign n588_o = uart_rx_data == 8'b01010110;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1342:9  */
  assign n590_o = n588_o ? 1'b1 : tbs_virtual_delta_steps_uart;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1340:9  */
  assign n592_o = n586_o ? 1'b1 : baudrate_uart;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1340:9  */
  assign n593_o = n586_o ? tbs_virtual_delta_steps_uart : n590_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1338:9  */
  assign n595_o = n584_o ? 1'b1 : sc_noc_generator_uart;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1338:9  */
  assign n596_o = n584_o ? baudrate_uart : n592_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1338:9  */
  assign n597_o = n584_o ? tbs_virtual_delta_steps_uart : n593_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1336:9  */
  assign n599_o = n582_o ? 1'b1 : analog_trigger_uart;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1336:9  */
  assign n600_o = n582_o ? sc_noc_generator_uart : n595_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1336:9  */
  assign n601_o = n582_o ? baudrate_uart : n596_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1336:9  */
  assign n602_o = n582_o ? tbs_virtual_delta_steps_uart : n597_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1334:9  */
  assign n605_o = n580_o ? 1'b1 : 1'b0;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1334:9  */
  assign n606_o = n580_o ? analog_trigger_uart : n599_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1334:9  */
  assign n607_o = n580_o ? sc_noc_generator_uart : n600_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1334:9  */
  assign n608_o = n580_o ? baudrate_uart : n601_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1334:9  */
  assign n609_o = n580_o ? tbs_virtual_delta_steps_uart : n602_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1332:9  */
  assign n611_o = n578_o ? 1'b0 : n605_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1332:9  */
  assign n612_o = n578_o ? analog_trigger_uart : n606_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1332:9  */
  assign n613_o = n578_o ? sc_noc_generator_uart : n607_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1332:9  */
  assign n614_o = n578_o ? baudrate_uart : n608_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1332:9  */
  assign n615_o = n578_o ? tbs_virtual_delta_steps_uart : n609_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1332:9  */
  assign n618_o = n578_o ? 1'b1 : 1'b0;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1330:9  */
  assign n621_o = n576_o ? 1'b1 : 1'b0;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1330:9  */
  assign n623_o = n576_o ? 1'b0 : n611_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1330:9  */
  assign n624_o = n576_o ? analog_trigger_uart : n612_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1330:9  */
  assign n625_o = n576_o ? sc_noc_generator_uart : n613_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1330:9  */
  assign n626_o = n576_o ? baudrate_uart : n614_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1330:9  */
  assign n627_o = n576_o ? tbs_virtual_delta_steps_uart : n615_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1330:9  */
  assign n629_o = n576_o ? 1'b0 : n618_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1328:9  */
  assign n631_o = n574_o ? 1'b0 : n621_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1328:9  */
  assign n633_o = n574_o ? 1'b0 : n623_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1328:9  */
  assign n634_o = n574_o ? analog_trigger_uart : n624_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1328:9  */
  assign n635_o = n574_o ? sc_noc_generator_uart : n625_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1328:9  */
  assign n636_o = n574_o ? baudrate_uart : n626_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1328:9  */
  assign n637_o = n574_o ? tbs_virtual_delta_steps_uart : n627_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1328:9  */
  assign n639_o = n574_o ? 1'b1 : select_tbs_delta_steps_uart;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1328:9  */
  assign n641_o = n574_o ? 1'b0 : n629_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1326:9  */
  assign n643_o = n572_o ? 1'b0 : n631_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1326:9  */
  assign n645_o = n572_o ? 1'b0 : n633_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1326:9  */
  assign n646_o = n572_o ? analog_trigger_uart : n634_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1326:9  */
  assign n647_o = n572_o ? sc_noc_generator_uart : n635_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1326:9  */
  assign n648_o = n572_o ? baudrate_uart : n636_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1326:9  */
  assign n649_o = n572_o ? tbs_virtual_delta_steps_uart : n637_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1326:9  */
  assign n651_o = n572_o ? 1'b0 : n639_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1326:9  */
  assign n653_o = n572_o ? 1'b0 : n641_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1324:9  */
  assign n655_o = n570_o ? 1'b0 : n643_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1324:9  */
  assign n657_o = n570_o ? 1'b0 : n645_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1324:9  */
  assign n658_o = n570_o ? analog_trigger_uart : n646_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1324:9  */
  assign n659_o = n570_o ? sc_noc_generator_uart : n647_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1324:9  */
  assign n660_o = n570_o ? baudrate_uart : n648_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1324:9  */
  assign n661_o = n570_o ? tbs_virtual_delta_steps_uart : n649_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1324:9  */
  assign n663_o = n570_o ? 1'b1 : enable_analog_uart;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1324:9  */
  assign n664_o = n570_o ? select_tbs_delta_steps_uart : n651_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1324:9  */
  assign n666_o = n570_o ? 1'b0 : n653_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1322:9  */
  assign n668_o = n568_o ? 1'b0 : n655_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1322:9  */
  assign n670_o = n568_o ? 1'b0 : n657_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1322:9  */
  assign n671_o = n568_o ? analog_trigger_uart : n658_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1322:9  */
  assign n672_o = n568_o ? sc_noc_generator_uart : n659_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1322:9  */
  assign n673_o = n568_o ? baudrate_uart : n660_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1322:9  */
  assign n674_o = n568_o ? tbs_virtual_delta_steps_uart : n661_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1322:9  */
  assign n676_o = n568_o ? 1'b0 : n663_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1322:9  */
  assign n677_o = n568_o ? select_tbs_delta_steps_uart : n664_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1322:9  */
  assign n679_o = n568_o ? 1'b0 : n666_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1320:9  */
  assign n681_o = n566_o ? 1'b0 : n668_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1320:9  */
  assign n683_o = n566_o ? 1'b0 : n670_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1320:9  */
  assign n684_o = n566_o ? analog_trigger_uart : n671_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1320:9  */
  assign n685_o = n566_o ? sc_noc_generator_uart : n672_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1320:9  */
  assign n686_o = n566_o ? baudrate_uart : n673_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1320:9  */
  assign n687_o = n566_o ? tbs_virtual_delta_steps_uart : n674_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1320:9  */
  assign n689_o = n566_o ? 1'b1 : signal_select_in_uart;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1320:9  */
  assign n690_o = n566_o ? enable_analog_uart : n676_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1320:9  */
  assign n691_o = n566_o ? select_tbs_delta_steps_uart : n677_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1320:9  */
  assign n693_o = n566_o ? 1'b0 : n679_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1318:9  */
  assign n695_o = n564_o ? 1'b0 : n681_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1318:9  */
  assign n697_o = n564_o ? 1'b0 : n683_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1318:9  */
  assign n698_o = n564_o ? analog_trigger_uart : n684_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1318:9  */
  assign n699_o = n564_o ? sc_noc_generator_uart : n685_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1318:9  */
  assign n700_o = n564_o ? baudrate_uart : n686_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1318:9  */
  assign n701_o = n564_o ? tbs_virtual_delta_steps_uart : n687_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1318:9  */
  assign n703_o = n564_o ? 1'b0 : n689_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1318:9  */
  assign n704_o = n564_o ? enable_analog_uart : n690_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1318:9  */
  assign n705_o = n564_o ? select_tbs_delta_steps_uart : n691_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1318:9  */
  assign n707_o = n564_o ? 1'b0 : n693_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1316:9  */
  assign n709_o = n562_o ? 1'b0 : n695_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1316:9  */
  assign n711_o = n562_o ? 1'b0 : n697_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1316:9  */
  assign n712_o = n562_o ? analog_trigger_uart : n698_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1316:9  */
  assign n713_o = n562_o ? sc_noc_generator_uart : n699_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1316:9  */
  assign n714_o = n562_o ? baudrate_uart : n700_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1316:9  */
  assign n715_o = n562_o ? tbs_virtual_delta_steps_uart : n701_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1316:9  */
  assign n717_o = n562_o ? 1'b1 : adaptive_mode_uart;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1316:9  */
  assign n718_o = n562_o ? signal_select_in_uart : n703_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1316:9  */
  assign n719_o = n562_o ? enable_analog_uart : n704_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1316:9  */
  assign n720_o = n562_o ? select_tbs_delta_steps_uart : n705_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1316:9  */
  assign n722_o = n562_o ? 1'b0 : n707_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1314:9  */
  assign n724_o = n560_o ? 1'b0 : n709_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1314:9  */
  assign n726_o = n560_o ? 1'b0 : n711_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1314:9  */
  assign n727_o = n560_o ? analog_trigger_uart : n712_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1314:9  */
  assign n728_o = n560_o ? sc_noc_generator_uart : n713_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1314:9  */
  assign n729_o = n560_o ? baudrate_uart : n714_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1314:9  */
  assign n730_o = n560_o ? tbs_virtual_delta_steps_uart : n715_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1314:9  */
  assign n732_o = n560_o ? 1'b0 : n717_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1314:9  */
  assign n733_o = n560_o ? signal_select_in_uart : n718_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1314:9  */
  assign n734_o = n560_o ? enable_analog_uart : n719_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1314:9  */
  assign n735_o = n560_o ? select_tbs_delta_steps_uart : n720_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1314:9  */
  assign n737_o = n560_o ? 1'b0 : n722_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1312:9  */
  assign n739_o = n558_o ? 1'b0 : n724_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1312:9  */
  assign n741_o = n558_o ? 1'b0 : n726_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1312:9  */
  assign n742_o = n558_o ? analog_trigger_uart : n727_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1312:9  */
  assign n743_o = n558_o ? sc_noc_generator_uart : n728_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1312:9  */
  assign n744_o = n558_o ? baudrate_uart : n729_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1312:9  */
  assign n745_o = n558_o ? tbs_virtual_delta_steps_uart : n730_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1312:9  */
  assign n747_o = n558_o ? 1'b1 : trigger_start_mode_uart;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1312:9  */
  assign n748_o = n558_o ? adaptive_mode_uart : n732_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1312:9  */
  assign n749_o = n558_o ? signal_select_in_uart : n733_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1312:9  */
  assign n750_o = n558_o ? enable_analog_uart : n734_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1312:9  */
  assign n751_o = n558_o ? select_tbs_delta_steps_uart : n735_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1312:9  */
  assign n753_o = n558_o ? 1'b0 : n737_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1310:9  */
  assign n755_o = n556_o ? 1'b0 : n739_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1310:9  */
  assign n757_o = n556_o ? 1'b0 : n741_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1310:9  */
  assign n758_o = n556_o ? analog_trigger_uart : n742_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1310:9  */
  assign n759_o = n556_o ? sc_noc_generator_uart : n743_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1310:9  */
  assign n760_o = n556_o ? baudrate_uart : n744_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1310:9  */
  assign n761_o = n556_o ? tbs_virtual_delta_steps_uart : n745_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1310:9  */
  assign n763_o = n556_o ? 1'b0 : n747_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1310:9  */
  assign n764_o = n556_o ? adaptive_mode_uart : n748_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1310:9  */
  assign n765_o = n556_o ? signal_select_in_uart : n749_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1310:9  */
  assign n766_o = n556_o ? enable_analog_uart : n750_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1310:9  */
  assign n767_o = n556_o ? select_tbs_delta_steps_uart : n751_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1310:9  */
  assign n769_o = n556_o ? 1'b0 : n753_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1296:7  */
  assign n771_o = tbs_virtual_delta_steps_uart ? 1'b0 : n755_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1296:7  */
  assign n773_o = tbs_virtual_delta_steps_uart ? 1'b0 : n757_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1296:7  */
  assign n774_o = tbs_virtual_delta_steps_uart ? analog_trigger_uart : n758_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1296:7  */
  assign n775_o = tbs_virtual_delta_steps_uart ? sc_noc_generator_uart : n759_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1296:7  */
  assign n776_o = tbs_virtual_delta_steps_uart ? baudrate_uart : n760_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1296:7  */
  assign n778_o = tbs_virtual_delta_steps_uart ? 1'b0 : n761_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1296:7  */
  assign n779_o = tbs_virtual_delta_steps_uart ? n554_o : tbs_virtual_delta_steps_adj_uart;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1296:7  */
  assign n780_o = tbs_virtual_delta_steps_uart ? trigger_start_mode_uart : n763_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1296:7  */
  assign n781_o = tbs_virtual_delta_steps_uart ? adaptive_mode_uart : n764_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1296:7  */
  assign n782_o = tbs_virtual_delta_steps_uart ? signal_select_in_uart : n765_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1296:7  */
  assign n783_o = tbs_virtual_delta_steps_uart ? enable_analog_uart : n766_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1296:7  */
  assign n784_o = tbs_virtual_delta_steps_uart ? select_tbs_delta_steps_uart : n767_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1296:7  */
  assign n786_o = tbs_virtual_delta_steps_uart ? 1'b0 : n769_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1284:7  */
  assign n788_o = baudrate_uart ? 1'b1 : n771_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1284:7  */
  assign n790_o = baudrate_uart ? 1'b0 : n773_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1284:7  */
  assign n791_o = baudrate_uart ? analog_trigger_uart : n774_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1284:7  */
  assign n792_o = baudrate_uart ? sc_noc_generator_uart : n775_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1284:7  */
  assign n794_o = baudrate_uart ? 1'b0 : n776_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1284:7  */
  assign n795_o = baudrate_uart ? n534_o : baudrate_adj_uart;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1284:7  */
  assign n796_o = baudrate_uart ? tbs_virtual_delta_steps_uart : n778_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1284:7  */
  assign n797_o = baudrate_uart ? tbs_virtual_delta_steps_adj_uart : n779_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1284:7  */
  assign n798_o = baudrate_uart ? trigger_start_mode_uart : n780_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1284:7  */
  assign n799_o = baudrate_uart ? adaptive_mode_uart : n781_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1284:7  */
  assign n800_o = baudrate_uart ? signal_select_in_uart : n782_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1284:7  */
  assign n801_o = baudrate_uart ? enable_analog_uart : n783_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1284:7  */
  assign n802_o = baudrate_uart ? select_tbs_delta_steps_uart : n784_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1284:7  */
  assign n804_o = baudrate_uart ? 1'b0 : n786_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1269:7  */
  assign n806_o = sc_noc_generator_uart ? 1'b0 : n788_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1269:7  */
  assign n808_o = sc_noc_generator_uart ? 1'b0 : n790_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1269:7  */
  assign n809_o = sc_noc_generator_uart ? analog_trigger_uart : n791_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1269:7  */
  assign n811_o = sc_noc_generator_uart ? 1'b0 : n792_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1269:7  */
  assign n812_o = sc_noc_generator_uart ? n514_o : sc_noc_generator_period_adj_uart;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1269:7  */
  assign n813_o = sc_noc_generator_uart ? n516_o : sc_noc_generator_duty_cycle_adj_uart;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1269:7  */
  assign n814_o = sc_noc_generator_uart ? n518_o : sc_noc_generator_overlap_adj_uart;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1269:7  */
  assign n815_o = sc_noc_generator_uart ? baudrate_uart : n794_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1269:7  */
  assign n816_o = sc_noc_generator_uart ? baudrate_adj_uart : n795_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1269:7  */
  assign n817_o = sc_noc_generator_uart ? tbs_virtual_delta_steps_uart : n796_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1269:7  */
  assign n818_o = sc_noc_generator_uart ? tbs_virtual_delta_steps_adj_uart : n797_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1269:7  */
  assign n819_o = sc_noc_generator_uart ? trigger_start_mode_uart : n798_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1269:7  */
  assign n820_o = sc_noc_generator_uart ? adaptive_mode_uart : n799_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1269:7  */
  assign n821_o = sc_noc_generator_uart ? signal_select_in_uart : n800_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1269:7  */
  assign n822_o = sc_noc_generator_uart ? enable_analog_uart : n801_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1269:7  */
  assign n823_o = sc_noc_generator_uart ? select_tbs_delta_steps_uart : n802_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1269:7  */
  assign n825_o = sc_noc_generator_uart ? 1'b0 : n804_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1248:7  */
  assign n827_o = analog_trigger_uart ? 1'b0 : n806_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1248:7  */
  assign n829_o = analog_trigger_uart ? 1'b0 : n808_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1248:7  */
  assign n831_o = analog_trigger_uart ? 1'b0 : n809_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1247:5  */
  assign n832_o = n856_o ? n492_o : analog_trigger_period_adj_uart;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1247:5  */
  assign n833_o = n857_o ? n494_o : analog_trigger_duty_cycle_adj_uart;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1248:7  */
  assign n834_o = analog_trigger_uart ? sc_noc_generator_uart : n811_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1248:7  */
  assign n835_o = analog_trigger_uart ? sc_noc_generator_period_adj_uart : n812_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1248:7  */
  assign n836_o = analog_trigger_uart ? sc_noc_generator_duty_cycle_adj_uart : n813_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1248:7  */
  assign n837_o = analog_trigger_uart ? sc_noc_generator_overlap_adj_uart : n814_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1248:7  */
  assign n838_o = analog_trigger_uart ? baudrate_uart : n815_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1248:7  */
  assign n839_o = analog_trigger_uart ? baudrate_adj_uart : n816_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1248:7  */
  assign n840_o = analog_trigger_uart ? tbs_virtual_delta_steps_uart : n817_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1248:7  */
  assign n841_o = analog_trigger_uart ? tbs_virtual_delta_steps_adj_uart : n818_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1248:7  */
  assign n842_o = analog_trigger_uart ? trigger_start_mode_uart : n819_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1248:7  */
  assign n843_o = analog_trigger_uart ? adaptive_mode_uart : n820_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1248:7  */
  assign n844_o = analog_trigger_uart ? signal_select_in_uart : n821_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1248:7  */
  assign n845_o = analog_trigger_uart ? enable_analog_uart : n822_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1248:7  */
  assign n846_o = analog_trigger_uart ? select_tbs_delta_steps_uart : n823_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1248:7  */
  assign n848_o = analog_trigger_uart ? 1'b0 : n825_o;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1247:5  */
  assign n850_o = uart_rx_data_strb ? n827_o : 1'b0;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1247:5  */
  assign n853_o = uart_rx_data_strb ? n829_o : 1'b0;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1247:5  */
  assign n855_o = uart_rx_data_strb ? n831_o : analog_trigger_uart;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1247:5  */
  assign n856_o = analog_trigger_uart & uart_rx_data_strb;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1247:5  */
  assign n857_o = analog_trigger_uart & uart_rx_data_strb;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1247:5  */
  assign n858_o = uart_rx_data_strb ? n834_o : sc_noc_generator_uart;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1247:5  */
  assign n859_o = uart_rx_data_strb ? n835_o : sc_noc_generator_period_adj_uart;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1247:5  */
  assign n860_o = uart_rx_data_strb ? n836_o : sc_noc_generator_duty_cycle_adj_uart;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1247:5  */
  assign n861_o = uart_rx_data_strb ? n837_o : sc_noc_generator_overlap_adj_uart;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1247:5  */
  assign n862_o = uart_rx_data_strb ? n838_o : baudrate_uart;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1247:5  */
  assign n863_o = uart_rx_data_strb ? n839_o : baudrate_adj_uart;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1247:5  */
  assign n864_o = uart_rx_data_strb ? n840_o : tbs_virtual_delta_steps_uart;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1247:5  */
  assign n865_o = uart_rx_data_strb ? n841_o : tbs_virtual_delta_steps_adj_uart;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1247:5  */
  assign n866_o = uart_rx_data_strb ? n842_o : trigger_start_mode_uart;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1247:5  */
  assign n867_o = uart_rx_data_strb ? n843_o : adaptive_mode_uart;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1247:5  */
  assign n868_o = uart_rx_data_strb ? n844_o : signal_select_in_uart;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1247:5  */
  assign n869_o = uart_rx_data_strb ? n845_o : enable_analog_uart;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1247:5  */
  assign n870_o = uart_rx_data_strb ? n846_o : select_tbs_delta_steps_uart;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1247:5  */
  assign n872_o = uart_rx_data_strb ? n848_o : 1'b0;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1356:82  */
  assign n875_o = ~control_mode_debounced;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1356:54  */
  assign n876_o = n875_o ? trigger_start_mode_debounced : trigger_start_mode_uart;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1357:72  */
  assign n877_o = ~control_mode_debounced;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1357:44  */
  assign n878_o = n877_o ? adaptive_mode_debounced : adaptive_mode_uart;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1358:78  */
  assign n879_o = ~control_mode_debounced;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1358:50  */
  assign n880_o = n879_o ? signal_select_in_debounced : signal_select_in_uart;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1359:65  */
  assign n881_o = ~control_mode_debounced;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1359:37  */
  assign n882_o = n881_o ? enable_debounced : enable_analog_uart;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1360:90  */
  assign n883_o = ~control_mode_debounced;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1360:62  */
  assign n884_o = n883_o ? select_tbs_delta_steps_debounced : select_tbs_delta_steps_uart;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1373:25  */
  assign n885_o = ~enable_analog;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1380:35  */
  assign n886_o = dac_pd_upper & dac_pd_lower;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1381:36  */
  assign n887_o = dac_clr_upper & dac_clr_lower;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:537:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n888_q <= 1'b0;
    else
      n888_q <= adaptive_mode_debounced;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:537:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n889_q <= 1'b0;
    else
      n889_q <= control_mode_debounced;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:537:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n890_q <= 1'b0;
    else
      n890_q <= signal_select_in_debounced;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:537:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n891_q <= 1'b0;
    else
      n891_q <= select_tbs_delta_steps_debounced;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:537:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n892_q <= 1'b0;
    else
      n892_q <= trigger_start_mode_debounced;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:537:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n893_q <= 1'b0;
    else
      n893_q <= trigger_start_sampling_sync;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:984:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n894_q <= 1'b0;
    else
      n894_q <= next_detection_en;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:726:17  */
  always @(posedge clock_i or posedge reset_entity)
    if (reset_entity)
      n895_q <= 1'b0;
    else
      n895_q <= next_tbs_increasing_en;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:726:17  */
  always @(posedge clock_i or posedge reset_entity)
    if (reset_entity)
      n896_q <= 1'b0;
    else
      n896_q <= next_tbs_decreasing_en;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:984:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n897_q <= 1'b0;
    else
      n897_q <= next_clear_dac;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:984:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n898_q <= 1'b0;
    else
      n898_q <= next_select_enable_write;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:984:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n899_q <= 1'b0;
    else
      n899_q <= next_enable_read;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1189:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n900_q <= 1'b0;
    else
      n900_q <= next_analog_trigger_uart;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1189:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n901_q <= 8'b01100011;
    else
      n901_q <= next_analog_trigger_period_adj_uart;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1189:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n902_q <= 8'b00011000;
    else
      n902_q <= next_analog_trigger_duty_cycle_adj_uart;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1189:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n903_q <= 1'b0;
    else
      n903_q <= next_sc_noc_generator_uart;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1189:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n904_q <= 20'b01111010000100011111;
    else
      n904_q <= next_sc_noc_generator_period_adj_uart;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1189:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n905_q <= 20'b00011110100001000111;
    else
      n905_q <= next_sc_noc_generator_duty_cycle_adj_uart;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1189:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n906_q <= 20'b00111101000010001111;
    else
      n906_q <= next_sc_noc_generator_overlap_adj_uart;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1189:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n907_q <= 1'b0;
    else
      n907_q <= next_baudrate_uart;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1189:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n908_q <= 10'b0001010111;
    else
      n908_q <= next_baudrate_adj_uart;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1189:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n909_q <= 1'b0;
    else
      n909_q <= next_tbs_virtual_delta_steps_uart;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1189:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n910_q <= 8'b00001000;
    else
      n910_q <= next_tbs_virtual_delta_steps_adj_uart;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:953:17  */
  always @(posedge clock_i or posedge reset_entity)
    if (reset_entity)
      n911_q <= 22'b0000000000000000000000;
    else
      n911_q <= next_main_counter_value;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:984:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n912_q <= 3'b001;
    else
      n912_q <= next_state;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:984:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n913_q <= 1'b0;
    else
      n913_q <= next_idle_led;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:984:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n914_q <= 1'b0;
    else
      n914_q <= next_overflow_led;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:984:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n915_q <= 1'b0;
    else
      n915_q <= next_underflow_led;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1189:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n916_q <= 1'b1;
    else
      n916_q <= next_trigger_start_mode_uart;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1189:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n917_q <= 1'b0;
    else
      n917_q <= next_adaptive_mode_uart;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1189:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n918_q <= 1'b1;
    else
      n918_q <= next_signal_select_in_uart;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1189:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n919_q <= 1'b1;
    else
      n919_q <= next_enable_analog_uart;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_ea.vhd:1189:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n920_q <= 1'b1;
    else
      n920_q <= next_select_tbs_delta_steps_uart;
endmodule

module tbs_core_board_foss
  (input  clock_i,
   input  reset_n_i,
   input  comp_upper_i,
   input  comp_lower_i,
   input  trigger_start_sampling_i,
   input  trigger_start_mode_i,
   input  adaptive_mode_i,
   input  control_mode_i,
   input  signal_select_in_i,
   input  enable_i,
   input  select_tbs_delta_steps_i,
   input  uart_rx_i,
   output signal_select_en_o,
   output signal_select_in_o,
   output amp_sdn_o,
   output dac_pd_o,
   output dac_clr_o,
   output dac_wr_upper_o,
   output dac_wr_lower_o,
   output [7:0] dac_upper_o,
   output [7:0] dac_lower_o,
   output idle_led_o,
   output overflow_led_o,
   output underflow_led_o,
   output analog_trigger_o,
   output sc_noc_1_o,
   output sc_noc_2_o,
   output uart_tx_o);
  wire reset;
  wire n16_o;
  wire tbs_core_0_signal_select_en_o;
  wire tbs_core_0_signal_select_in_o;
  wire tbs_core_0_amp_sdn_o;
  wire tbs_core_0_dac_pd_o;
  wire tbs_core_0_dac_clr_o;
  wire tbs_core_0_dac_wr_upper_o;
  wire tbs_core_0_dac_wr_lower_o;
  wire [7:0] tbs_core_0_dac_upper_o;
  wire [7:0] tbs_core_0_dac_lower_o;
  wire tbs_core_0_idle_led_o;
  wire tbs_core_0_overflow_led_o;
  wire tbs_core_0_underflow_led_o;
  wire tbs_core_0_analog_trigger_o;
  wire tbs_core_0_sc_noc_1_o;
  wire tbs_core_0_sc_noc_2_o;
  wire tbs_core_0_uart_tx_o;
  assign signal_select_en_o = tbs_core_0_signal_select_en_o; //(module output)
  assign signal_select_in_o = tbs_core_0_signal_select_in_o; //(module output)
  assign amp_sdn_o = tbs_core_0_amp_sdn_o; //(module output)
  assign dac_pd_o = tbs_core_0_dac_pd_o; //(module output)
  assign dac_clr_o = tbs_core_0_dac_clr_o; //(module output)
  assign dac_wr_upper_o = tbs_core_0_dac_wr_upper_o; //(module output)
  assign dac_wr_lower_o = tbs_core_0_dac_wr_lower_o; //(module output)
  assign dac_upper_o = tbs_core_0_dac_upper_o; //(module output)
  assign dac_lower_o = tbs_core_0_dac_lower_o; //(module output)
  assign idle_led_o = tbs_core_0_idle_led_o; //(module output)
  assign overflow_led_o = tbs_core_0_overflow_led_o; //(module output)
  assign underflow_led_o = tbs_core_0_underflow_led_o; //(module output)
  assign analog_trigger_o = tbs_core_0_analog_trigger_o; //(module output)
  assign sc_noc_1_o = tbs_core_0_sc_noc_1_o; //(module output)
  assign sc_noc_2_o = tbs_core_0_sc_noc_2_o; //(module output)
  assign uart_tx_o = tbs_core_0_uart_tx_o; //(module output)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_board_foss.vhd:69:8  */
  assign reset = n16_o; // (signal)
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_board_foss.vhd:74:18  */
  assign n16_o = ~reset_n_i;
  /* ../../../vhdl/floating_window/tbs_core/rtl/tbs_core_board_foss.vhd:77:9  */
  tbs_core_10000000_22_3000000_21_2000000_2_2_255_0_2_2_3_8_16_65536_100_8_8_200_20_1000000_7_17_10_521_8 tbs_core_0 (
    .clock_i(clock_i),
    .reset_btn_i(reset),
    .comp_upper_i(comp_upper_i),
    .comp_lower_i(comp_lower_i),
    .trigger_start_sampling_i(trigger_start_sampling_i),
    .trigger_start_mode_i(trigger_start_mode_i),
    .adaptive_mode_i(adaptive_mode_i),
    .control_mode_i(control_mode_i),
    .signal_select_in_i(signal_select_in_i),
    .enable_i(enable_i),
    .select_tbs_delta_steps_i(select_tbs_delta_steps_i),
    .uart_rx_i(uart_rx_i),
    .signal_select_en_o(tbs_core_0_signal_select_en_o),
    .signal_select_in_o(tbs_core_0_signal_select_in_o),
    .amp_sdn_o(tbs_core_0_amp_sdn_o),
    .dac_pd_o(tbs_core_0_dac_pd_o),
    .dac_clr_o(tbs_core_0_dac_clr_o),
    .dac_wr_upper_o(tbs_core_0_dac_wr_upper_o),
    .dac_wr_lower_o(tbs_core_0_dac_wr_lower_o),
    .dac_upper_o(tbs_core_0_dac_upper_o),
    .dac_lower_o(tbs_core_0_dac_lower_o),
    .idle_led_o(tbs_core_0_idle_led_o),
    .overflow_led_o(tbs_core_0_overflow_led_o),
    .underflow_led_o(tbs_core_0_underflow_led_o),
    .analog_trigger_o(tbs_core_0_analog_trigger_o),
    .sc_noc_1_o(tbs_core_0_sc_noc_1_o),
    .sc_noc_2_o(tbs_core_0_sc_noc_2_o),
    .uart_tx_o(tbs_core_0_uart_tx_o));
endmodule

