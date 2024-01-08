// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Mon Jan  8 05:57:50 2024
// Host        : husky-laptop-devel running 64-bit unknown
// Command     : write_verilog -force -mode funcsim
//               /localstorage/Temporary/UU/Embedded/FPGA/repo/uu-fpga-matmul/hw/uu-fpga-matmul.gen/sources_1/bd/top/ip/top_mat_mul_0_0/top_mat_mul_0_0_sim_netlist.v
// Design      : top_mat_mul_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z007sclg225-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "top_mat_mul_0_0,mat_mul,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "mat_mul,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module top_mat_mul_0_0
   (clk,
    anrst,
    ctrl_axis_tready,
    ctrl_axis_tvalid,
    ctrl_axis_tlast,
    ctrl_axis_tdata,
    stat_axis_tready,
    stat_axis_tvalid,
    stat_axis_tlast,
    stat_axis_tdata,
    in_axis_tready,
    in_axis_tvalid,
    in_axis_tlast,
    in_axis_tdata,
    out_axis_tready,
    out_axis_tvalid,
    out_axis_tlast,
    out_axis_tdata);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF ctrl_axis:in_axis:out_axis:stat_axis, FREQ_HZ 59259258, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN top_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input clk;
  input anrst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 ctrl_axis TREADY" *) output ctrl_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 ctrl_axis TVALID" *) input ctrl_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 ctrl_axis TLAST" *) input ctrl_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 ctrl_axis TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ctrl_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 59259258, PHASE 0.0, CLK_DOMAIN top_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) input [31:0]ctrl_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stat_axis TREADY" *) input stat_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stat_axis TVALID" *) output stat_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stat_axis TLAST" *) output stat_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stat_axis TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME stat_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 59259258, PHASE 0.0, CLK_DOMAIN top_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) output [31:0]stat_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_axis TREADY" *) output in_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_axis TVALID" *) input in_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_axis TLAST" *) input in_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_axis TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME in_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 59259258, PHASE 0.0, CLK_DOMAIN top_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) input [31:0]in_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_axis TREADY" *) input out_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_axis TVALID" *) output out_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_axis TLAST" *) output out_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_axis TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME out_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 59259258, PHASE 0.0, CLK_DOMAIN top_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) output [31:0]out_axis_tdata;

  wire \<const0> ;
  wire anrst;
  wire clk;
  wire [31:0]ctrl_axis_tdata;
  wire ctrl_axis_tlast;
  wire ctrl_axis_tready;
  wire ctrl_axis_tvalid;
  wire [31:0]in_axis_tdata;
  wire in_axis_tready;
  wire in_axis_tvalid;
  wire [31:0]out_axis_tdata;
  wire out_axis_tlast;
  wire out_axis_tready;
  wire out_axis_tvalid;
  wire [30:0]\^stat_axis_tdata ;
  wire stat_axis_tlast;
  wire stat_axis_tready;
  wire stat_axis_tvalid;

  assign stat_axis_tdata[31] = \<const0> ;
  assign stat_axis_tdata[30] = \^stat_axis_tdata [30];
  assign stat_axis_tdata[29] = \<const0> ;
  assign stat_axis_tdata[28] = \^stat_axis_tdata [30];
  assign stat_axis_tdata[27] = \<const0> ;
  assign stat_axis_tdata[26] = \<const0> ;
  assign stat_axis_tdata[25] = \<const0> ;
  assign stat_axis_tdata[24] = \<const0> ;
  assign stat_axis_tdata[23] = \<const0> ;
  assign stat_axis_tdata[22] = \<const0> ;
  assign stat_axis_tdata[21] = \<const0> ;
  assign stat_axis_tdata[20] = \<const0> ;
  assign stat_axis_tdata[19] = \<const0> ;
  assign stat_axis_tdata[18] = \<const0> ;
  assign stat_axis_tdata[17] = \<const0> ;
  assign stat_axis_tdata[16] = \<const0> ;
  assign stat_axis_tdata[15] = \<const0> ;
  assign stat_axis_tdata[14] = \<const0> ;
  assign stat_axis_tdata[13] = \<const0> ;
  assign stat_axis_tdata[12] = \<const0> ;
  assign stat_axis_tdata[11] = \<const0> ;
  assign stat_axis_tdata[10] = \<const0> ;
  assign stat_axis_tdata[9] = \<const0> ;
  assign stat_axis_tdata[8] = \<const0> ;
  assign stat_axis_tdata[7] = \<const0> ;
  assign stat_axis_tdata[6] = \<const0> ;
  assign stat_axis_tdata[5] = \<const0> ;
  assign stat_axis_tdata[4] = \<const0> ;
  assign stat_axis_tdata[3] = \<const0> ;
  assign stat_axis_tdata[2] = \<const0> ;
  assign stat_axis_tdata[1:0] = \^stat_axis_tdata [1:0];
  GND GND
       (.G(\<const0> ));
  top_mat_mul_0_0_mat_mul inst
       (.anrst(anrst),
        .clk(clk),
        .ctrl_axis_tdata(ctrl_axis_tdata),
        .ctrl_axis_tlast(ctrl_axis_tlast),
        .ctrl_axis_tready(ctrl_axis_tready),
        .ctrl_axis_tvalid(ctrl_axis_tvalid),
        .in_axis_tdata(in_axis_tdata),
        .in_axis_tready(in_axis_tready),
        .in_axis_tvalid(in_axis_tvalid),
        .out_axis_tdata(out_axis_tdata),
        .out_axis_tlast(out_axis_tlast),
        .out_axis_tready(out_axis_tready),
        .out_axis_tvalid(out_axis_tvalid),
        .stat_axis_tdata({\^stat_axis_tdata [30],\^stat_axis_tdata [1:0]}),
        .stat_axis_tlast(stat_axis_tlast),
        .stat_axis_tready(stat_axis_tready),
        .stat_axis_tvalid(stat_axis_tvalid));
endmodule

(* ORIG_REF_NAME = "addr_ctrl" *) 
module top_mat_mul_0_0_addr_ctrl
   (P,
    WEBWE,
    Q,
    in_axis_tready,
    \count_reg[6] ,
    B,
    mem_inst_reg,
    r_data,
    D,
    \state_reg[0]_0 ,
    out_axis_tvalid,
    out_axis_tlast,
    out_axis_tdata,
    WEA,
    \mat_col_size_reg_reg[8]_0 ,
    err,
    \mat_row_size_reg_reg[29]_0 ,
    \state_reg[2]_0 ,
    \state_reg[2]_1 ,
    \state_reg[2]_2 ,
    \state_reg[2]_3 ,
    \state_reg[2]_4 ,
    \state_reg[2]_5 ,
    \state_reg[2]_6 ,
    \state_reg[2]_7 ,
    \state_reg[2]_8 ,
    \state_reg[2]_9 ,
    \state_reg[2]_10 ,
    \state_reg[2]_11 ,
    \state_reg[2]_12 ,
    \state_reg[2]_13 ,
    \state_reg[2]_14 ,
    \state_reg[2]_15 ,
    \state_reg[2]_16 ,
    \state_reg[2]_17 ,
    \state_reg[2]_18 ,
    \state_reg[2]_19 ,
    \state_reg[2]_20 ,
    \state_reg[2]_21 ,
    \state_reg[2]_22 ,
    \state_reg[2]_23 ,
    \state_reg[2]_24 ,
    \state_reg[2]_25 ,
    \state_reg[2]_26 ,
    \state_reg[2]_27 ,
    \state_reg[2]_28 ,
    \state_reg[2]_29 ,
    \state_reg[2]_30 ,
    \state_reg[2]_31 ,
    O,
    \state_reg[1]_0 ,
    \state_reg[1]_1 ,
    \state_reg[1]_2 ,
    \state_reg[1]_3 ,
    \state_reg[1]_4 ,
    \state_reg[1]_5 ,
    \state_reg[1]_6 ,
    anrst_0,
    in_axis_tvalid,
    out_axis_tready,
    r_data_int_0,
    r_data_int,
    \FSM_onehot_state_reg[3] ,
    reg_add_reg,
    p_0_in,
    r_data_int_1,
    anrst,
    \mat_row_size_reg_reg[31]_0 ,
    clk,
    \mat_col_size_reg_reg[31]_0 );
  output [14:0]P;
  output [0:0]WEBWE;
  output [7:0]Q;
  output in_axis_tready;
  output [6:0]\count_reg[6] ;
  output [16:0]B;
  output [14:0]mem_inst_reg;
  output [31:0]r_data;
  output [0:0]D;
  output \state_reg[0]_0 ;
  output out_axis_tvalid;
  output out_axis_tlast;
  output [31:0]out_axis_tdata;
  output [0:0]WEA;
  output \mat_col_size_reg_reg[8]_0 ;
  output [0:0]err;
  output \mat_row_size_reg_reg[29]_0 ;
  output [0:0]\state_reg[2]_0 ;
  output [0:0]\state_reg[2]_1 ;
  output [0:0]\state_reg[2]_2 ;
  output [0:0]\state_reg[2]_3 ;
  output [0:0]\state_reg[2]_4 ;
  output [0:0]\state_reg[2]_5 ;
  output [0:0]\state_reg[2]_6 ;
  output [0:0]\state_reg[2]_7 ;
  output [0:0]\state_reg[2]_8 ;
  output [0:0]\state_reg[2]_9 ;
  output [0:0]\state_reg[2]_10 ;
  output [0:0]\state_reg[2]_11 ;
  output [0:0]\state_reg[2]_12 ;
  output [0:0]\state_reg[2]_13 ;
  output [0:0]\state_reg[2]_14 ;
  output [0:0]\state_reg[2]_15 ;
  output [0:0]\state_reg[2]_16 ;
  output [0:0]\state_reg[2]_17 ;
  output [0:0]\state_reg[2]_18 ;
  output [0:0]\state_reg[2]_19 ;
  output [0:0]\state_reg[2]_20 ;
  output [0:0]\state_reg[2]_21 ;
  output [0:0]\state_reg[2]_22 ;
  output [0:0]\state_reg[2]_23 ;
  output [0:0]\state_reg[2]_24 ;
  output [0:0]\state_reg[2]_25 ;
  output [0:0]\state_reg[2]_26 ;
  output [0:0]\state_reg[2]_27 ;
  output [0:0]\state_reg[2]_28 ;
  output [0:0]\state_reg[2]_29 ;
  output [0:0]\state_reg[2]_30 ;
  output [0:0]\state_reg[2]_31 ;
  output [3:0]O;
  output [3:0]\state_reg[1]_0 ;
  output [3:0]\state_reg[1]_1 ;
  output [3:0]\state_reg[1]_2 ;
  output [3:0]\state_reg[1]_3 ;
  output [3:0]\state_reg[1]_4 ;
  output [3:0]\state_reg[1]_5 ;
  output [3:0]\state_reg[1]_6 ;
  output anrst_0;
  input in_axis_tvalid;
  input out_axis_tready;
  input [31:0]r_data_int_0;
  input [31:0]r_data_int;
  input [1:0]\FSM_onehot_state_reg[3] ;
  input [31:0]reg_add_reg;
  input [31:0]p_0_in;
  input [31:0]r_data_int_1;
  input anrst;
  input [31:0]\mat_row_size_reg_reg[31]_0 ;
  input clk;
  input [31:0]\mat_col_size_reg_reg[31]_0 ;

  wire [16:0]B;
  wire [0:0]D;
  wire [1:0]\FSM_onehot_state_reg[3] ;
  wire [3:0]O;
  wire [14:0]P;
  wire [7:0]Q;
  wire [0:0]WEA;
  wire [0:0]WEBWE;
  wire a_col_cnt_last;
  wire a_col_counter_n_10;
  wire a_col_counter_n_11;
  wire a_col_counter_n_12;
  wire a_col_counter_n_13;
  wire a_col_counter_n_9;
  wire a_row_cnt_last;
  wire a_row_counter_n_10;
  wire a_row_counter_n_8;
  wire anrst;
  wire anrst_0;
  wire b_cnt_last;
  wire b_counter_n_11;
  wire clk;
  wire [7:0]count_reg;
  wire [6:0]\count_reg[6] ;
  wire [6:0]count_reg_0;
  wire [0:0]err;
  wire \err_reg[0]_i_10_n_0 ;
  wire \err_reg[0]_i_4_n_0 ;
  wire \err_reg[0]_i_5_n_0 ;
  wire \err_reg[0]_i_6_n_0 ;
  wire \err_reg[0]_i_7_n_0 ;
  wire \err_reg[0]_i_8_n_0 ;
  wire \err_reg[0]_i_9_n_0 ;
  wire \err_reg[1]_i_10_n_0 ;
  wire \err_reg[1]_i_11_n_0 ;
  wire \err_reg[1]_i_3_n_0 ;
  wire \err_reg[1]_i_4_n_0 ;
  wire \err_reg[1]_i_5_n_0 ;
  wire \err_reg[1]_i_6_n_0 ;
  wire \err_reg[1]_i_7_n_0 ;
  wire \err_reg[1]_i_8_n_0 ;
  wire \err_reg[1]_i_9_n_0 ;
  wire in_axis_tready;
  wire in_axis_tvalid;
  wire [31:0]mat_col_size_reg;
  wire [31:0]\mat_col_size_reg_reg[31]_0 ;
  wire \mat_col_size_reg_reg[8]_0 ;
  wire [31:0]mat_row_size_reg;
  wire \mat_row_size_reg_reg[29]_0 ;
  wire [31:0]\mat_row_size_reg_reg[31]_0 ;
  wire [14:0]mem_inst_reg;
  wire [3:0]next_state;
  wire [31:0]out_axis_tdata;
  wire out_axis_tlast;
  wire out_axis_tready;
  wire out_axis_tvalid;
  wire [31:0]p_0_in;
  wire [0:0]p_0_in__1;
  wire r_counter_n_11;
  wire r_counter_n_12;
  wire r_counter_n_8;
  wire r_counter_n_9;
  wire [31:0]r_data;
  wire [31:0]r_data_int;
  wire [31:0]r_data_int_0;
  wire [31:0]r_data_int_1;
  wire \reg_add[0]_i_2_n_0 ;
  wire \reg_add[0]_i_3_n_0 ;
  wire \reg_add[0]_i_4_n_0 ;
  wire \reg_add[0]_i_5_n_0 ;
  wire \reg_add[0]_i_6_n_0 ;
  wire \reg_add[0]_i_7_n_0 ;
  wire \reg_add[0]_i_8_n_0 ;
  wire \reg_add[0]_i_9_n_0 ;
  wire \reg_add[12]_i_2_n_0 ;
  wire \reg_add[12]_i_3_n_0 ;
  wire \reg_add[12]_i_4_n_0 ;
  wire \reg_add[12]_i_5_n_0 ;
  wire \reg_add[12]_i_6_n_0 ;
  wire \reg_add[12]_i_7_n_0 ;
  wire \reg_add[12]_i_8_n_0 ;
  wire \reg_add[12]_i_9_n_0 ;
  wire \reg_add[16]_i_2_n_0 ;
  wire \reg_add[16]_i_3_n_0 ;
  wire \reg_add[16]_i_4_n_0 ;
  wire \reg_add[16]_i_5_n_0 ;
  wire \reg_add[16]_i_6_n_0 ;
  wire \reg_add[16]_i_7_n_0 ;
  wire \reg_add[16]_i_8_n_0 ;
  wire \reg_add[16]_i_9_n_0 ;
  wire \reg_add[20]_i_2_n_0 ;
  wire \reg_add[20]_i_3_n_0 ;
  wire \reg_add[20]_i_4_n_0 ;
  wire \reg_add[20]_i_5_n_0 ;
  wire \reg_add[20]_i_6_n_0 ;
  wire \reg_add[20]_i_7_n_0 ;
  wire \reg_add[20]_i_8_n_0 ;
  wire \reg_add[20]_i_9_n_0 ;
  wire \reg_add[24]_i_2_n_0 ;
  wire \reg_add[24]_i_3_n_0 ;
  wire \reg_add[24]_i_4_n_0 ;
  wire \reg_add[24]_i_5_n_0 ;
  wire \reg_add[24]_i_6_n_0 ;
  wire \reg_add[24]_i_7_n_0 ;
  wire \reg_add[24]_i_8_n_0 ;
  wire \reg_add[24]_i_9_n_0 ;
  wire \reg_add[28]_i_2_n_0 ;
  wire \reg_add[28]_i_3_n_0 ;
  wire \reg_add[28]_i_4_n_0 ;
  wire \reg_add[28]_i_5_n_0 ;
  wire \reg_add[28]_i_6_n_0 ;
  wire \reg_add[28]_i_7_n_0 ;
  wire \reg_add[28]_i_8_n_0 ;
  wire \reg_add[4]_i_2_n_0 ;
  wire \reg_add[4]_i_3_n_0 ;
  wire \reg_add[4]_i_4_n_0 ;
  wire \reg_add[4]_i_5_n_0 ;
  wire \reg_add[4]_i_6_n_0 ;
  wire \reg_add[4]_i_7_n_0 ;
  wire \reg_add[4]_i_8_n_0 ;
  wire \reg_add[4]_i_9_n_0 ;
  wire \reg_add[8]_i_2_n_0 ;
  wire \reg_add[8]_i_3_n_0 ;
  wire \reg_add[8]_i_4_n_0 ;
  wire \reg_add[8]_i_5_n_0 ;
  wire \reg_add[8]_i_6_n_0 ;
  wire \reg_add[8]_i_7_n_0 ;
  wire \reg_add[8]_i_8_n_0 ;
  wire \reg_add[8]_i_9_n_0 ;
  wire [31:0]reg_add_reg;
  wire \reg_add_reg[0]_i_1_n_0 ;
  wire \reg_add_reg[0]_i_1_n_1 ;
  wire \reg_add_reg[0]_i_1_n_2 ;
  wire \reg_add_reg[0]_i_1_n_3 ;
  wire \reg_add_reg[12]_i_1_n_0 ;
  wire \reg_add_reg[12]_i_1_n_1 ;
  wire \reg_add_reg[12]_i_1_n_2 ;
  wire \reg_add_reg[12]_i_1_n_3 ;
  wire \reg_add_reg[16]_i_1_n_0 ;
  wire \reg_add_reg[16]_i_1_n_1 ;
  wire \reg_add_reg[16]_i_1_n_2 ;
  wire \reg_add_reg[16]_i_1_n_3 ;
  wire \reg_add_reg[20]_i_1_n_0 ;
  wire \reg_add_reg[20]_i_1_n_1 ;
  wire \reg_add_reg[20]_i_1_n_2 ;
  wire \reg_add_reg[20]_i_1_n_3 ;
  wire \reg_add_reg[24]_i_1_n_0 ;
  wire \reg_add_reg[24]_i_1_n_1 ;
  wire \reg_add_reg[24]_i_1_n_2 ;
  wire \reg_add_reg[24]_i_1_n_3 ;
  wire \reg_add_reg[28]_i_1_n_1 ;
  wire \reg_add_reg[28]_i_1_n_2 ;
  wire \reg_add_reg[28]_i_1_n_3 ;
  wire \reg_add_reg[4]_i_1_n_0 ;
  wire \reg_add_reg[4]_i_1_n_1 ;
  wire \reg_add_reg[4]_i_1_n_2 ;
  wire \reg_add_reg[4]_i_1_n_3 ;
  wire \reg_add_reg[8]_i_1_n_0 ;
  wire \reg_add_reg[8]_i_1_n_1 ;
  wire \reg_add_reg[8]_i_1_n_2 ;
  wire \reg_add_reg[8]_i_1_n_3 ;
  wire [3:0]state;
  wire \state[0]_i_4_n_0 ;
  wire \state[1]_i_3_n_0 ;
  wire \state[1]_i_4_n_0 ;
  wire \state[1]_i_5_n_0 ;
  wire \state[1]_i_8_n_0 ;
  wire \state[2]_i_2_n_0 ;
  wire \state[3]_i_2_n_0 ;
  wire \state_reg[0]_0 ;
  wire [3:0]\state_reg[1]_0 ;
  wire [3:0]\state_reg[1]_1 ;
  wire [3:0]\state_reg[1]_2 ;
  wire [3:0]\state_reg[1]_3 ;
  wire [3:0]\state_reg[1]_4 ;
  wire [3:0]\state_reg[1]_5 ;
  wire [3:0]\state_reg[1]_6 ;
  wire [0:0]\state_reg[2]_0 ;
  wire [0:0]\state_reg[2]_1 ;
  wire [0:0]\state_reg[2]_10 ;
  wire [0:0]\state_reg[2]_11 ;
  wire [0:0]\state_reg[2]_12 ;
  wire [0:0]\state_reg[2]_13 ;
  wire [0:0]\state_reg[2]_14 ;
  wire [0:0]\state_reg[2]_15 ;
  wire [0:0]\state_reg[2]_16 ;
  wire [0:0]\state_reg[2]_17 ;
  wire [0:0]\state_reg[2]_18 ;
  wire [0:0]\state_reg[2]_19 ;
  wire [0:0]\state_reg[2]_2 ;
  wire [0:0]\state_reg[2]_20 ;
  wire [0:0]\state_reg[2]_21 ;
  wire [0:0]\state_reg[2]_22 ;
  wire [0:0]\state_reg[2]_23 ;
  wire [0:0]\state_reg[2]_24 ;
  wire [0:0]\state_reg[2]_25 ;
  wire [0:0]\state_reg[2]_26 ;
  wire [0:0]\state_reg[2]_27 ;
  wire [0:0]\state_reg[2]_28 ;
  wire [0:0]\state_reg[2]_29 ;
  wire [0:0]\state_reg[2]_3 ;
  wire [0:0]\state_reg[2]_30 ;
  wire [0:0]\state_reg[2]_31 ;
  wire [0:0]\state_reg[2]_4 ;
  wire [0:0]\state_reg[2]_5 ;
  wire [0:0]\state_reg[2]_6 ;
  wire [0:0]\state_reg[2]_7 ;
  wire [0:0]\state_reg[2]_8 ;
  wire [0:0]\state_reg[2]_9 ;
  wire update_params;
  wire NLW_addr_a_CARRYCASCOUT_UNCONNECTED;
  wire NLW_addr_a_MULTSIGNOUT_UNCONNECTED;
  wire NLW_addr_a_OVERFLOW_UNCONNECTED;
  wire NLW_addr_a_PATTERNBDETECT_UNCONNECTED;
  wire NLW_addr_a_PATTERNDETECT_UNCONNECTED;
  wire NLW_addr_a_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_addr_a_ACOUT_UNCONNECTED;
  wire [17:0]NLW_addr_a_BCOUT_UNCONNECTED;
  wire [3:0]NLW_addr_a_CARRYOUT_UNCONNECTED;
  wire [47:15]NLW_addr_a_P_UNCONNECTED;
  wire [47:0]NLW_addr_a_PCOUT_UNCONNECTED;
  wire [3:3]\NLW_reg_add_reg[28]_i_1_CO_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h200C)) 
    \FSM_onehot_state[1]_i_3 
       (.I0(state[0]),
        .I1(state[3]),
        .I2(state[2]),
        .I3(state[1]),
        .O(\state_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFAFAAAAAAAA)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(\FSM_onehot_state_reg[3] [0]),
        .I1(state[0]),
        .I2(state[3]),
        .I3(state[2]),
        .I4(state[1]),
        .I5(\FSM_onehot_state_reg[3] [1]),
        .O(D));
  top_mat_mul_0_0_dim_counter__parameterized0 a_col_counter
       (.CO(a_col_cnt_last),
        .Q(count_reg),
        .anrst(anrst),
        .anrst_0(anrst_0),
        .clk(clk),
        .\count_reg[0]_0 (state),
        .in_axis_tvalid(in_axis_tvalid),
        .in_axis_tvalid_0(a_col_counter_n_10),
        .last_carry_0(mat_col_size_reg[7:0]),
        .\mat_col_size_reg_reg[4] (a_col_counter_n_12),
        .\mat_col_size_reg_reg[5] (a_col_counter_n_11),
        .\mat_col_size_reg_reg[5]_0 (a_col_counter_n_13),
        .\state_reg[0] (a_row_cnt_last),
        .\state_reg[0]_0 (b_cnt_last),
        .\state_reg[2] (a_col_counter_n_9));
  top_mat_mul_0_0_dim_counter a_row_counter
       (.CO(a_col_cnt_last),
        .D(p_0_in__1),
        .E(a_col_counter_n_9),
        .Q(count_reg_0),
        .clk(clk),
        .\count_reg[0]_0 (state),
        .\count_reg[0]_1 (\count_reg[6] [0]),
        .\count_reg[6]_0 (a_row_cnt_last),
        .\count_reg[6]_1 (anrst_0),
        .in_axis_tvalid(in_axis_tvalid),
        .last_carry_0(mat_row_size_reg[6:0]),
        .last_carry_1(r_counter_n_11),
        .last_carry_2(r_counter_n_12),
        .\state_reg[1] (a_row_counter_n_8),
        .\state_reg[3] (a_row_counter_n_10));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-13 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    addr_a
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,mat_col_size_reg[14:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_addr_a_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,count_reg_0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_addr_a_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,count_reg}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_addr_a_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_addr_a_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_addr_a_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_addr_a_OVERFLOW_UNCONNECTED),
        .P({NLW_addr_a_P_UNCONNECTED[47:15],P}),
        .PATTERNBDETECT(NLW_addr_a_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_addr_a_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_addr_a_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_addr_a_UNDERFLOW_UNCONNECTED));
  top_mat_mul_0_0_dim_counter__parameterized0_0 b_counter
       (.D(next_state[2:1]),
        .E(update_params),
        .Q(Q),
        .clk(clk),
        .\count_reg[0]_0 (state),
        .\count_reg[7]_0 (b_cnt_last),
        .\count_reg[7]_1 (anrst_0),
        .in_axis_tvalid(in_axis_tvalid),
        .last_carry_0({mat_col_size_reg[7:6],mat_col_size_reg[3:0]}),
        .last_carry_1(a_col_counter_n_11),
        .last_carry_2(a_col_counter_n_12),
        .last_carry_3(a_col_counter_n_13),
        .\state_reg[0] (\state[0]_i_4_n_0 ),
        .\state_reg[0]_0 (a_row_counter_n_8),
        .\state_reg[1] (b_counter_n_11),
        .\state_reg[1]_0 (\state[1]_i_3_n_0 ),
        .\state_reg[1]_1 (\state[1]_i_4_n_0 ),
        .\state_reg[1]_2 (\state[1]_i_5_n_0 ),
        .\state_reg[1]_3 (r_counter_n_8),
        .\state_reg[2] (\state[2]_i_2_n_0 ),
        .\state_reg[2]_0 (r_counter_n_9));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \err_reg[0]_i_10 
       (.I0(mat_col_size_reg[22]),
        .I1(mat_col_size_reg[23]),
        .I2(mat_col_size_reg[17]),
        .I3(mat_col_size_reg[20]),
        .O(\err_reg[0]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \err_reg[0]_i_2 
       (.I0(\err_reg[1]_i_4_n_0 ),
        .I1(\err_reg[1]_i_6_n_0 ),
        .I2(\err_reg[1]_i_3_n_0 ),
        .I3(r_counter_n_11),
        .O(\mat_row_size_reg_reg[29]_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \err_reg[0]_i_3 
       (.I0(\err_reg[0]_i_4_n_0 ),
        .I1(\err_reg[0]_i_5_n_0 ),
        .I2(\err_reg[0]_i_6_n_0 ),
        .I3(\err_reg[0]_i_7_n_0 ),
        .O(\mat_col_size_reg_reg[8]_0 ));
  LUT4 #(
    .INIT(16'hAAA8)) 
    \err_reg[0]_i_4 
       (.I0(mat_col_size_reg[8]),
        .I1(a_col_counter_n_13),
        .I2(mat_col_size_reg[7]),
        .I3(mat_col_size_reg[6]),
        .O(\err_reg[0]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \err_reg[0]_i_5 
       (.I0(mat_col_size_reg[11]),
        .I1(mat_col_size_reg[10]),
        .I2(mat_col_size_reg[16]),
        .I3(mat_col_size_reg[13]),
        .I4(\err_reg[0]_i_8_n_0 ),
        .O(\err_reg[0]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \err_reg[0]_i_6 
       (.I0(mat_col_size_reg[19]),
        .I1(mat_col_size_reg[18]),
        .I2(mat_col_size_reg[24]),
        .I3(mat_col_size_reg[21]),
        .I4(\err_reg[0]_i_9_n_0 ),
        .O(\err_reg[0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \err_reg[0]_i_7 
       (.I0(\err_reg[0]_i_10_n_0 ),
        .I1(mat_col_size_reg[27]),
        .I2(mat_col_size_reg[26]),
        .I3(mat_col_size_reg[30]),
        .O(\err_reg[0]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \err_reg[0]_i_8 
       (.I0(mat_col_size_reg[14]),
        .I1(mat_col_size_reg[15]),
        .I2(mat_col_size_reg[9]),
        .I3(mat_col_size_reg[12]),
        .O(\err_reg[0]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \err_reg[0]_i_9 
       (.I0(mat_col_size_reg[29]),
        .I1(mat_col_size_reg[31]),
        .I2(mat_col_size_reg[25]),
        .I3(mat_col_size_reg[28]),
        .O(\err_reg[0]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \err_reg[1]_i_10 
       (.I0(mat_row_size_reg[8]),
        .I1(mat_row_size_reg[14]),
        .I2(mat_row_size_reg[15]),
        .I3(mat_row_size_reg[30]),
        .O(\err_reg[1]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \err_reg[1]_i_11 
       (.I0(mat_row_size_reg[26]),
        .I1(mat_row_size_reg[27]),
        .I2(mat_row_size_reg[12]),
        .I3(mat_row_size_reg[25]),
        .O(\err_reg[1]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF1)) 
    \err_reg[1]_i_2 
       (.I0(r_counter_n_11),
        .I1(\err_reg[1]_i_3_n_0 ),
        .I2(\err_reg[1]_i_4_n_0 ),
        .I3(\err_reg[1]_i_5_n_0 ),
        .I4(\err_reg[1]_i_6_n_0 ),
        .I5(\err_reg[1]_i_7_n_0 ),
        .O(err));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \err_reg[1]_i_3 
       (.I0(\err_reg[1]_i_8_n_0 ),
        .I1(mat_row_size_reg[6]),
        .I2(mat_row_size_reg[7]),
        .I3(mat_row_size_reg[19]),
        .I4(mat_row_size_reg[18]),
        .O(\err_reg[1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \err_reg[1]_i_4 
       (.I0(mat_row_size_reg[29]),
        .I1(mat_row_size_reg[22]),
        .I2(mat_row_size_reg[17]),
        .I3(\err_reg[1]_i_9_n_0 ),
        .I4(\err_reg[1]_i_10_n_0 ),
        .O(\err_reg[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \err_reg[1]_i_5 
       (.I0(mat_row_size_reg[16]),
        .I1(mat_row_size_reg[10]),
        .I2(mat_row_size_reg[11]),
        .I3(mat_row_size_reg[18]),
        .I4(mat_row_size_reg[19]),
        .O(\err_reg[1]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \err_reg[1]_i_6 
       (.I0(mat_row_size_reg[24]),
        .I1(mat_row_size_reg[20]),
        .I2(mat_row_size_reg[28]),
        .I3(mat_row_size_reg[21]),
        .I4(\err_reg[1]_i_11_n_0 ),
        .O(\err_reg[1]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hA8)) 
    \err_reg[1]_i_7 
       (.I0(mat_row_size_reg[7]),
        .I1(r_counter_n_11),
        .I2(mat_row_size_reg[6]),
        .O(\err_reg[1]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \err_reg[1]_i_8 
       (.I0(mat_row_size_reg[11]),
        .I1(mat_row_size_reg[10]),
        .I2(mat_row_size_reg[16]),
        .O(\err_reg[1]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \err_reg[1]_i_9 
       (.I0(mat_row_size_reg[13]),
        .I1(mat_row_size_reg[23]),
        .I2(mat_row_size_reg[9]),
        .I3(mat_row_size_reg[31]),
        .O(\err_reg[1]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h10)) 
    in_axis_tready_INST_0
       (.I0(state[3]),
        .I1(state[2]),
        .I2(state[1]),
        .O(in_axis_tready));
  FDCE \mat_col_size_reg_reg[0] 
       (.C(clk),
        .CE(update_params),
        .CLR(anrst_0),
        .D(\mat_col_size_reg_reg[31]_0 [0]),
        .Q(mat_col_size_reg[0]));
  FDCE \mat_col_size_reg_reg[10] 
       (.C(clk),
        .CE(update_params),
        .CLR(anrst_0),
        .D(\mat_col_size_reg_reg[31]_0 [10]),
        .Q(mat_col_size_reg[10]));
  FDCE \mat_col_size_reg_reg[11] 
       (.C(clk),
        .CE(update_params),
        .CLR(anrst_0),
        .D(\mat_col_size_reg_reg[31]_0 [11]),
        .Q(mat_col_size_reg[11]));
  FDCE \mat_col_size_reg_reg[12] 
       (.C(clk),
        .CE(update_params),
        .CLR(anrst_0),
        .D(\mat_col_size_reg_reg[31]_0 [12]),
        .Q(mat_col_size_reg[12]));
  FDCE \mat_col_size_reg_reg[13] 
       (.C(clk),
        .CE(update_params),
        .CLR(anrst_0),
        .D(\mat_col_size_reg_reg[31]_0 [13]),
        .Q(mat_col_size_reg[13]));
  FDCE \mat_col_size_reg_reg[14] 
       (.C(clk),
        .CE(update_params),
        .CLR(anrst_0),
        .D(\mat_col_size_reg_reg[31]_0 [14]),
        .Q(mat_col_size_reg[14]));
  FDCE \mat_col_size_reg_reg[15] 
       (.C(clk),
        .CE(update_params),
        .CLR(anrst_0),
        .D(\mat_col_size_reg_reg[31]_0 [15]),
        .Q(mat_col_size_reg[15]));
  FDCE \mat_col_size_reg_reg[16] 
       (.C(clk),
        .CE(update_params),
        .CLR(anrst_0),
        .D(\mat_col_size_reg_reg[31]_0 [16]),
        .Q(mat_col_size_reg[16]));
  FDCE \mat_col_size_reg_reg[17] 
       (.C(clk),
        .CE(update_params),
        .CLR(anrst_0),
        .D(\mat_col_size_reg_reg[31]_0 [17]),
        .Q(mat_col_size_reg[17]));
  FDCE \mat_col_size_reg_reg[18] 
       (.C(clk),
        .CE(update_params),
        .CLR(anrst_0),
        .D(\mat_col_size_reg_reg[31]_0 [18]),
        .Q(mat_col_size_reg[18]));
  FDCE \mat_col_size_reg_reg[19] 
       (.C(clk),
        .CE(update_params),
        .CLR(anrst_0),
        .D(\mat_col_size_reg_reg[31]_0 [19]),
        .Q(mat_col_size_reg[19]));
  FDCE \mat_col_size_reg_reg[1] 
       (.C(clk),
        .CE(update_params),
        .CLR(anrst_0),
        .D(\mat_col_size_reg_reg[31]_0 [1]),
        .Q(mat_col_size_reg[1]));
  FDCE \mat_col_size_reg_reg[20] 
       (.C(clk),
        .CE(update_params),
        .CLR(anrst_0),
        .D(\mat_col_size_reg_reg[31]_0 [20]),
        .Q(mat_col_size_reg[20]));
  FDCE \mat_col_size_reg_reg[21] 
       (.C(clk),
        .CE(update_params),
        .CLR(anrst_0),
        .D(\mat_col_size_reg_reg[31]_0 [21]),
        .Q(mat_col_size_reg[21]));
  FDCE \mat_col_size_reg_reg[22] 
       (.C(clk),
        .CE(update_params),
        .CLR(anrst_0),
        .D(\mat_col_size_reg_reg[31]_0 [22]),
        .Q(mat_col_size_reg[22]));
  FDCE \mat_col_size_reg_reg[23] 
       (.C(clk),
        .CE(update_params),
        .CLR(anrst_0),
        .D(\mat_col_size_reg_reg[31]_0 [23]),
        .Q(mat_col_size_reg[23]));
  FDCE \mat_col_size_reg_reg[24] 
       (.C(clk),
        .CE(update_params),
        .CLR(anrst_0),
        .D(\mat_col_size_reg_reg[31]_0 [24]),
        .Q(mat_col_size_reg[24]));
  FDCE \mat_col_size_reg_reg[25] 
       (.C(clk),
        .CE(update_params),
        .CLR(anrst_0),
        .D(\mat_col_size_reg_reg[31]_0 [25]),
        .Q(mat_col_size_reg[25]));
  FDCE \mat_col_size_reg_reg[26] 
       (.C(clk),
        .CE(update_params),
        .CLR(anrst_0),
        .D(\mat_col_size_reg_reg[31]_0 [26]),
        .Q(mat_col_size_reg[26]));
  FDCE \mat_col_size_reg_reg[27] 
       (.C(clk),
        .CE(update_params),
        .CLR(anrst_0),
        .D(\mat_col_size_reg_reg[31]_0 [27]),
        .Q(mat_col_size_reg[27]));
  FDCE \mat_col_size_reg_reg[28] 
       (.C(clk),
        .CE(update_params),
        .CLR(anrst_0),
        .D(\mat_col_size_reg_reg[31]_0 [28]),
        .Q(mat_col_size_reg[28]));
  FDCE \mat_col_size_reg_reg[29] 
       (.C(clk),
        .CE(update_params),
        .CLR(anrst_0),
        .D(\mat_col_size_reg_reg[31]_0 [29]),
        .Q(mat_col_size_reg[29]));
  FDCE \mat_col_size_reg_reg[2] 
       (.C(clk),
        .CE(update_params),
        .CLR(anrst_0),
        .D(\mat_col_size_reg_reg[31]_0 [2]),
        .Q(mat_col_size_reg[2]));
  FDCE \mat_col_size_reg_reg[30] 
       (.C(clk),
        .CE(update_params),
        .CLR(anrst_0),
        .D(\mat_col_size_reg_reg[31]_0 [30]),
        .Q(mat_col_size_reg[30]));
  FDCE \mat_col_size_reg_reg[31] 
       (.C(clk),
        .CE(update_params),
        .CLR(anrst_0),
        .D(\mat_col_size_reg_reg[31]_0 [31]),
        .Q(mat_col_size_reg[31]));
  FDCE \mat_col_size_reg_reg[3] 
       (.C(clk),
        .CE(update_params),
        .CLR(anrst_0),
        .D(\mat_col_size_reg_reg[31]_0 [3]),
        .Q(mat_col_size_reg[3]));
  FDCE \mat_col_size_reg_reg[4] 
       (.C(clk),
        .CE(update_params),
        .CLR(anrst_0),
        .D(\mat_col_size_reg_reg[31]_0 [4]),
        .Q(mat_col_size_reg[4]));
  FDCE \mat_col_size_reg_reg[5] 
       (.C(clk),
        .CE(update_params),
        .CLR(anrst_0),
        .D(\mat_col_size_reg_reg[31]_0 [5]),
        .Q(mat_col_size_reg[5]));
  FDCE \mat_col_size_reg_reg[6] 
       (.C(clk),
        .CE(update_params),
        .CLR(anrst_0),
        .D(\mat_col_size_reg_reg[31]_0 [6]),
        .Q(mat_col_size_reg[6]));
  FDCE \mat_col_size_reg_reg[7] 
       (.C(clk),
        .CE(update_params),
        .CLR(anrst_0),
        .D(\mat_col_size_reg_reg[31]_0 [7]),
        .Q(mat_col_size_reg[7]));
  FDCE \mat_col_size_reg_reg[8] 
       (.C(clk),
        .CE(update_params),
        .CLR(anrst_0),
        .D(\mat_col_size_reg_reg[31]_0 [8]),
        .Q(mat_col_size_reg[8]));
  FDCE \mat_col_size_reg_reg[9] 
       (.C(clk),
        .CE(update_params),
        .CLR(anrst_0),
        .D(\mat_col_size_reg_reg[31]_0 [9]),
        .Q(mat_col_size_reg[9]));
  LUT5 #(
    .INIT(32'h00000100)) 
    \mat_row_size_reg[31]_i_1 
       (.I0(state[3]),
        .I1(state[2]),
        .I2(state[0]),
        .I3(\FSM_onehot_state_reg[3] [0]),
        .I4(state[1]),
        .O(update_params));
  FDCE \mat_row_size_reg_reg[0] 
       (.C(clk),
        .CE(update_params),
        .CLR(anrst_0),
        .D(\mat_row_size_reg_reg[31]_0 [0]),
        .Q(mat_row_size_reg[0]));
  FDCE \mat_row_size_reg_reg[10] 
       (.C(clk),
        .CE(update_params),
        .CLR(anrst_0),
        .D(\mat_row_size_reg_reg[31]_0 [10]),
        .Q(mat_row_size_reg[10]));
  FDCE \mat_row_size_reg_reg[11] 
       (.C(clk),
        .CE(update_params),
        .CLR(anrst_0),
        .D(\mat_row_size_reg_reg[31]_0 [11]),
        .Q(mat_row_size_reg[11]));
  FDCE \mat_row_size_reg_reg[12] 
       (.C(clk),
        .CE(update_params),
        .CLR(anrst_0),
        .D(\mat_row_size_reg_reg[31]_0 [12]),
        .Q(mat_row_size_reg[12]));
  FDCE \mat_row_size_reg_reg[13] 
       (.C(clk),
        .CE(update_params),
        .CLR(anrst_0),
        .D(\mat_row_size_reg_reg[31]_0 [13]),
        .Q(mat_row_size_reg[13]));
  FDCE \mat_row_size_reg_reg[14] 
       (.C(clk),
        .CE(update_params),
        .CLR(anrst_0),
        .D(\mat_row_size_reg_reg[31]_0 [14]),
        .Q(mat_row_size_reg[14]));
  FDCE \mat_row_size_reg_reg[15] 
       (.C(clk),
        .CE(update_params),
        .CLR(anrst_0),
        .D(\mat_row_size_reg_reg[31]_0 [15]),
        .Q(mat_row_size_reg[15]));
  FDCE \mat_row_size_reg_reg[16] 
       (.C(clk),
        .CE(update_params),
        .CLR(anrst_0),
        .D(\mat_row_size_reg_reg[31]_0 [16]),
        .Q(mat_row_size_reg[16]));
  FDCE \mat_row_size_reg_reg[17] 
       (.C(clk),
        .CE(update_params),
        .CLR(anrst_0),
        .D(\mat_row_size_reg_reg[31]_0 [17]),
        .Q(mat_row_size_reg[17]));
  FDCE \mat_row_size_reg_reg[18] 
       (.C(clk),
        .CE(update_params),
        .CLR(anrst_0),
        .D(\mat_row_size_reg_reg[31]_0 [18]),
        .Q(mat_row_size_reg[18]));
  FDCE \mat_row_size_reg_reg[19] 
       (.C(clk),
        .CE(update_params),
        .CLR(anrst_0),
        .D(\mat_row_size_reg_reg[31]_0 [19]),
        .Q(mat_row_size_reg[19]));
  FDCE \mat_row_size_reg_reg[1] 
       (.C(clk),
        .CE(update_params),
        .CLR(anrst_0),
        .D(\mat_row_size_reg_reg[31]_0 [1]),
        .Q(mat_row_size_reg[1]));
  FDCE \mat_row_size_reg_reg[20] 
       (.C(clk),
        .CE(update_params),
        .CLR(anrst_0),
        .D(\mat_row_size_reg_reg[31]_0 [20]),
        .Q(mat_row_size_reg[20]));
  FDCE \mat_row_size_reg_reg[21] 
       (.C(clk),
        .CE(update_params),
        .CLR(anrst_0),
        .D(\mat_row_size_reg_reg[31]_0 [21]),
        .Q(mat_row_size_reg[21]));
  FDCE \mat_row_size_reg_reg[22] 
       (.C(clk),
        .CE(update_params),
        .CLR(anrst_0),
        .D(\mat_row_size_reg_reg[31]_0 [22]),
        .Q(mat_row_size_reg[22]));
  FDCE \mat_row_size_reg_reg[23] 
       (.C(clk),
        .CE(update_params),
        .CLR(anrst_0),
        .D(\mat_row_size_reg_reg[31]_0 [23]),
        .Q(mat_row_size_reg[23]));
  FDCE \mat_row_size_reg_reg[24] 
       (.C(clk),
        .CE(update_params),
        .CLR(anrst_0),
        .D(\mat_row_size_reg_reg[31]_0 [24]),
        .Q(mat_row_size_reg[24]));
  FDCE \mat_row_size_reg_reg[25] 
       (.C(clk),
        .CE(update_params),
        .CLR(anrst_0),
        .D(\mat_row_size_reg_reg[31]_0 [25]),
        .Q(mat_row_size_reg[25]));
  FDCE \mat_row_size_reg_reg[26] 
       (.C(clk),
        .CE(update_params),
        .CLR(anrst_0),
        .D(\mat_row_size_reg_reg[31]_0 [26]),
        .Q(mat_row_size_reg[26]));
  FDCE \mat_row_size_reg_reg[27] 
       (.C(clk),
        .CE(update_params),
        .CLR(anrst_0),
        .D(\mat_row_size_reg_reg[31]_0 [27]),
        .Q(mat_row_size_reg[27]));
  FDCE \mat_row_size_reg_reg[28] 
       (.C(clk),
        .CE(update_params),
        .CLR(anrst_0),
        .D(\mat_row_size_reg_reg[31]_0 [28]),
        .Q(mat_row_size_reg[28]));
  FDCE \mat_row_size_reg_reg[29] 
       (.C(clk),
        .CE(update_params),
        .CLR(anrst_0),
        .D(\mat_row_size_reg_reg[31]_0 [29]),
        .Q(mat_row_size_reg[29]));
  FDCE \mat_row_size_reg_reg[2] 
       (.C(clk),
        .CE(update_params),
        .CLR(anrst_0),
        .D(\mat_row_size_reg_reg[31]_0 [2]),
        .Q(mat_row_size_reg[2]));
  FDCE \mat_row_size_reg_reg[30] 
       (.C(clk),
        .CE(update_params),
        .CLR(anrst_0),
        .D(\mat_row_size_reg_reg[31]_0 [30]),
        .Q(mat_row_size_reg[30]));
  FDCE \mat_row_size_reg_reg[31] 
       (.C(clk),
        .CE(update_params),
        .CLR(anrst_0),
        .D(\mat_row_size_reg_reg[31]_0 [31]),
        .Q(mat_row_size_reg[31]));
  FDCE \mat_row_size_reg_reg[3] 
       (.C(clk),
        .CE(update_params),
        .CLR(anrst_0),
        .D(\mat_row_size_reg_reg[31]_0 [3]),
        .Q(mat_row_size_reg[3]));
  FDCE \mat_row_size_reg_reg[4] 
       (.C(clk),
        .CE(update_params),
        .CLR(anrst_0),
        .D(\mat_row_size_reg_reg[31]_0 [4]),
        .Q(mat_row_size_reg[4]));
  FDCE \mat_row_size_reg_reg[5] 
       (.C(clk),
        .CE(update_params),
        .CLR(anrst_0),
        .D(\mat_row_size_reg_reg[31]_0 [5]),
        .Q(mat_row_size_reg[5]));
  FDCE \mat_row_size_reg_reg[6] 
       (.C(clk),
        .CE(update_params),
        .CLR(anrst_0),
        .D(\mat_row_size_reg_reg[31]_0 [6]),
        .Q(mat_row_size_reg[6]));
  FDCE \mat_row_size_reg_reg[7] 
       (.C(clk),
        .CE(update_params),
        .CLR(anrst_0),
        .D(\mat_row_size_reg_reg[31]_0 [7]),
        .Q(mat_row_size_reg[7]));
  FDCE \mat_row_size_reg_reg[8] 
       (.C(clk),
        .CE(update_params),
        .CLR(anrst_0),
        .D(\mat_row_size_reg_reg[31]_0 [8]),
        .Q(mat_row_size_reg[8]));
  FDCE \mat_row_size_reg_reg[9] 
       (.C(clk),
        .CE(update_params),
        .CLR(anrst_0),
        .D(\mat_row_size_reg_reg[31]_0 [9]),
        .Q(mat_row_size_reg[9]));
  LUT5 #(
    .INIT(32'h00040000)) 
    mem_inst_reg_0_0_i_1
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(state[3]),
        .I4(in_axis_tvalid),
        .O(\state_reg[2]_15 ));
  LUT5 #(
    .INIT(32'h00040000)) 
    mem_inst_reg_0_10_i_1
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(state[3]),
        .I4(in_axis_tvalid),
        .O(\state_reg[2]_25 ));
  LUT5 #(
    .INIT(32'h00040000)) 
    mem_inst_reg_0_11_i_1
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(state[3]),
        .I4(in_axis_tvalid),
        .O(\state_reg[2]_26 ));
  LUT5 #(
    .INIT(32'h00040000)) 
    mem_inst_reg_0_12_i_1
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(state[3]),
        .I4(in_axis_tvalid),
        .O(\state_reg[2]_27 ));
  LUT5 #(
    .INIT(32'h00040000)) 
    mem_inst_reg_0_13_i_1
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(state[3]),
        .I4(in_axis_tvalid),
        .O(\state_reg[2]_28 ));
  LUT5 #(
    .INIT(32'h00040000)) 
    mem_inst_reg_0_14_i_1
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(state[3]),
        .I4(in_axis_tvalid),
        .O(\state_reg[2]_29 ));
  LUT5 #(
    .INIT(32'h00040000)) 
    mem_inst_reg_0_15_i_1
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(state[3]),
        .I4(in_axis_tvalid),
        .O(\state_reg[2]_30 ));
  LUT5 #(
    .INIT(32'h00040000)) 
    mem_inst_reg_0_16_i_1
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(state[3]),
        .I4(in_axis_tvalid),
        .O(\state_reg[2]_31 ));
  LUT5 #(
    .INIT(32'h00040000)) 
    mem_inst_reg_0_17_i_1
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(state[3]),
        .I4(in_axis_tvalid),
        .O(\state_reg[2]_0 ));
  LUT5 #(
    .INIT(32'h00040000)) 
    mem_inst_reg_0_18_i_1
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(state[3]),
        .I4(in_axis_tvalid),
        .O(\state_reg[2]_1 ));
  LUT5 #(
    .INIT(32'h00040000)) 
    mem_inst_reg_0_19_i_1
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(state[3]),
        .I4(in_axis_tvalid),
        .O(\state_reg[2]_2 ));
  LUT5 #(
    .INIT(32'h00040000)) 
    mem_inst_reg_0_1_i_1
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(state[3]),
        .I4(in_axis_tvalid),
        .O(\state_reg[2]_16 ));
  LUT5 #(
    .INIT(32'h00040000)) 
    mem_inst_reg_0_20_i_1
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(state[3]),
        .I4(in_axis_tvalid),
        .O(\state_reg[2]_3 ));
  LUT5 #(
    .INIT(32'h00040000)) 
    mem_inst_reg_0_21_i_1
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(state[3]),
        .I4(in_axis_tvalid),
        .O(\state_reg[2]_4 ));
  LUT5 #(
    .INIT(32'h00040000)) 
    mem_inst_reg_0_22_i_1
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(state[3]),
        .I4(in_axis_tvalid),
        .O(\state_reg[2]_5 ));
  LUT5 #(
    .INIT(32'h00040000)) 
    mem_inst_reg_0_23_i_1
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(state[3]),
        .I4(in_axis_tvalid),
        .O(\state_reg[2]_6 ));
  LUT5 #(
    .INIT(32'h00040000)) 
    mem_inst_reg_0_24_i_1
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(state[3]),
        .I4(in_axis_tvalid),
        .O(\state_reg[2]_7 ));
  LUT5 #(
    .INIT(32'h00040000)) 
    mem_inst_reg_0_25_i_1
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(state[3]),
        .I4(in_axis_tvalid),
        .O(\state_reg[2]_8 ));
  LUT5 #(
    .INIT(32'h00040000)) 
    mem_inst_reg_0_26_i_1
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(state[3]),
        .I4(in_axis_tvalid),
        .O(\state_reg[2]_9 ));
  LUT5 #(
    .INIT(32'h00040000)) 
    mem_inst_reg_0_27_i_1
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(state[3]),
        .I4(in_axis_tvalid),
        .O(\state_reg[2]_10 ));
  LUT5 #(
    .INIT(32'h00040000)) 
    mem_inst_reg_0_28_i_1
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(state[3]),
        .I4(in_axis_tvalid),
        .O(\state_reg[2]_11 ));
  LUT5 #(
    .INIT(32'h00040000)) 
    mem_inst_reg_0_29_i_1
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(state[3]),
        .I4(in_axis_tvalid),
        .O(\state_reg[2]_12 ));
  LUT5 #(
    .INIT(32'h00040000)) 
    mem_inst_reg_0_2_i_1
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(state[3]),
        .I4(in_axis_tvalid),
        .O(\state_reg[2]_17 ));
  LUT5 #(
    .INIT(32'h00040000)) 
    mem_inst_reg_0_30_i_1
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(state[3]),
        .I4(in_axis_tvalid),
        .O(\state_reg[2]_13 ));
  LUT5 #(
    .INIT(32'h00040000)) 
    mem_inst_reg_0_31_i_1
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(state[3]),
        .I4(in_axis_tvalid),
        .O(\state_reg[2]_14 ));
  LUT5 #(
    .INIT(32'h00040000)) 
    mem_inst_reg_0_3_i_1
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(state[3]),
        .I4(in_axis_tvalid),
        .O(\state_reg[2]_18 ));
  LUT5 #(
    .INIT(32'h00040000)) 
    mem_inst_reg_0_4_i_1
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(state[3]),
        .I4(in_axis_tvalid),
        .O(\state_reg[2]_19 ));
  LUT5 #(
    .INIT(32'h00040000)) 
    mem_inst_reg_0_5_i_1
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(state[3]),
        .I4(in_axis_tvalid),
        .O(\state_reg[2]_20 ));
  LUT5 #(
    .INIT(32'h00040000)) 
    mem_inst_reg_0_6_i_1
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(state[3]),
        .I4(in_axis_tvalid),
        .O(\state_reg[2]_21 ));
  LUT5 #(
    .INIT(32'h00040000)) 
    mem_inst_reg_0_7_i_1
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(state[3]),
        .I4(in_axis_tvalid),
        .O(\state_reg[2]_22 ));
  LUT5 #(
    .INIT(32'h00040000)) 
    mem_inst_reg_0_8_i_1
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(state[3]),
        .I4(in_axis_tvalid),
        .O(\state_reg[2]_23 ));
  LUT5 #(
    .INIT(32'h00040000)) 
    mem_inst_reg_0_9_i_1
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(state[3]),
        .I4(in_axis_tvalid),
        .O(\state_reg[2]_24 ));
  LUT5 #(
    .INIT(32'h04000000)) 
    mem_inst_reg_i_1
       (.I0(state[3]),
        .I1(in_axis_tvalid),
        .I2(state[2]),
        .I3(state[1]),
        .I4(state[0]),
        .O(WEA));
  LUT4 #(
    .INIT(16'h0400)) 
    mem_inst_reg_i_1__0
       (.I0(state[3]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(state[2]),
        .O(WEBWE));
  LUT5 #(
    .INIT(32'h02200000)) 
    mul_result__0_i_1
       (.I0(r_data_int_0[31]),
        .I1(state[3]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .O(mem_inst_reg[14]));
  LUT5 #(
    .INIT(32'h02200000)) 
    mul_result__0_i_10
       (.I0(r_data_int_0[22]),
        .I1(state[3]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .O(mem_inst_reg[5]));
  LUT5 #(
    .INIT(32'h02200000)) 
    mul_result__0_i_11
       (.I0(r_data_int_0[21]),
        .I1(state[3]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .O(mem_inst_reg[4]));
  LUT5 #(
    .INIT(32'h02200000)) 
    mul_result__0_i_12
       (.I0(r_data_int_0[20]),
        .I1(state[3]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .O(mem_inst_reg[3]));
  LUT5 #(
    .INIT(32'h02200000)) 
    mul_result__0_i_13
       (.I0(r_data_int_0[19]),
        .I1(state[3]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .O(mem_inst_reg[2]));
  LUT5 #(
    .INIT(32'h02200000)) 
    mul_result__0_i_14
       (.I0(r_data_int_0[18]),
        .I1(state[3]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .O(mem_inst_reg[1]));
  LUT5 #(
    .INIT(32'h02200000)) 
    mul_result__0_i_15
       (.I0(r_data_int_0[17]),
        .I1(state[3]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .O(mem_inst_reg[0]));
  LUT5 #(
    .INIT(32'h02200000)) 
    mul_result__0_i_2
       (.I0(r_data_int_0[30]),
        .I1(state[3]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .O(mem_inst_reg[13]));
  LUT5 #(
    .INIT(32'h02200000)) 
    mul_result__0_i_3
       (.I0(r_data_int_0[29]),
        .I1(state[3]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .O(mem_inst_reg[12]));
  LUT5 #(
    .INIT(32'h02200000)) 
    mul_result__0_i_4
       (.I0(r_data_int_0[28]),
        .I1(state[3]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .O(mem_inst_reg[11]));
  LUT5 #(
    .INIT(32'h02200000)) 
    mul_result__0_i_5
       (.I0(r_data_int_0[27]),
        .I1(state[3]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .O(mem_inst_reg[10]));
  LUT5 #(
    .INIT(32'h02200000)) 
    mul_result__0_i_6
       (.I0(r_data_int_0[26]),
        .I1(state[3]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .O(mem_inst_reg[9]));
  LUT5 #(
    .INIT(32'h02200000)) 
    mul_result__0_i_7
       (.I0(r_data_int_0[25]),
        .I1(state[3]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .O(mem_inst_reg[8]));
  LUT5 #(
    .INIT(32'h02200000)) 
    mul_result__0_i_8
       (.I0(r_data_int_0[24]),
        .I1(state[3]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .O(mem_inst_reg[7]));
  LUT5 #(
    .INIT(32'h02200000)) 
    mul_result__0_i_9
       (.I0(r_data_int_0[23]),
        .I1(state[3]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .O(mem_inst_reg[6]));
  LUT5 #(
    .INIT(32'h02200000)) 
    mul_result__1_i_1
       (.I0(r_data_int[16]),
        .I1(state[3]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .O(r_data[16]));
  LUT5 #(
    .INIT(32'h02200000)) 
    mul_result__1_i_10
       (.I0(r_data_int[7]),
        .I1(state[3]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .O(r_data[7]));
  LUT5 #(
    .INIT(32'h02200000)) 
    mul_result__1_i_11
       (.I0(r_data_int[6]),
        .I1(state[3]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .O(r_data[6]));
  LUT5 #(
    .INIT(32'h02200000)) 
    mul_result__1_i_12
       (.I0(r_data_int[5]),
        .I1(state[3]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .O(r_data[5]));
  LUT5 #(
    .INIT(32'h02200000)) 
    mul_result__1_i_13
       (.I0(r_data_int[4]),
        .I1(state[3]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .O(r_data[4]));
  LUT5 #(
    .INIT(32'h02200000)) 
    mul_result__1_i_14
       (.I0(r_data_int[3]),
        .I1(state[3]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .O(r_data[3]));
  LUT5 #(
    .INIT(32'h02200000)) 
    mul_result__1_i_15
       (.I0(r_data_int[2]),
        .I1(state[3]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .O(r_data[2]));
  LUT5 #(
    .INIT(32'h02200000)) 
    mul_result__1_i_16
       (.I0(r_data_int[1]),
        .I1(state[3]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .O(r_data[1]));
  LUT5 #(
    .INIT(32'h02200000)) 
    mul_result__1_i_17
       (.I0(r_data_int[0]),
        .I1(state[3]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .O(r_data[0]));
  LUT5 #(
    .INIT(32'h02200000)) 
    mul_result__1_i_2
       (.I0(r_data_int[15]),
        .I1(state[3]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .O(r_data[15]));
  LUT5 #(
    .INIT(32'h02200000)) 
    mul_result__1_i_3
       (.I0(r_data_int[14]),
        .I1(state[3]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .O(r_data[14]));
  LUT5 #(
    .INIT(32'h02200000)) 
    mul_result__1_i_4
       (.I0(r_data_int[13]),
        .I1(state[3]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .O(r_data[13]));
  LUT5 #(
    .INIT(32'h02200000)) 
    mul_result__1_i_5
       (.I0(r_data_int[12]),
        .I1(state[3]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .O(r_data[12]));
  LUT5 #(
    .INIT(32'h02200000)) 
    mul_result__1_i_6
       (.I0(r_data_int[11]),
        .I1(state[3]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .O(r_data[11]));
  LUT5 #(
    .INIT(32'h02200000)) 
    mul_result__1_i_7
       (.I0(r_data_int[10]),
        .I1(state[3]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .O(r_data[10]));
  LUT5 #(
    .INIT(32'h02200000)) 
    mul_result__1_i_8
       (.I0(r_data_int[9]),
        .I1(state[3]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .O(r_data[9]));
  LUT5 #(
    .INIT(32'h02200000)) 
    mul_result__1_i_9
       (.I0(r_data_int[8]),
        .I1(state[3]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .O(r_data[8]));
  LUT5 #(
    .INIT(32'h02200000)) 
    mul_result_i_1
       (.I0(r_data_int[31]),
        .I1(state[3]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .O(r_data[31]));
  LUT5 #(
    .INIT(32'h02200000)) 
    mul_result_i_10
       (.I0(r_data_int[22]),
        .I1(state[3]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .O(r_data[22]));
  LUT5 #(
    .INIT(32'h02200000)) 
    mul_result_i_11
       (.I0(r_data_int[21]),
        .I1(state[3]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .O(r_data[21]));
  LUT5 #(
    .INIT(32'h02200000)) 
    mul_result_i_12
       (.I0(r_data_int[20]),
        .I1(state[3]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .O(r_data[20]));
  LUT5 #(
    .INIT(32'h02200000)) 
    mul_result_i_13
       (.I0(r_data_int[19]),
        .I1(state[3]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .O(r_data[19]));
  LUT5 #(
    .INIT(32'h02200000)) 
    mul_result_i_14
       (.I0(r_data_int[18]),
        .I1(state[3]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .O(r_data[18]));
  LUT5 #(
    .INIT(32'h02200000)) 
    mul_result_i_15
       (.I0(r_data_int[17]),
        .I1(state[3]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .O(r_data[17]));
  LUT5 #(
    .INIT(32'h02200000)) 
    mul_result_i_16
       (.I0(r_data_int_0[16]),
        .I1(state[3]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .O(B[16]));
  LUT5 #(
    .INIT(32'h02200000)) 
    mul_result_i_17
       (.I0(r_data_int_0[15]),
        .I1(state[3]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .O(B[15]));
  LUT5 #(
    .INIT(32'h02200000)) 
    mul_result_i_18
       (.I0(r_data_int_0[14]),
        .I1(state[3]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .O(B[14]));
  LUT5 #(
    .INIT(32'h02200000)) 
    mul_result_i_19
       (.I0(r_data_int_0[13]),
        .I1(state[3]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .O(B[13]));
  LUT5 #(
    .INIT(32'h02200000)) 
    mul_result_i_2
       (.I0(r_data_int[30]),
        .I1(state[3]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .O(r_data[30]));
  LUT5 #(
    .INIT(32'h02200000)) 
    mul_result_i_20
       (.I0(r_data_int_0[12]),
        .I1(state[3]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .O(B[12]));
  LUT5 #(
    .INIT(32'h02200000)) 
    mul_result_i_21
       (.I0(r_data_int_0[11]),
        .I1(state[3]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .O(B[11]));
  LUT5 #(
    .INIT(32'h02200000)) 
    mul_result_i_22
       (.I0(r_data_int_0[10]),
        .I1(state[3]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .O(B[10]));
  LUT5 #(
    .INIT(32'h02200000)) 
    mul_result_i_23
       (.I0(r_data_int_0[9]),
        .I1(state[3]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .O(B[9]));
  LUT5 #(
    .INIT(32'h02200000)) 
    mul_result_i_24
       (.I0(r_data_int_0[8]),
        .I1(state[3]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .O(B[8]));
  LUT5 #(
    .INIT(32'h02200000)) 
    mul_result_i_25
       (.I0(r_data_int_0[7]),
        .I1(state[3]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .O(B[7]));
  LUT5 #(
    .INIT(32'h02200000)) 
    mul_result_i_26
       (.I0(r_data_int_0[6]),
        .I1(state[3]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .O(B[6]));
  LUT5 #(
    .INIT(32'h02200000)) 
    mul_result_i_27
       (.I0(r_data_int_0[5]),
        .I1(state[3]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .O(B[5]));
  LUT5 #(
    .INIT(32'h02200000)) 
    mul_result_i_28
       (.I0(r_data_int_0[4]),
        .I1(state[3]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .O(B[4]));
  LUT5 #(
    .INIT(32'h02200000)) 
    mul_result_i_29
       (.I0(r_data_int_0[3]),
        .I1(state[3]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .O(B[3]));
  LUT5 #(
    .INIT(32'h02200000)) 
    mul_result_i_3
       (.I0(r_data_int[29]),
        .I1(state[3]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .O(r_data[29]));
  LUT5 #(
    .INIT(32'h02200000)) 
    mul_result_i_30
       (.I0(r_data_int_0[2]),
        .I1(state[3]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .O(B[2]));
  LUT5 #(
    .INIT(32'h02200000)) 
    mul_result_i_31
       (.I0(r_data_int_0[1]),
        .I1(state[3]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .O(B[1]));
  LUT5 #(
    .INIT(32'h02200000)) 
    mul_result_i_32
       (.I0(r_data_int_0[0]),
        .I1(state[3]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .O(B[0]));
  LUT5 #(
    .INIT(32'h02200000)) 
    mul_result_i_4
       (.I0(r_data_int[28]),
        .I1(state[3]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .O(r_data[28]));
  LUT5 #(
    .INIT(32'h02200000)) 
    mul_result_i_5
       (.I0(r_data_int[27]),
        .I1(state[3]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .O(r_data[27]));
  LUT5 #(
    .INIT(32'h02200000)) 
    mul_result_i_6
       (.I0(r_data_int[26]),
        .I1(state[3]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .O(r_data[26]));
  LUT5 #(
    .INIT(32'h02200000)) 
    mul_result_i_7
       (.I0(r_data_int[25]),
        .I1(state[3]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .O(r_data[25]));
  LUT5 #(
    .INIT(32'h02200000)) 
    mul_result_i_8
       (.I0(r_data_int[24]),
        .I1(state[3]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .O(r_data[24]));
  LUT5 #(
    .INIT(32'h02200000)) 
    mul_result_i_9
       (.I0(r_data_int[23]),
        .I1(state[3]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .O(r_data[23]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h00000200)) 
    \out_axis_tdata[0]_INST_0 
       (.I0(r_data_int_1[0]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[3]),
        .I4(state[0]),
        .O(out_axis_tdata[0]));
  LUT5 #(
    .INIT(32'h00000200)) 
    \out_axis_tdata[10]_INST_0 
       (.I0(r_data_int_1[10]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[3]),
        .I4(state[0]),
        .O(out_axis_tdata[10]));
  LUT5 #(
    .INIT(32'h00000200)) 
    \out_axis_tdata[11]_INST_0 
       (.I0(r_data_int_1[11]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[3]),
        .I4(state[0]),
        .O(out_axis_tdata[11]));
  LUT5 #(
    .INIT(32'h00000200)) 
    \out_axis_tdata[12]_INST_0 
       (.I0(r_data_int_1[12]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[3]),
        .I4(state[0]),
        .O(out_axis_tdata[12]));
  LUT5 #(
    .INIT(32'h00000200)) 
    \out_axis_tdata[13]_INST_0 
       (.I0(r_data_int_1[13]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[3]),
        .I4(state[0]),
        .O(out_axis_tdata[13]));
  LUT5 #(
    .INIT(32'h00000200)) 
    \out_axis_tdata[14]_INST_0 
       (.I0(r_data_int_1[14]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[3]),
        .I4(state[0]),
        .O(out_axis_tdata[14]));
  LUT5 #(
    .INIT(32'h00000200)) 
    \out_axis_tdata[15]_INST_0 
       (.I0(r_data_int_1[15]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[3]),
        .I4(state[0]),
        .O(out_axis_tdata[15]));
  LUT5 #(
    .INIT(32'h00000200)) 
    \out_axis_tdata[16]_INST_0 
       (.I0(r_data_int_1[16]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[3]),
        .I4(state[0]),
        .O(out_axis_tdata[16]));
  LUT5 #(
    .INIT(32'h00000200)) 
    \out_axis_tdata[17]_INST_0 
       (.I0(r_data_int_1[17]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[3]),
        .I4(state[0]),
        .O(out_axis_tdata[17]));
  LUT5 #(
    .INIT(32'h00000200)) 
    \out_axis_tdata[18]_INST_0 
       (.I0(r_data_int_1[18]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[3]),
        .I4(state[0]),
        .O(out_axis_tdata[18]));
  LUT5 #(
    .INIT(32'h00000200)) 
    \out_axis_tdata[19]_INST_0 
       (.I0(r_data_int_1[19]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[3]),
        .I4(state[0]),
        .O(out_axis_tdata[19]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h00000200)) 
    \out_axis_tdata[1]_INST_0 
       (.I0(r_data_int_1[1]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[3]),
        .I4(state[0]),
        .O(out_axis_tdata[1]));
  LUT5 #(
    .INIT(32'h00000200)) 
    \out_axis_tdata[20]_INST_0 
       (.I0(r_data_int_1[20]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[3]),
        .I4(state[0]),
        .O(out_axis_tdata[20]));
  LUT5 #(
    .INIT(32'h00000200)) 
    \out_axis_tdata[21]_INST_0 
       (.I0(r_data_int_1[21]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[3]),
        .I4(state[0]),
        .O(out_axis_tdata[21]));
  LUT5 #(
    .INIT(32'h00000200)) 
    \out_axis_tdata[22]_INST_0 
       (.I0(r_data_int_1[22]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[3]),
        .I4(state[0]),
        .O(out_axis_tdata[22]));
  LUT5 #(
    .INIT(32'h00000200)) 
    \out_axis_tdata[23]_INST_0 
       (.I0(r_data_int_1[23]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[3]),
        .I4(state[0]),
        .O(out_axis_tdata[23]));
  LUT5 #(
    .INIT(32'h00000200)) 
    \out_axis_tdata[24]_INST_0 
       (.I0(r_data_int_1[24]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[3]),
        .I4(state[0]),
        .O(out_axis_tdata[24]));
  LUT5 #(
    .INIT(32'h00000200)) 
    \out_axis_tdata[25]_INST_0 
       (.I0(r_data_int_1[25]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[3]),
        .I4(state[0]),
        .O(out_axis_tdata[25]));
  LUT5 #(
    .INIT(32'h00000200)) 
    \out_axis_tdata[26]_INST_0 
       (.I0(r_data_int_1[26]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[3]),
        .I4(state[0]),
        .O(out_axis_tdata[26]));
  LUT5 #(
    .INIT(32'h00000200)) 
    \out_axis_tdata[27]_INST_0 
       (.I0(r_data_int_1[27]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[3]),
        .I4(state[0]),
        .O(out_axis_tdata[27]));
  LUT5 #(
    .INIT(32'h00000200)) 
    \out_axis_tdata[28]_INST_0 
       (.I0(r_data_int_1[28]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[3]),
        .I4(state[0]),
        .O(out_axis_tdata[28]));
  LUT5 #(
    .INIT(32'h00000200)) 
    \out_axis_tdata[29]_INST_0 
       (.I0(r_data_int_1[29]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[3]),
        .I4(state[0]),
        .O(out_axis_tdata[29]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h00000200)) 
    \out_axis_tdata[2]_INST_0 
       (.I0(r_data_int_1[2]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[3]),
        .I4(state[0]),
        .O(out_axis_tdata[2]));
  LUT5 #(
    .INIT(32'h00000200)) 
    \out_axis_tdata[30]_INST_0 
       (.I0(r_data_int_1[30]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[3]),
        .I4(state[0]),
        .O(out_axis_tdata[30]));
  LUT5 #(
    .INIT(32'h00000200)) 
    \out_axis_tdata[31]_INST_0 
       (.I0(r_data_int_1[31]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[3]),
        .I4(state[0]),
        .O(out_axis_tdata[31]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h00000200)) 
    \out_axis_tdata[3]_INST_0 
       (.I0(r_data_int_1[3]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[3]),
        .I4(state[0]),
        .O(out_axis_tdata[3]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h00000200)) 
    \out_axis_tdata[4]_INST_0 
       (.I0(r_data_int_1[4]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[3]),
        .I4(state[0]),
        .O(out_axis_tdata[4]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h00000200)) 
    \out_axis_tdata[5]_INST_0 
       (.I0(r_data_int_1[5]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[3]),
        .I4(state[0]),
        .O(out_axis_tdata[5]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h00000200)) 
    \out_axis_tdata[6]_INST_0 
       (.I0(r_data_int_1[6]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[3]),
        .I4(state[0]),
        .O(out_axis_tdata[6]));
  LUT5 #(
    .INIT(32'h00000200)) 
    \out_axis_tdata[7]_INST_0 
       (.I0(r_data_int_1[7]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[3]),
        .I4(state[0]),
        .O(out_axis_tdata[7]));
  LUT5 #(
    .INIT(32'h00000200)) 
    \out_axis_tdata[8]_INST_0 
       (.I0(r_data_int_1[8]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[3]),
        .I4(state[0]),
        .O(out_axis_tdata[8]));
  LUT5 #(
    .INIT(32'h00000200)) 
    \out_axis_tdata[9]_INST_0 
       (.I0(r_data_int_1[9]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[3]),
        .I4(state[0]),
        .O(out_axis_tdata[9]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h02)) 
    out_axis_tvalid_INST_0
       (.I0(state[3]),
        .I1(state[2]),
        .I2(state[1]),
        .O(out_axis_tvalid));
  top_mat_mul_0_0_dim_counter_1 r_counter
       (.CO(a_col_cnt_last),
        .D(next_state[0]),
        .Q(\count_reg[6] ),
        .clk(clk),
        .\count_reg[0]_0 (p_0_in__1),
        .\count_reg[0]_1 (anrst_0),
        .\count_reg[1]_0 (a_row_counter_n_10),
        .last_carry_0(mat_row_size_reg[6:0]),
        .\mat_row_size_reg_reg[1] (r_counter_n_12),
        .\mat_row_size_reg_reg[4] (r_counter_n_11),
        .out_axis_tlast(out_axis_tlast),
        .out_axis_tready(out_axis_tready),
        .\state_reg[0] (\state[3]_i_2_n_0 ),
        .\state_reg[0]_0 (b_counter_n_11),
        .\state_reg[0]_1 (state),
        .\state_reg[0]_2 (a_col_counter_n_10),
        .\state_reg[0]_3 (a_row_cnt_last),
        .\state_reg[0]_4 (\state[1]_i_8_n_0 ),
        .\state_reg[2] (r_counter_n_9),
        .\state_reg[3] (r_counter_n_8));
  LUT5 #(
    .INIT(32'h00200000)) 
    \reg_add[0]_i_2 
       (.I0(p_0_in[3]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[3]),
        .I4(state[0]),
        .O(\reg_add[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00200000)) 
    \reg_add[0]_i_3 
       (.I0(p_0_in[2]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[3]),
        .I4(state[0]),
        .O(\reg_add[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00200000)) 
    \reg_add[0]_i_4 
       (.I0(p_0_in[1]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[3]),
        .I4(state[0]),
        .O(\reg_add[0]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00200000)) 
    \reg_add[0]_i_5 
       (.I0(p_0_in[0]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[3]),
        .I4(state[0]),
        .O(\reg_add[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000040000000800)) 
    \reg_add[0]_i_6 
       (.I0(p_0_in[3]),
        .I1(state[0]),
        .I2(state[3]),
        .I3(state[2]),
        .I4(state[1]),
        .I5(reg_add_reg[3]),
        .O(\reg_add[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000040000000800)) 
    \reg_add[0]_i_7 
       (.I0(p_0_in[2]),
        .I1(state[0]),
        .I2(state[3]),
        .I3(state[2]),
        .I4(state[1]),
        .I5(reg_add_reg[2]),
        .O(\reg_add[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000040000000800)) 
    \reg_add[0]_i_8 
       (.I0(p_0_in[1]),
        .I1(state[0]),
        .I2(state[3]),
        .I3(state[2]),
        .I4(state[1]),
        .I5(reg_add_reg[1]),
        .O(\reg_add[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000040000000800)) 
    \reg_add[0]_i_9 
       (.I0(p_0_in[0]),
        .I1(state[0]),
        .I2(state[3]),
        .I3(state[2]),
        .I4(state[1]),
        .I5(reg_add_reg[0]),
        .O(\reg_add[0]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h00200000)) 
    \reg_add[12]_i_2 
       (.I0(p_0_in[15]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[3]),
        .I4(state[0]),
        .O(\reg_add[12]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00200000)) 
    \reg_add[12]_i_3 
       (.I0(p_0_in[14]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[3]),
        .I4(state[0]),
        .O(\reg_add[12]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00200000)) 
    \reg_add[12]_i_4 
       (.I0(p_0_in[13]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[3]),
        .I4(state[0]),
        .O(\reg_add[12]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00200000)) 
    \reg_add[12]_i_5 
       (.I0(p_0_in[12]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[3]),
        .I4(state[0]),
        .O(\reg_add[12]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000040000000800)) 
    \reg_add[12]_i_6 
       (.I0(p_0_in[15]),
        .I1(state[0]),
        .I2(state[3]),
        .I3(state[2]),
        .I4(state[1]),
        .I5(reg_add_reg[15]),
        .O(\reg_add[12]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000040000000800)) 
    \reg_add[12]_i_7 
       (.I0(p_0_in[14]),
        .I1(state[0]),
        .I2(state[3]),
        .I3(state[2]),
        .I4(state[1]),
        .I5(reg_add_reg[14]),
        .O(\reg_add[12]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000040000000800)) 
    \reg_add[12]_i_8 
       (.I0(p_0_in[13]),
        .I1(state[0]),
        .I2(state[3]),
        .I3(state[2]),
        .I4(state[1]),
        .I5(reg_add_reg[13]),
        .O(\reg_add[12]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000040000000800)) 
    \reg_add[12]_i_9 
       (.I0(p_0_in[12]),
        .I1(state[0]),
        .I2(state[3]),
        .I3(state[2]),
        .I4(state[1]),
        .I5(reg_add_reg[12]),
        .O(\reg_add[12]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h00200000)) 
    \reg_add[16]_i_2 
       (.I0(p_0_in[19]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[3]),
        .I4(state[0]),
        .O(\reg_add[16]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00200000)) 
    \reg_add[16]_i_3 
       (.I0(p_0_in[18]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[3]),
        .I4(state[0]),
        .O(\reg_add[16]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00200000)) 
    \reg_add[16]_i_4 
       (.I0(p_0_in[17]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[3]),
        .I4(state[0]),
        .O(\reg_add[16]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00200000)) 
    \reg_add[16]_i_5 
       (.I0(p_0_in[16]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[3]),
        .I4(state[0]),
        .O(\reg_add[16]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000040000000800)) 
    \reg_add[16]_i_6 
       (.I0(p_0_in[19]),
        .I1(state[0]),
        .I2(state[3]),
        .I3(state[2]),
        .I4(state[1]),
        .I5(reg_add_reg[19]),
        .O(\reg_add[16]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000040000000800)) 
    \reg_add[16]_i_7 
       (.I0(p_0_in[18]),
        .I1(state[0]),
        .I2(state[3]),
        .I3(state[2]),
        .I4(state[1]),
        .I5(reg_add_reg[18]),
        .O(\reg_add[16]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000040000000800)) 
    \reg_add[16]_i_8 
       (.I0(p_0_in[17]),
        .I1(state[0]),
        .I2(state[3]),
        .I3(state[2]),
        .I4(state[1]),
        .I5(reg_add_reg[17]),
        .O(\reg_add[16]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000040000000800)) 
    \reg_add[16]_i_9 
       (.I0(p_0_in[16]),
        .I1(state[0]),
        .I2(state[3]),
        .I3(state[2]),
        .I4(state[1]),
        .I5(reg_add_reg[16]),
        .O(\reg_add[16]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h00200000)) 
    \reg_add[20]_i_2 
       (.I0(p_0_in[23]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[3]),
        .I4(state[0]),
        .O(\reg_add[20]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00200000)) 
    \reg_add[20]_i_3 
       (.I0(p_0_in[22]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[3]),
        .I4(state[0]),
        .O(\reg_add[20]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00200000)) 
    \reg_add[20]_i_4 
       (.I0(p_0_in[21]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[3]),
        .I4(state[0]),
        .O(\reg_add[20]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00200000)) 
    \reg_add[20]_i_5 
       (.I0(p_0_in[20]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[3]),
        .I4(state[0]),
        .O(\reg_add[20]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000040000000800)) 
    \reg_add[20]_i_6 
       (.I0(p_0_in[23]),
        .I1(state[0]),
        .I2(state[3]),
        .I3(state[2]),
        .I4(state[1]),
        .I5(reg_add_reg[23]),
        .O(\reg_add[20]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000040000000800)) 
    \reg_add[20]_i_7 
       (.I0(p_0_in[22]),
        .I1(state[0]),
        .I2(state[3]),
        .I3(state[2]),
        .I4(state[1]),
        .I5(reg_add_reg[22]),
        .O(\reg_add[20]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000040000000800)) 
    \reg_add[20]_i_8 
       (.I0(p_0_in[21]),
        .I1(state[0]),
        .I2(state[3]),
        .I3(state[2]),
        .I4(state[1]),
        .I5(reg_add_reg[21]),
        .O(\reg_add[20]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000040000000800)) 
    \reg_add[20]_i_9 
       (.I0(p_0_in[20]),
        .I1(state[0]),
        .I2(state[3]),
        .I3(state[2]),
        .I4(state[1]),
        .I5(reg_add_reg[20]),
        .O(\reg_add[20]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h00200000)) 
    \reg_add[24]_i_2 
       (.I0(p_0_in[27]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[3]),
        .I4(state[0]),
        .O(\reg_add[24]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00200000)) 
    \reg_add[24]_i_3 
       (.I0(p_0_in[26]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[3]),
        .I4(state[0]),
        .O(\reg_add[24]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00200000)) 
    \reg_add[24]_i_4 
       (.I0(p_0_in[25]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[3]),
        .I4(state[0]),
        .O(\reg_add[24]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00200000)) 
    \reg_add[24]_i_5 
       (.I0(p_0_in[24]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[3]),
        .I4(state[0]),
        .O(\reg_add[24]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000040000000800)) 
    \reg_add[24]_i_6 
       (.I0(p_0_in[27]),
        .I1(state[0]),
        .I2(state[3]),
        .I3(state[2]),
        .I4(state[1]),
        .I5(reg_add_reg[27]),
        .O(\reg_add[24]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000040000000800)) 
    \reg_add[24]_i_7 
       (.I0(p_0_in[26]),
        .I1(state[0]),
        .I2(state[3]),
        .I3(state[2]),
        .I4(state[1]),
        .I5(reg_add_reg[26]),
        .O(\reg_add[24]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000040000000800)) 
    \reg_add[24]_i_8 
       (.I0(p_0_in[25]),
        .I1(state[0]),
        .I2(state[3]),
        .I3(state[2]),
        .I4(state[1]),
        .I5(reg_add_reg[25]),
        .O(\reg_add[24]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000040000000800)) 
    \reg_add[24]_i_9 
       (.I0(p_0_in[24]),
        .I1(state[0]),
        .I2(state[3]),
        .I3(state[2]),
        .I4(state[1]),
        .I5(reg_add_reg[24]),
        .O(\reg_add[24]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h00200000)) 
    \reg_add[28]_i_2 
       (.I0(p_0_in[30]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[3]),
        .I4(state[0]),
        .O(\reg_add[28]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00200000)) 
    \reg_add[28]_i_3 
       (.I0(p_0_in[29]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[3]),
        .I4(state[0]),
        .O(\reg_add[28]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00200000)) 
    \reg_add[28]_i_4 
       (.I0(p_0_in[28]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[3]),
        .I4(state[0]),
        .O(\reg_add[28]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000060000000000)) 
    \reg_add[28]_i_5 
       (.I0(reg_add_reg[31]),
        .I1(p_0_in[31]),
        .I2(state[1]),
        .I3(state[2]),
        .I4(state[3]),
        .I5(state[0]),
        .O(\reg_add[28]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000040000000800)) 
    \reg_add[28]_i_6 
       (.I0(p_0_in[30]),
        .I1(state[0]),
        .I2(state[3]),
        .I3(state[2]),
        .I4(state[1]),
        .I5(reg_add_reg[30]),
        .O(\reg_add[28]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000040000000800)) 
    \reg_add[28]_i_7 
       (.I0(p_0_in[29]),
        .I1(state[0]),
        .I2(state[3]),
        .I3(state[2]),
        .I4(state[1]),
        .I5(reg_add_reg[29]),
        .O(\reg_add[28]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000040000000800)) 
    \reg_add[28]_i_8 
       (.I0(p_0_in[28]),
        .I1(state[0]),
        .I2(state[3]),
        .I3(state[2]),
        .I4(state[1]),
        .I5(reg_add_reg[28]),
        .O(\reg_add[28]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h00200000)) 
    \reg_add[4]_i_2 
       (.I0(p_0_in[7]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[3]),
        .I4(state[0]),
        .O(\reg_add[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00200000)) 
    \reg_add[4]_i_3 
       (.I0(p_0_in[6]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[3]),
        .I4(state[0]),
        .O(\reg_add[4]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00200000)) 
    \reg_add[4]_i_4 
       (.I0(p_0_in[5]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[3]),
        .I4(state[0]),
        .O(\reg_add[4]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00200000)) 
    \reg_add[4]_i_5 
       (.I0(p_0_in[4]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[3]),
        .I4(state[0]),
        .O(\reg_add[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000040000000800)) 
    \reg_add[4]_i_6 
       (.I0(p_0_in[7]),
        .I1(state[0]),
        .I2(state[3]),
        .I3(state[2]),
        .I4(state[1]),
        .I5(reg_add_reg[7]),
        .O(\reg_add[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000040000000800)) 
    \reg_add[4]_i_7 
       (.I0(p_0_in[6]),
        .I1(state[0]),
        .I2(state[3]),
        .I3(state[2]),
        .I4(state[1]),
        .I5(reg_add_reg[6]),
        .O(\reg_add[4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000040000000800)) 
    \reg_add[4]_i_8 
       (.I0(p_0_in[5]),
        .I1(state[0]),
        .I2(state[3]),
        .I3(state[2]),
        .I4(state[1]),
        .I5(reg_add_reg[5]),
        .O(\reg_add[4]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000040000000800)) 
    \reg_add[4]_i_9 
       (.I0(p_0_in[4]),
        .I1(state[0]),
        .I2(state[3]),
        .I3(state[2]),
        .I4(state[1]),
        .I5(reg_add_reg[4]),
        .O(\reg_add[4]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h00200000)) 
    \reg_add[8]_i_2 
       (.I0(p_0_in[11]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[3]),
        .I4(state[0]),
        .O(\reg_add[8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00200000)) 
    \reg_add[8]_i_3 
       (.I0(p_0_in[10]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[3]),
        .I4(state[0]),
        .O(\reg_add[8]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00200000)) 
    \reg_add[8]_i_4 
       (.I0(p_0_in[9]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[3]),
        .I4(state[0]),
        .O(\reg_add[8]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00200000)) 
    \reg_add[8]_i_5 
       (.I0(p_0_in[8]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[3]),
        .I4(state[0]),
        .O(\reg_add[8]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000040000000800)) 
    \reg_add[8]_i_6 
       (.I0(p_0_in[11]),
        .I1(state[0]),
        .I2(state[3]),
        .I3(state[2]),
        .I4(state[1]),
        .I5(reg_add_reg[11]),
        .O(\reg_add[8]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000040000000800)) 
    \reg_add[8]_i_7 
       (.I0(p_0_in[10]),
        .I1(state[0]),
        .I2(state[3]),
        .I3(state[2]),
        .I4(state[1]),
        .I5(reg_add_reg[10]),
        .O(\reg_add[8]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000040000000800)) 
    \reg_add[8]_i_8 
       (.I0(p_0_in[9]),
        .I1(state[0]),
        .I2(state[3]),
        .I3(state[2]),
        .I4(state[1]),
        .I5(reg_add_reg[9]),
        .O(\reg_add[8]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000040000000800)) 
    \reg_add[8]_i_9 
       (.I0(p_0_in[8]),
        .I1(state[0]),
        .I2(state[3]),
        .I3(state[2]),
        .I4(state[1]),
        .I5(reg_add_reg[8]),
        .O(\reg_add[8]_i_9_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \reg_add_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\reg_add_reg[0]_i_1_n_0 ,\reg_add_reg[0]_i_1_n_1 ,\reg_add_reg[0]_i_1_n_2 ,\reg_add_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\reg_add[0]_i_2_n_0 ,\reg_add[0]_i_3_n_0 ,\reg_add[0]_i_4_n_0 ,\reg_add[0]_i_5_n_0 }),
        .O(O),
        .S({\reg_add[0]_i_6_n_0 ,\reg_add[0]_i_7_n_0 ,\reg_add[0]_i_8_n_0 ,\reg_add[0]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \reg_add_reg[12]_i_1 
       (.CI(\reg_add_reg[8]_i_1_n_0 ),
        .CO({\reg_add_reg[12]_i_1_n_0 ,\reg_add_reg[12]_i_1_n_1 ,\reg_add_reg[12]_i_1_n_2 ,\reg_add_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\reg_add[12]_i_2_n_0 ,\reg_add[12]_i_3_n_0 ,\reg_add[12]_i_4_n_0 ,\reg_add[12]_i_5_n_0 }),
        .O(\state_reg[1]_2 ),
        .S({\reg_add[12]_i_6_n_0 ,\reg_add[12]_i_7_n_0 ,\reg_add[12]_i_8_n_0 ,\reg_add[12]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \reg_add_reg[16]_i_1 
       (.CI(\reg_add_reg[12]_i_1_n_0 ),
        .CO({\reg_add_reg[16]_i_1_n_0 ,\reg_add_reg[16]_i_1_n_1 ,\reg_add_reg[16]_i_1_n_2 ,\reg_add_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\reg_add[16]_i_2_n_0 ,\reg_add[16]_i_3_n_0 ,\reg_add[16]_i_4_n_0 ,\reg_add[16]_i_5_n_0 }),
        .O(\state_reg[1]_3 ),
        .S({\reg_add[16]_i_6_n_0 ,\reg_add[16]_i_7_n_0 ,\reg_add[16]_i_8_n_0 ,\reg_add[16]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \reg_add_reg[20]_i_1 
       (.CI(\reg_add_reg[16]_i_1_n_0 ),
        .CO({\reg_add_reg[20]_i_1_n_0 ,\reg_add_reg[20]_i_1_n_1 ,\reg_add_reg[20]_i_1_n_2 ,\reg_add_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\reg_add[20]_i_2_n_0 ,\reg_add[20]_i_3_n_0 ,\reg_add[20]_i_4_n_0 ,\reg_add[20]_i_5_n_0 }),
        .O(\state_reg[1]_4 ),
        .S({\reg_add[20]_i_6_n_0 ,\reg_add[20]_i_7_n_0 ,\reg_add[20]_i_8_n_0 ,\reg_add[20]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \reg_add_reg[24]_i_1 
       (.CI(\reg_add_reg[20]_i_1_n_0 ),
        .CO({\reg_add_reg[24]_i_1_n_0 ,\reg_add_reg[24]_i_1_n_1 ,\reg_add_reg[24]_i_1_n_2 ,\reg_add_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\reg_add[24]_i_2_n_0 ,\reg_add[24]_i_3_n_0 ,\reg_add[24]_i_4_n_0 ,\reg_add[24]_i_5_n_0 }),
        .O(\state_reg[1]_5 ),
        .S({\reg_add[24]_i_6_n_0 ,\reg_add[24]_i_7_n_0 ,\reg_add[24]_i_8_n_0 ,\reg_add[24]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \reg_add_reg[28]_i_1 
       (.CI(\reg_add_reg[24]_i_1_n_0 ),
        .CO({\NLW_reg_add_reg[28]_i_1_CO_UNCONNECTED [3],\reg_add_reg[28]_i_1_n_1 ,\reg_add_reg[28]_i_1_n_2 ,\reg_add_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\reg_add[28]_i_2_n_0 ,\reg_add[28]_i_3_n_0 ,\reg_add[28]_i_4_n_0 }),
        .O(\state_reg[1]_6 ),
        .S({\reg_add[28]_i_5_n_0 ,\reg_add[28]_i_6_n_0 ,\reg_add[28]_i_7_n_0 ,\reg_add[28]_i_8_n_0 }));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \reg_add_reg[4]_i_1 
       (.CI(\reg_add_reg[0]_i_1_n_0 ),
        .CO({\reg_add_reg[4]_i_1_n_0 ,\reg_add_reg[4]_i_1_n_1 ,\reg_add_reg[4]_i_1_n_2 ,\reg_add_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\reg_add[4]_i_2_n_0 ,\reg_add[4]_i_3_n_0 ,\reg_add[4]_i_4_n_0 ,\reg_add[4]_i_5_n_0 }),
        .O(\state_reg[1]_0 ),
        .S({\reg_add[4]_i_6_n_0 ,\reg_add[4]_i_7_n_0 ,\reg_add[4]_i_8_n_0 ,\reg_add[4]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \reg_add_reg[8]_i_1 
       (.CI(\reg_add_reg[4]_i_1_n_0 ),
        .CO({\reg_add_reg[8]_i_1_n_0 ,\reg_add_reg[8]_i_1_n_1 ,\reg_add_reg[8]_i_1_n_2 ,\reg_add_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\reg_add[8]_i_2_n_0 ,\reg_add[8]_i_3_n_0 ,\reg_add[8]_i_4_n_0 ,\reg_add[8]_i_5_n_0 }),
        .O(\state_reg[1]_1 ),
        .S({\reg_add[8]_i_6_n_0 ,\reg_add[8]_i_7_n_0 ,\reg_add[8]_i_8_n_0 ,\reg_add[8]_i_9_n_0 }));
  LUT4 #(
    .INIT(16'hFFFB)) 
    \state[0]_i_4 
       (.I0(out_axis_tready),
        .I1(state[3]),
        .I2(state[2]),
        .I3(state[1]),
        .O(\state[0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \state[1]_i_3 
       (.I0(state[0]),
        .I1(state[1]),
        .O(\state[1]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \state[1]_i_4 
       (.I0(err),
        .I1(\mat_col_size_reg_reg[8]_0 ),
        .O(\state[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \state[1]_i_5 
       (.I0(state[2]),
        .I1(state[3]),
        .O(\state[1]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \state[1]_i_8 
       (.I0(state[1]),
        .I1(state[0]),
        .O(\state[1]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \state[2]_i_2 
       (.I0(state[1]),
        .I1(state[0]),
        .O(\state[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAEAAAAAAAEAAAAFA)) 
    \state[3]_i_1 
       (.I0(\state[3]_i_2_n_0 ),
        .I1(state[0]),
        .I2(state[3]),
        .I3(state[2]),
        .I4(state[1]),
        .I5(out_axis_tready),
        .O(next_state[3]));
  LUT6 #(
    .INIT(64'h0002000200020000)) 
    \state[3]_i_2 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[3]),
        .I4(\mat_col_size_reg_reg[8]_0 ),
        .I5(err),
        .O(\state[3]_i_2_n_0 ));
  FDCE \state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(anrst_0),
        .D(next_state[0]),
        .Q(state[0]));
  FDCE \state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(anrst_0),
        .D(next_state[1]),
        .Q(state[1]));
  FDCE \state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(anrst_0),
        .D(next_state[2]),
        .Q(state[2]));
  FDCE \state_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(anrst_0),
        .D(next_state[3]),
        .Q(state[3]));
endmodule

(* ORIG_REF_NAME = "alu_mac" *) 
module top_mat_mul_0_0_alu_mac
   (reg_add_reg,
    p_0_in,
    data_r,
    r_data,
    B,
    mul_result__0_0,
    O,
    clk,
    \reg_add_reg[31]_0 ,
    \reg_add_reg[7]_0 ,
    \reg_add_reg[11]_0 ,
    \reg_add_reg[15]_0 ,
    \reg_add_reg[19]_0 ,
    \reg_add_reg[23]_0 ,
    \reg_add_reg[27]_0 ,
    \reg_add_reg[31]_1 );
  output [31:0]reg_add_reg;
  output [31:0]p_0_in;
  output [31:0]data_r;
  input [31:0]r_data;
  input [16:0]B;
  input [14:0]mul_result__0_0;
  input [3:0]O;
  input clk;
  input \reg_add_reg[31]_0 ;
  input [3:0]\reg_add_reg[7]_0 ;
  input [3:0]\reg_add_reg[11]_0 ;
  input [3:0]\reg_add_reg[15]_0 ;
  input [3:0]\reg_add_reg[19]_0 ;
  input [3:0]\reg_add_reg[23]_0 ;
  input [3:0]\reg_add_reg[27]_0 ;
  input [3:0]\reg_add_reg[31]_1 ;

  wire [16:0]B;
  wire [3:0]O;
  wire clk;
  wire [31:0]data_r;
  wire [14:0]mul_result__0_0;
  wire mul_result__0_n_100;
  wire mul_result__0_n_101;
  wire mul_result__0_n_102;
  wire mul_result__0_n_103;
  wire mul_result__0_n_104;
  wire mul_result__0_n_105;
  wire mul_result__0_n_58;
  wire mul_result__0_n_59;
  wire mul_result__0_n_60;
  wire mul_result__0_n_61;
  wire mul_result__0_n_62;
  wire mul_result__0_n_63;
  wire mul_result__0_n_64;
  wire mul_result__0_n_65;
  wire mul_result__0_n_66;
  wire mul_result__0_n_67;
  wire mul_result__0_n_68;
  wire mul_result__0_n_69;
  wire mul_result__0_n_70;
  wire mul_result__0_n_71;
  wire mul_result__0_n_72;
  wire mul_result__0_n_73;
  wire mul_result__0_n_74;
  wire mul_result__0_n_75;
  wire mul_result__0_n_76;
  wire mul_result__0_n_77;
  wire mul_result__0_n_78;
  wire mul_result__0_n_79;
  wire mul_result__0_n_80;
  wire mul_result__0_n_81;
  wire mul_result__0_n_82;
  wire mul_result__0_n_83;
  wire mul_result__0_n_84;
  wire mul_result__0_n_85;
  wire mul_result__0_n_86;
  wire mul_result__0_n_87;
  wire mul_result__0_n_88;
  wire mul_result__0_n_89;
  wire mul_result__0_n_90;
  wire mul_result__0_n_91;
  wire mul_result__0_n_92;
  wire mul_result__0_n_93;
  wire mul_result__0_n_94;
  wire mul_result__0_n_95;
  wire mul_result__0_n_96;
  wire mul_result__0_n_97;
  wire mul_result__0_n_98;
  wire mul_result__0_n_99;
  wire mul_result__1_n_100;
  wire mul_result__1_n_101;
  wire mul_result__1_n_102;
  wire mul_result__1_n_103;
  wire mul_result__1_n_104;
  wire mul_result__1_n_105;
  wire mul_result__1_n_106;
  wire mul_result__1_n_107;
  wire mul_result__1_n_108;
  wire mul_result__1_n_109;
  wire mul_result__1_n_110;
  wire mul_result__1_n_111;
  wire mul_result__1_n_112;
  wire mul_result__1_n_113;
  wire mul_result__1_n_114;
  wire mul_result__1_n_115;
  wire mul_result__1_n_116;
  wire mul_result__1_n_117;
  wire mul_result__1_n_118;
  wire mul_result__1_n_119;
  wire mul_result__1_n_120;
  wire mul_result__1_n_121;
  wire mul_result__1_n_122;
  wire mul_result__1_n_123;
  wire mul_result__1_n_124;
  wire mul_result__1_n_125;
  wire mul_result__1_n_126;
  wire mul_result__1_n_127;
  wire mul_result__1_n_128;
  wire mul_result__1_n_129;
  wire mul_result__1_n_130;
  wire mul_result__1_n_131;
  wire mul_result__1_n_132;
  wire mul_result__1_n_133;
  wire mul_result__1_n_134;
  wire mul_result__1_n_135;
  wire mul_result__1_n_136;
  wire mul_result__1_n_137;
  wire mul_result__1_n_138;
  wire mul_result__1_n_139;
  wire mul_result__1_n_140;
  wire mul_result__1_n_141;
  wire mul_result__1_n_142;
  wire mul_result__1_n_143;
  wire mul_result__1_n_144;
  wire mul_result__1_n_145;
  wire mul_result__1_n_146;
  wire mul_result__1_n_147;
  wire mul_result__1_n_148;
  wire mul_result__1_n_149;
  wire mul_result__1_n_150;
  wire mul_result__1_n_151;
  wire mul_result__1_n_152;
  wire mul_result__1_n_153;
  wire mul_result__1_n_24;
  wire mul_result__1_n_25;
  wire mul_result__1_n_26;
  wire mul_result__1_n_27;
  wire mul_result__1_n_28;
  wire mul_result__1_n_29;
  wire mul_result__1_n_30;
  wire mul_result__1_n_31;
  wire mul_result__1_n_32;
  wire mul_result__1_n_33;
  wire mul_result__1_n_34;
  wire mul_result__1_n_35;
  wire mul_result__1_n_36;
  wire mul_result__1_n_37;
  wire mul_result__1_n_38;
  wire mul_result__1_n_39;
  wire mul_result__1_n_40;
  wire mul_result__1_n_41;
  wire mul_result__1_n_42;
  wire mul_result__1_n_43;
  wire mul_result__1_n_44;
  wire mul_result__1_n_45;
  wire mul_result__1_n_46;
  wire mul_result__1_n_47;
  wire mul_result__1_n_48;
  wire mul_result__1_n_49;
  wire mul_result__1_n_50;
  wire mul_result__1_n_51;
  wire mul_result__1_n_52;
  wire mul_result__1_n_53;
  wire mul_result__1_n_58;
  wire mul_result__1_n_59;
  wire mul_result__1_n_60;
  wire mul_result__1_n_61;
  wire mul_result__1_n_62;
  wire mul_result__1_n_63;
  wire mul_result__1_n_64;
  wire mul_result__1_n_65;
  wire mul_result__1_n_66;
  wire mul_result__1_n_67;
  wire mul_result__1_n_68;
  wire mul_result__1_n_69;
  wire mul_result__1_n_70;
  wire mul_result__1_n_71;
  wire mul_result__1_n_72;
  wire mul_result__1_n_73;
  wire mul_result__1_n_74;
  wire mul_result__1_n_75;
  wire mul_result__1_n_76;
  wire mul_result__1_n_77;
  wire mul_result__1_n_78;
  wire mul_result__1_n_79;
  wire mul_result__1_n_80;
  wire mul_result__1_n_81;
  wire mul_result__1_n_82;
  wire mul_result__1_n_83;
  wire mul_result__1_n_84;
  wire mul_result__1_n_85;
  wire mul_result__1_n_86;
  wire mul_result__1_n_87;
  wire mul_result__1_n_88;
  wire mul_result__1_n_89;
  wire mul_result__1_n_90;
  wire mul_result__1_n_91;
  wire mul_result__1_n_92;
  wire mul_result__1_n_93;
  wire mul_result__1_n_94;
  wire mul_result__1_n_95;
  wire mul_result__1_n_96;
  wire mul_result__1_n_97;
  wire mul_result__1_n_98;
  wire mul_result__1_n_99;
  wire mul_result__2_n_100;
  wire mul_result__2_n_101;
  wire mul_result__2_n_102;
  wire mul_result__2_n_103;
  wire mul_result__2_n_104;
  wire mul_result__2_n_105;
  wire mul_result__2_n_58;
  wire mul_result__2_n_59;
  wire mul_result__2_n_60;
  wire mul_result__2_n_61;
  wire mul_result__2_n_62;
  wire mul_result__2_n_63;
  wire mul_result__2_n_64;
  wire mul_result__2_n_65;
  wire mul_result__2_n_66;
  wire mul_result__2_n_67;
  wire mul_result__2_n_68;
  wire mul_result__2_n_69;
  wire mul_result__2_n_70;
  wire mul_result__2_n_71;
  wire mul_result__2_n_72;
  wire mul_result__2_n_73;
  wire mul_result__2_n_74;
  wire mul_result__2_n_75;
  wire mul_result__2_n_76;
  wire mul_result__2_n_77;
  wire mul_result__2_n_78;
  wire mul_result__2_n_79;
  wire mul_result__2_n_80;
  wire mul_result__2_n_81;
  wire mul_result__2_n_82;
  wire mul_result__2_n_83;
  wire mul_result__2_n_84;
  wire mul_result__2_n_85;
  wire mul_result__2_n_86;
  wire mul_result__2_n_87;
  wire mul_result__2_n_88;
  wire mul_result__2_n_89;
  wire mul_result__2_n_90;
  wire mul_result__2_n_91;
  wire mul_result__2_n_92;
  wire mul_result__2_n_93;
  wire mul_result__2_n_94;
  wire mul_result__2_n_95;
  wire mul_result__2_n_96;
  wire mul_result__2_n_97;
  wire mul_result__2_n_98;
  wire mul_result__2_n_99;
  wire mul_result_carry__0_i_1_n_0;
  wire mul_result_carry__0_i_2_n_0;
  wire mul_result_carry__0_i_3_n_0;
  wire mul_result_carry__0_i_4_n_0;
  wire mul_result_carry__0_n_0;
  wire mul_result_carry__0_n_1;
  wire mul_result_carry__0_n_2;
  wire mul_result_carry__0_n_3;
  wire mul_result_carry__1_i_1_n_0;
  wire mul_result_carry__1_i_2_n_0;
  wire mul_result_carry__1_i_3_n_0;
  wire mul_result_carry__1_i_4_n_0;
  wire mul_result_carry__1_n_0;
  wire mul_result_carry__1_n_1;
  wire mul_result_carry__1_n_2;
  wire mul_result_carry__1_n_3;
  wire mul_result_carry__2_i_1_n_0;
  wire mul_result_carry__2_i_2_n_0;
  wire mul_result_carry__2_i_3_n_0;
  wire mul_result_carry__2_i_4_n_0;
  wire mul_result_carry__2_n_0;
  wire mul_result_carry__2_n_1;
  wire mul_result_carry__2_n_2;
  wire mul_result_carry__2_n_3;
  wire mul_result_carry__3_i_1_n_0;
  wire mul_result_carry__3_i_2_n_0;
  wire mul_result_carry__3_i_3_n_0;
  wire mul_result_carry__3_i_4_n_0;
  wire mul_result_carry__3_n_0;
  wire mul_result_carry__3_n_1;
  wire mul_result_carry__3_n_2;
  wire mul_result_carry__3_n_3;
  wire mul_result_carry__4_i_1_n_0;
  wire mul_result_carry__4_i_2_n_0;
  wire mul_result_carry__4_i_3_n_0;
  wire mul_result_carry__4_i_4_n_0;
  wire mul_result_carry__4_n_0;
  wire mul_result_carry__4_n_1;
  wire mul_result_carry__4_n_2;
  wire mul_result_carry__4_n_3;
  wire mul_result_carry__5_i_1_n_0;
  wire mul_result_carry__5_i_2_n_0;
  wire mul_result_carry__5_i_3_n_0;
  wire mul_result_carry__5_i_4_n_0;
  wire mul_result_carry__5_n_0;
  wire mul_result_carry__5_n_1;
  wire mul_result_carry__5_n_2;
  wire mul_result_carry__5_n_3;
  wire mul_result_carry__6_i_1_n_0;
  wire mul_result_carry__6_i_2_n_0;
  wire mul_result_carry__6_i_3_n_0;
  wire mul_result_carry__6_i_4_n_0;
  wire mul_result_carry__6_n_0;
  wire mul_result_carry__6_n_1;
  wire mul_result_carry__6_n_2;
  wire mul_result_carry__6_n_3;
  wire mul_result_carry__7_i_1_n_0;
  wire mul_result_carry__7_i_2_n_0;
  wire mul_result_carry__7_i_3_n_0;
  wire mul_result_carry__7_i_4_n_0;
  wire mul_result_carry__7_n_0;
  wire mul_result_carry__7_n_1;
  wire mul_result_carry__7_n_2;
  wire mul_result_carry__7_n_3;
  wire mul_result_carry__8_i_1_n_0;
  wire mul_result_carry__8_i_2_n_0;
  wire mul_result_carry__8_i_3_n_0;
  wire mul_result_carry__8_i_4_n_0;
  wire mul_result_carry__8_n_1;
  wire mul_result_carry__8_n_2;
  wire mul_result_carry__8_n_3;
  wire mul_result_carry_i_1_n_0;
  wire mul_result_carry_i_2_n_0;
  wire mul_result_carry_i_3_n_0;
  wire mul_result_carry_n_0;
  wire mul_result_carry_n_1;
  wire mul_result_carry_n_2;
  wire mul_result_carry_n_3;
  wire mul_result_n_100;
  wire mul_result_n_101;
  wire mul_result_n_102;
  wire mul_result_n_103;
  wire mul_result_n_104;
  wire mul_result_n_105;
  wire mul_result_n_106;
  wire mul_result_n_107;
  wire mul_result_n_108;
  wire mul_result_n_109;
  wire mul_result_n_110;
  wire mul_result_n_111;
  wire mul_result_n_112;
  wire mul_result_n_113;
  wire mul_result_n_114;
  wire mul_result_n_115;
  wire mul_result_n_116;
  wire mul_result_n_117;
  wire mul_result_n_118;
  wire mul_result_n_119;
  wire mul_result_n_120;
  wire mul_result_n_121;
  wire mul_result_n_122;
  wire mul_result_n_123;
  wire mul_result_n_124;
  wire mul_result_n_125;
  wire mul_result_n_126;
  wire mul_result_n_127;
  wire mul_result_n_128;
  wire mul_result_n_129;
  wire mul_result_n_130;
  wire mul_result_n_131;
  wire mul_result_n_132;
  wire mul_result_n_133;
  wire mul_result_n_134;
  wire mul_result_n_135;
  wire mul_result_n_136;
  wire mul_result_n_137;
  wire mul_result_n_138;
  wire mul_result_n_139;
  wire mul_result_n_140;
  wire mul_result_n_141;
  wire mul_result_n_142;
  wire mul_result_n_143;
  wire mul_result_n_144;
  wire mul_result_n_145;
  wire mul_result_n_146;
  wire mul_result_n_147;
  wire mul_result_n_148;
  wire mul_result_n_149;
  wire mul_result_n_150;
  wire mul_result_n_151;
  wire mul_result_n_152;
  wire mul_result_n_153;
  wire mul_result_n_58;
  wire mul_result_n_59;
  wire mul_result_n_60;
  wire mul_result_n_61;
  wire mul_result_n_62;
  wire mul_result_n_63;
  wire mul_result_n_64;
  wire mul_result_n_65;
  wire mul_result_n_66;
  wire mul_result_n_67;
  wire mul_result_n_68;
  wire mul_result_n_69;
  wire mul_result_n_70;
  wire mul_result_n_71;
  wire mul_result_n_72;
  wire mul_result_n_73;
  wire mul_result_n_74;
  wire mul_result_n_75;
  wire mul_result_n_76;
  wire mul_result_n_77;
  wire mul_result_n_78;
  wire mul_result_n_79;
  wire mul_result_n_80;
  wire mul_result_n_81;
  wire mul_result_n_82;
  wire mul_result_n_83;
  wire mul_result_n_84;
  wire mul_result_n_85;
  wire mul_result_n_86;
  wire mul_result_n_87;
  wire mul_result_n_88;
  wire mul_result_n_89;
  wire mul_result_n_90;
  wire mul_result_n_91;
  wire mul_result_n_92;
  wire mul_result_n_93;
  wire mul_result_n_94;
  wire mul_result_n_95;
  wire mul_result_n_96;
  wire mul_result_n_97;
  wire mul_result_n_98;
  wire mul_result_n_99;
  wire out_carry__0_i_1_n_0;
  wire out_carry__0_i_2_n_0;
  wire out_carry__0_i_3_n_0;
  wire out_carry__0_i_4_n_0;
  wire out_carry__0_n_0;
  wire out_carry__0_n_1;
  wire out_carry__0_n_2;
  wire out_carry__0_n_3;
  wire out_carry__1_i_1_n_0;
  wire out_carry__1_i_2_n_0;
  wire out_carry__1_i_3_n_0;
  wire out_carry__1_i_4_n_0;
  wire out_carry__1_n_0;
  wire out_carry__1_n_1;
  wire out_carry__1_n_2;
  wire out_carry__1_n_3;
  wire out_carry__2_i_1_n_0;
  wire out_carry__2_i_2_n_0;
  wire out_carry__2_i_3_n_0;
  wire out_carry__2_i_4_n_0;
  wire out_carry__2_n_0;
  wire out_carry__2_n_1;
  wire out_carry__2_n_2;
  wire out_carry__2_n_3;
  wire out_carry__3_i_1_n_0;
  wire out_carry__3_i_2_n_0;
  wire out_carry__3_i_3_n_0;
  wire out_carry__3_i_4_n_0;
  wire out_carry__3_n_0;
  wire out_carry__3_n_1;
  wire out_carry__3_n_2;
  wire out_carry__3_n_3;
  wire out_carry__4_i_1_n_0;
  wire out_carry__4_i_2_n_0;
  wire out_carry__4_i_3_n_0;
  wire out_carry__4_i_4_n_0;
  wire out_carry__4_n_0;
  wire out_carry__4_n_1;
  wire out_carry__4_n_2;
  wire out_carry__4_n_3;
  wire out_carry__5_i_1_n_0;
  wire out_carry__5_i_2_n_0;
  wire out_carry__5_i_3_n_0;
  wire out_carry__5_i_4_n_0;
  wire out_carry__5_n_0;
  wire out_carry__5_n_1;
  wire out_carry__5_n_2;
  wire out_carry__5_n_3;
  wire out_carry__6_i_1_n_0;
  wire out_carry__6_i_2_n_0;
  wire out_carry__6_i_3_n_0;
  wire out_carry__6_i_4_n_0;
  wire out_carry__6_n_1;
  wire out_carry__6_n_2;
  wire out_carry__6_n_3;
  wire out_carry_i_1_n_0;
  wire out_carry_i_2_n_0;
  wire out_carry_i_3_n_0;
  wire out_carry_i_4_n_0;
  wire out_carry_n_0;
  wire out_carry_n_1;
  wire out_carry_n_2;
  wire out_carry_n_3;
  wire [31:0]p_0_in;
  wire [31:0]r_data;
  wire [31:0]reg_add_reg;
  wire [3:0]\reg_add_reg[11]_0 ;
  wire [3:0]\reg_add_reg[15]_0 ;
  wire [3:0]\reg_add_reg[19]_0 ;
  wire [3:0]\reg_add_reg[23]_0 ;
  wire [3:0]\reg_add_reg[27]_0 ;
  wire \reg_add_reg[31]_0 ;
  wire [3:0]\reg_add_reg[31]_1 ;
  wire [3:0]\reg_add_reg[7]_0 ;
  wire NLW_mul_result_CARRYCASCOUT_UNCONNECTED;
  wire NLW_mul_result_MULTSIGNOUT_UNCONNECTED;
  wire NLW_mul_result_OVERFLOW_UNCONNECTED;
  wire NLW_mul_result_PATTERNBDETECT_UNCONNECTED;
  wire NLW_mul_result_PATTERNDETECT_UNCONNECTED;
  wire NLW_mul_result_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_mul_result_ACOUT_UNCONNECTED;
  wire [17:0]NLW_mul_result_BCOUT_UNCONNECTED;
  wire [3:0]NLW_mul_result_CARRYOUT_UNCONNECTED;
  wire NLW_mul_result__0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_mul_result__0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_mul_result__0_OVERFLOW_UNCONNECTED;
  wire NLW_mul_result__0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_mul_result__0_PATTERNDETECT_UNCONNECTED;
  wire NLW_mul_result__0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_mul_result__0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_mul_result__0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_mul_result__0_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_mul_result__0_PCOUT_UNCONNECTED;
  wire NLW_mul_result__1_CARRYCASCOUT_UNCONNECTED;
  wire NLW_mul_result__1_MULTSIGNOUT_UNCONNECTED;
  wire NLW_mul_result__1_OVERFLOW_UNCONNECTED;
  wire NLW_mul_result__1_PATTERNBDETECT_UNCONNECTED;
  wire NLW_mul_result__1_PATTERNDETECT_UNCONNECTED;
  wire NLW_mul_result__1_UNDERFLOW_UNCONNECTED;
  wire [17:0]NLW_mul_result__1_BCOUT_UNCONNECTED;
  wire [3:0]NLW_mul_result__1_CARRYOUT_UNCONNECTED;
  wire NLW_mul_result__2_CARRYCASCOUT_UNCONNECTED;
  wire NLW_mul_result__2_MULTSIGNOUT_UNCONNECTED;
  wire NLW_mul_result__2_OVERFLOW_UNCONNECTED;
  wire NLW_mul_result__2_PATTERNBDETECT_UNCONNECTED;
  wire NLW_mul_result__2_PATTERNDETECT_UNCONNECTED;
  wire NLW_mul_result__2_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_mul_result__2_ACOUT_UNCONNECTED;
  wire [17:0]NLW_mul_result__2_BCOUT_UNCONNECTED;
  wire [3:0]NLW_mul_result__2_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_mul_result__2_PCOUT_UNCONNECTED;
  wire [3:0]NLW_mul_result_carry_O_UNCONNECTED;
  wire [3:0]NLW_mul_result_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_mul_result_carry__8_CO_UNCONNECTED;
  wire [3:3]NLW_out_carry__6_CO_UNCONNECTED;

  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 15x18 4}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    mul_result
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,B}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_mul_result_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({r_data[31],r_data[31],r_data[31],r_data[31:17]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_mul_result_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_mul_result_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_mul_result_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_mul_result_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_mul_result_OVERFLOW_UNCONNECTED),
        .P({mul_result_n_58,mul_result_n_59,mul_result_n_60,mul_result_n_61,mul_result_n_62,mul_result_n_63,mul_result_n_64,mul_result_n_65,mul_result_n_66,mul_result_n_67,mul_result_n_68,mul_result_n_69,mul_result_n_70,mul_result_n_71,mul_result_n_72,mul_result_n_73,mul_result_n_74,mul_result_n_75,mul_result_n_76,mul_result_n_77,mul_result_n_78,mul_result_n_79,mul_result_n_80,mul_result_n_81,mul_result_n_82,mul_result_n_83,mul_result_n_84,mul_result_n_85,mul_result_n_86,mul_result_n_87,mul_result_n_88,mul_result_n_89,mul_result_n_90,mul_result_n_91,mul_result_n_92,mul_result_n_93,mul_result_n_94,mul_result_n_95,mul_result_n_96,mul_result_n_97,mul_result_n_98,mul_result_n_99,mul_result_n_100,mul_result_n_101,mul_result_n_102,mul_result_n_103,mul_result_n_104,mul_result_n_105}),
        .PATTERNBDETECT(NLW_mul_result_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_mul_result_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({mul_result_n_106,mul_result_n_107,mul_result_n_108,mul_result_n_109,mul_result_n_110,mul_result_n_111,mul_result_n_112,mul_result_n_113,mul_result_n_114,mul_result_n_115,mul_result_n_116,mul_result_n_117,mul_result_n_118,mul_result_n_119,mul_result_n_120,mul_result_n_121,mul_result_n_122,mul_result_n_123,mul_result_n_124,mul_result_n_125,mul_result_n_126,mul_result_n_127,mul_result_n_128,mul_result_n_129,mul_result_n_130,mul_result_n_131,mul_result_n_132,mul_result_n_133,mul_result_n_134,mul_result_n_135,mul_result_n_136,mul_result_n_137,mul_result_n_138,mul_result_n_139,mul_result_n_140,mul_result_n_141,mul_result_n_142,mul_result_n_143,mul_result_n_144,mul_result_n_145,mul_result_n_146,mul_result_n_147,mul_result_n_148,mul_result_n_149,mul_result_n_150,mul_result_n_151,mul_result_n_152,mul_result_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_mul_result_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 15x15 4}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    mul_result__0
       (.A({r_data[31],r_data[31],r_data[31],r_data[31],r_data[31],r_data[31],r_data[31],r_data[31],r_data[31],r_data[31],r_data[31],r_data[31],r_data[31],r_data[31],r_data[31],r_data[31:17]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_mul_result__0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({mul_result__0_0[14],mul_result__0_0[14],mul_result__0_0[14],mul_result__0_0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_mul_result__0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_mul_result__0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_mul_result__0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_mul_result__0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_mul_result__0_OVERFLOW_UNCONNECTED),
        .P({mul_result__0_n_58,mul_result__0_n_59,mul_result__0_n_60,mul_result__0_n_61,mul_result__0_n_62,mul_result__0_n_63,mul_result__0_n_64,mul_result__0_n_65,mul_result__0_n_66,mul_result__0_n_67,mul_result__0_n_68,mul_result__0_n_69,mul_result__0_n_70,mul_result__0_n_71,mul_result__0_n_72,mul_result__0_n_73,mul_result__0_n_74,mul_result__0_n_75,mul_result__0_n_76,mul_result__0_n_77,mul_result__0_n_78,mul_result__0_n_79,mul_result__0_n_80,mul_result__0_n_81,mul_result__0_n_82,mul_result__0_n_83,mul_result__0_n_84,mul_result__0_n_85,mul_result__0_n_86,mul_result__0_n_87,mul_result__0_n_88,mul_result__0_n_89,mul_result__0_n_90,mul_result__0_n_91,mul_result__0_n_92,mul_result__0_n_93,mul_result__0_n_94,mul_result__0_n_95,mul_result__0_n_96,mul_result__0_n_97,mul_result__0_n_98,mul_result__0_n_99,mul_result__0_n_100,mul_result__0_n_101,mul_result__0_n_102,mul_result__0_n_103,mul_result__0_n_104,mul_result__0_n_105}),
        .PATTERNBDETECT(NLW_mul_result__0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_mul_result__0_PATTERNDETECT_UNCONNECTED),
        .PCIN({mul_result_n_106,mul_result_n_107,mul_result_n_108,mul_result_n_109,mul_result_n_110,mul_result_n_111,mul_result_n_112,mul_result_n_113,mul_result_n_114,mul_result_n_115,mul_result_n_116,mul_result_n_117,mul_result_n_118,mul_result_n_119,mul_result_n_120,mul_result_n_121,mul_result_n_122,mul_result_n_123,mul_result_n_124,mul_result_n_125,mul_result_n_126,mul_result_n_127,mul_result_n_128,mul_result_n_129,mul_result_n_130,mul_result_n_131,mul_result_n_132,mul_result_n_133,mul_result_n_134,mul_result_n_135,mul_result_n_136,mul_result_n_137,mul_result_n_138,mul_result_n_139,mul_result_n_140,mul_result_n_141,mul_result_n_142,mul_result_n_143,mul_result_n_144,mul_result_n_145,mul_result_n_146,mul_result_n_147,mul_result_n_148,mul_result_n_149,mul_result_n_150,mul_result_n_151,mul_result_n_152,mul_result_n_153}),
        .PCOUT(NLW_mul_result__0_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_mul_result__0_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x18 4}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    mul_result__1
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,r_data[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT({mul_result__1_n_24,mul_result__1_n_25,mul_result__1_n_26,mul_result__1_n_27,mul_result__1_n_28,mul_result__1_n_29,mul_result__1_n_30,mul_result__1_n_31,mul_result__1_n_32,mul_result__1_n_33,mul_result__1_n_34,mul_result__1_n_35,mul_result__1_n_36,mul_result__1_n_37,mul_result__1_n_38,mul_result__1_n_39,mul_result__1_n_40,mul_result__1_n_41,mul_result__1_n_42,mul_result__1_n_43,mul_result__1_n_44,mul_result__1_n_45,mul_result__1_n_46,mul_result__1_n_47,mul_result__1_n_48,mul_result__1_n_49,mul_result__1_n_50,mul_result__1_n_51,mul_result__1_n_52,mul_result__1_n_53}),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,B}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_mul_result__1_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_mul_result__1_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_mul_result__1_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_mul_result__1_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_mul_result__1_OVERFLOW_UNCONNECTED),
        .P({mul_result__1_n_58,mul_result__1_n_59,mul_result__1_n_60,mul_result__1_n_61,mul_result__1_n_62,mul_result__1_n_63,mul_result__1_n_64,mul_result__1_n_65,mul_result__1_n_66,mul_result__1_n_67,mul_result__1_n_68,mul_result__1_n_69,mul_result__1_n_70,mul_result__1_n_71,mul_result__1_n_72,mul_result__1_n_73,mul_result__1_n_74,mul_result__1_n_75,mul_result__1_n_76,mul_result__1_n_77,mul_result__1_n_78,mul_result__1_n_79,mul_result__1_n_80,mul_result__1_n_81,mul_result__1_n_82,mul_result__1_n_83,mul_result__1_n_84,mul_result__1_n_85,mul_result__1_n_86,mul_result__1_n_87,mul_result__1_n_88,mul_result__1_n_89,mul_result__1_n_90,mul_result__1_n_91,mul_result__1_n_92,mul_result__1_n_93,mul_result__1_n_94,mul_result__1_n_95,mul_result__1_n_96,mul_result__1_n_97,mul_result__1_n_98,mul_result__1_n_99,mul_result__1_n_100,mul_result__1_n_101,mul_result__1_n_102,mul_result__1_n_103,mul_result__1_n_104,mul_result__1_n_105}),
        .PATTERNBDETECT(NLW_mul_result__1_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_mul_result__1_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({mul_result__1_n_106,mul_result__1_n_107,mul_result__1_n_108,mul_result__1_n_109,mul_result__1_n_110,mul_result__1_n_111,mul_result__1_n_112,mul_result__1_n_113,mul_result__1_n_114,mul_result__1_n_115,mul_result__1_n_116,mul_result__1_n_117,mul_result__1_n_118,mul_result__1_n_119,mul_result__1_n_120,mul_result__1_n_121,mul_result__1_n_122,mul_result__1_n_123,mul_result__1_n_124,mul_result__1_n_125,mul_result__1_n_126,mul_result__1_n_127,mul_result__1_n_128,mul_result__1_n_129,mul_result__1_n_130,mul_result__1_n_131,mul_result__1_n_132,mul_result__1_n_133,mul_result__1_n_134,mul_result__1_n_135,mul_result__1_n_136,mul_result__1_n_137,mul_result__1_n_138,mul_result__1_n_139,mul_result__1_n_140,mul_result__1_n_141,mul_result__1_n_142,mul_result__1_n_143,mul_result__1_n_144,mul_result__1_n_145,mul_result__1_n_146,mul_result__1_n_147,mul_result__1_n_148,mul_result__1_n_149,mul_result__1_n_150,mul_result__1_n_151,mul_result__1_n_152,mul_result__1_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_mul_result__1_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x15 4}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("CASCADE"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    mul_result__2
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACIN({mul_result__1_n_24,mul_result__1_n_25,mul_result__1_n_26,mul_result__1_n_27,mul_result__1_n_28,mul_result__1_n_29,mul_result__1_n_30,mul_result__1_n_31,mul_result__1_n_32,mul_result__1_n_33,mul_result__1_n_34,mul_result__1_n_35,mul_result__1_n_36,mul_result__1_n_37,mul_result__1_n_38,mul_result__1_n_39,mul_result__1_n_40,mul_result__1_n_41,mul_result__1_n_42,mul_result__1_n_43,mul_result__1_n_44,mul_result__1_n_45,mul_result__1_n_46,mul_result__1_n_47,mul_result__1_n_48,mul_result__1_n_49,mul_result__1_n_50,mul_result__1_n_51,mul_result__1_n_52,mul_result__1_n_53}),
        .ACOUT(NLW_mul_result__2_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({mul_result__0_0[14],mul_result__0_0[14],mul_result__0_0[14],mul_result__0_0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_mul_result__2_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_mul_result__2_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_mul_result__2_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_mul_result__2_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_mul_result__2_OVERFLOW_UNCONNECTED),
        .P({mul_result__2_n_58,mul_result__2_n_59,mul_result__2_n_60,mul_result__2_n_61,mul_result__2_n_62,mul_result__2_n_63,mul_result__2_n_64,mul_result__2_n_65,mul_result__2_n_66,mul_result__2_n_67,mul_result__2_n_68,mul_result__2_n_69,mul_result__2_n_70,mul_result__2_n_71,mul_result__2_n_72,mul_result__2_n_73,mul_result__2_n_74,mul_result__2_n_75,mul_result__2_n_76,mul_result__2_n_77,mul_result__2_n_78,mul_result__2_n_79,mul_result__2_n_80,mul_result__2_n_81,mul_result__2_n_82,mul_result__2_n_83,mul_result__2_n_84,mul_result__2_n_85,mul_result__2_n_86,mul_result__2_n_87,mul_result__2_n_88,mul_result__2_n_89,mul_result__2_n_90,mul_result__2_n_91,mul_result__2_n_92,mul_result__2_n_93,mul_result__2_n_94,mul_result__2_n_95,mul_result__2_n_96,mul_result__2_n_97,mul_result__2_n_98,mul_result__2_n_99,mul_result__2_n_100,mul_result__2_n_101,mul_result__2_n_102,mul_result__2_n_103,mul_result__2_n_104,mul_result__2_n_105}),
        .PATTERNBDETECT(NLW_mul_result__2_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_mul_result__2_PATTERNDETECT_UNCONNECTED),
        .PCIN({mul_result__1_n_106,mul_result__1_n_107,mul_result__1_n_108,mul_result__1_n_109,mul_result__1_n_110,mul_result__1_n_111,mul_result__1_n_112,mul_result__1_n_113,mul_result__1_n_114,mul_result__1_n_115,mul_result__1_n_116,mul_result__1_n_117,mul_result__1_n_118,mul_result__1_n_119,mul_result__1_n_120,mul_result__1_n_121,mul_result__1_n_122,mul_result__1_n_123,mul_result__1_n_124,mul_result__1_n_125,mul_result__1_n_126,mul_result__1_n_127,mul_result__1_n_128,mul_result__1_n_129,mul_result__1_n_130,mul_result__1_n_131,mul_result__1_n_132,mul_result__1_n_133,mul_result__1_n_134,mul_result__1_n_135,mul_result__1_n_136,mul_result__1_n_137,mul_result__1_n_138,mul_result__1_n_139,mul_result__1_n_140,mul_result__1_n_141,mul_result__1_n_142,mul_result__1_n_143,mul_result__1_n_144,mul_result__1_n_145,mul_result__1_n_146,mul_result__1_n_147,mul_result__1_n_148,mul_result__1_n_149,mul_result__1_n_150,mul_result__1_n_151,mul_result__1_n_152,mul_result__1_n_153}),
        .PCOUT(NLW_mul_result__2_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_mul_result__2_UNDERFLOW_UNCONNECTED));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 mul_result_carry
       (.CI(1'b0),
        .CO({mul_result_carry_n_0,mul_result_carry_n_1,mul_result_carry_n_2,mul_result_carry_n_3}),
        .CYINIT(1'b0),
        .DI({mul_result__2_n_103,mul_result__2_n_104,mul_result__2_n_105,1'b0}),
        .O(NLW_mul_result_carry_O_UNCONNECTED[3:0]),
        .S({mul_result_carry_i_1_n_0,mul_result_carry_i_2_n_0,mul_result_carry_i_3_n_0,mul_result__1_n_89}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 mul_result_carry__0
       (.CI(mul_result_carry_n_0),
        .CO({mul_result_carry__0_n_0,mul_result_carry__0_n_1,mul_result_carry__0_n_2,mul_result_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({mul_result__2_n_99,mul_result__2_n_100,mul_result__2_n_101,mul_result__2_n_102}),
        .O(NLW_mul_result_carry__0_O_UNCONNECTED[3:0]),
        .S({mul_result_carry__0_i_1_n_0,mul_result_carry__0_i_2_n_0,mul_result_carry__0_i_3_n_0,mul_result_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    mul_result_carry__0_i_1
       (.I0(mul_result__2_n_99),
        .I1(mul_result_n_99),
        .O(mul_result_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    mul_result_carry__0_i_2
       (.I0(mul_result__2_n_100),
        .I1(mul_result_n_100),
        .O(mul_result_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    mul_result_carry__0_i_3
       (.I0(mul_result__2_n_101),
        .I1(mul_result_n_101),
        .O(mul_result_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    mul_result_carry__0_i_4
       (.I0(mul_result__2_n_102),
        .I1(mul_result_n_102),
        .O(mul_result_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 mul_result_carry__1
       (.CI(mul_result_carry__0_n_0),
        .CO({mul_result_carry__1_n_0,mul_result_carry__1_n_1,mul_result_carry__1_n_2,mul_result_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({mul_result__2_n_95,mul_result__2_n_96,mul_result__2_n_97,mul_result__2_n_98}),
        .O(p_0_in[3:0]),
        .S({mul_result_carry__1_i_1_n_0,mul_result_carry__1_i_2_n_0,mul_result_carry__1_i_3_n_0,mul_result_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    mul_result_carry__1_i_1
       (.I0(mul_result__2_n_95),
        .I1(mul_result_n_95),
        .O(mul_result_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    mul_result_carry__1_i_2
       (.I0(mul_result__2_n_96),
        .I1(mul_result_n_96),
        .O(mul_result_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    mul_result_carry__1_i_3
       (.I0(mul_result__2_n_97),
        .I1(mul_result_n_97),
        .O(mul_result_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    mul_result_carry__1_i_4
       (.I0(mul_result__2_n_98),
        .I1(mul_result_n_98),
        .O(mul_result_carry__1_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 mul_result_carry__2
       (.CI(mul_result_carry__1_n_0),
        .CO({mul_result_carry__2_n_0,mul_result_carry__2_n_1,mul_result_carry__2_n_2,mul_result_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({mul_result__2_n_91,mul_result__2_n_92,mul_result__2_n_93,mul_result__2_n_94}),
        .O(p_0_in[7:4]),
        .S({mul_result_carry__2_i_1_n_0,mul_result_carry__2_i_2_n_0,mul_result_carry__2_i_3_n_0,mul_result_carry__2_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    mul_result_carry__2_i_1
       (.I0(mul_result__2_n_91),
        .I1(mul_result_n_91),
        .O(mul_result_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    mul_result_carry__2_i_2
       (.I0(mul_result__2_n_92),
        .I1(mul_result_n_92),
        .O(mul_result_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    mul_result_carry__2_i_3
       (.I0(mul_result__2_n_93),
        .I1(mul_result_n_93),
        .O(mul_result_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    mul_result_carry__2_i_4
       (.I0(mul_result__2_n_94),
        .I1(mul_result_n_94),
        .O(mul_result_carry__2_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 mul_result_carry__3
       (.CI(mul_result_carry__2_n_0),
        .CO({mul_result_carry__3_n_0,mul_result_carry__3_n_1,mul_result_carry__3_n_2,mul_result_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({mul_result__2_n_87,mul_result__2_n_88,mul_result__2_n_89,mul_result__2_n_90}),
        .O(p_0_in[11:8]),
        .S({mul_result_carry__3_i_1_n_0,mul_result_carry__3_i_2_n_0,mul_result_carry__3_i_3_n_0,mul_result_carry__3_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    mul_result_carry__3_i_1
       (.I0(mul_result__2_n_87),
        .I1(mul_result__0_n_104),
        .O(mul_result_carry__3_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    mul_result_carry__3_i_2
       (.I0(mul_result__2_n_88),
        .I1(mul_result__0_n_105),
        .O(mul_result_carry__3_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    mul_result_carry__3_i_3
       (.I0(mul_result__2_n_89),
        .I1(mul_result_n_89),
        .O(mul_result_carry__3_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    mul_result_carry__3_i_4
       (.I0(mul_result__2_n_90),
        .I1(mul_result_n_90),
        .O(mul_result_carry__3_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 mul_result_carry__4
       (.CI(mul_result_carry__3_n_0),
        .CO({mul_result_carry__4_n_0,mul_result_carry__4_n_1,mul_result_carry__4_n_2,mul_result_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({mul_result__2_n_83,mul_result__2_n_84,mul_result__2_n_85,mul_result__2_n_86}),
        .O(p_0_in[15:12]),
        .S({mul_result_carry__4_i_1_n_0,mul_result_carry__4_i_2_n_0,mul_result_carry__4_i_3_n_0,mul_result_carry__4_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    mul_result_carry__4_i_1
       (.I0(mul_result__2_n_83),
        .I1(mul_result__0_n_100),
        .O(mul_result_carry__4_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    mul_result_carry__4_i_2
       (.I0(mul_result__2_n_84),
        .I1(mul_result__0_n_101),
        .O(mul_result_carry__4_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    mul_result_carry__4_i_3
       (.I0(mul_result__2_n_85),
        .I1(mul_result__0_n_102),
        .O(mul_result_carry__4_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    mul_result_carry__4_i_4
       (.I0(mul_result__2_n_86),
        .I1(mul_result__0_n_103),
        .O(mul_result_carry__4_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 mul_result_carry__5
       (.CI(mul_result_carry__4_n_0),
        .CO({mul_result_carry__5_n_0,mul_result_carry__5_n_1,mul_result_carry__5_n_2,mul_result_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({mul_result__2_n_79,mul_result__2_n_80,mul_result__2_n_81,mul_result__2_n_82}),
        .O(p_0_in[19:16]),
        .S({mul_result_carry__5_i_1_n_0,mul_result_carry__5_i_2_n_0,mul_result_carry__5_i_3_n_0,mul_result_carry__5_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    mul_result_carry__5_i_1
       (.I0(mul_result__2_n_79),
        .I1(mul_result__0_n_96),
        .O(mul_result_carry__5_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    mul_result_carry__5_i_2
       (.I0(mul_result__2_n_80),
        .I1(mul_result__0_n_97),
        .O(mul_result_carry__5_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    mul_result_carry__5_i_3
       (.I0(mul_result__2_n_81),
        .I1(mul_result__0_n_98),
        .O(mul_result_carry__5_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    mul_result_carry__5_i_4
       (.I0(mul_result__2_n_82),
        .I1(mul_result__0_n_99),
        .O(mul_result_carry__5_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 mul_result_carry__6
       (.CI(mul_result_carry__5_n_0),
        .CO({mul_result_carry__6_n_0,mul_result_carry__6_n_1,mul_result_carry__6_n_2,mul_result_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({mul_result__2_n_75,mul_result__2_n_76,mul_result__2_n_77,mul_result__2_n_78}),
        .O(p_0_in[23:20]),
        .S({mul_result_carry__6_i_1_n_0,mul_result_carry__6_i_2_n_0,mul_result_carry__6_i_3_n_0,mul_result_carry__6_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    mul_result_carry__6_i_1
       (.I0(mul_result__2_n_75),
        .I1(mul_result__0_n_92),
        .O(mul_result_carry__6_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    mul_result_carry__6_i_2
       (.I0(mul_result__2_n_76),
        .I1(mul_result__0_n_93),
        .O(mul_result_carry__6_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    mul_result_carry__6_i_3
       (.I0(mul_result__2_n_77),
        .I1(mul_result__0_n_94),
        .O(mul_result_carry__6_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    mul_result_carry__6_i_4
       (.I0(mul_result__2_n_78),
        .I1(mul_result__0_n_95),
        .O(mul_result_carry__6_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 mul_result_carry__7
       (.CI(mul_result_carry__6_n_0),
        .CO({mul_result_carry__7_n_0,mul_result_carry__7_n_1,mul_result_carry__7_n_2,mul_result_carry__7_n_3}),
        .CYINIT(1'b0),
        .DI({mul_result__2_n_71,mul_result__2_n_72,mul_result__2_n_73,mul_result__2_n_74}),
        .O(p_0_in[27:24]),
        .S({mul_result_carry__7_i_1_n_0,mul_result_carry__7_i_2_n_0,mul_result_carry__7_i_3_n_0,mul_result_carry__7_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    mul_result_carry__7_i_1
       (.I0(mul_result__2_n_71),
        .I1(mul_result__0_n_88),
        .O(mul_result_carry__7_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    mul_result_carry__7_i_2
       (.I0(mul_result__2_n_72),
        .I1(mul_result__0_n_89),
        .O(mul_result_carry__7_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    mul_result_carry__7_i_3
       (.I0(mul_result__2_n_73),
        .I1(mul_result__0_n_90),
        .O(mul_result_carry__7_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    mul_result_carry__7_i_4
       (.I0(mul_result__2_n_74),
        .I1(mul_result__0_n_91),
        .O(mul_result_carry__7_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 mul_result_carry__8
       (.CI(mul_result_carry__7_n_0),
        .CO({NLW_mul_result_carry__8_CO_UNCONNECTED[3],mul_result_carry__8_n_1,mul_result_carry__8_n_2,mul_result_carry__8_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,mul_result__2_n_68,mul_result__2_n_69,mul_result__2_n_70}),
        .O(p_0_in[31:28]),
        .S({mul_result_carry__8_i_1_n_0,mul_result_carry__8_i_2_n_0,mul_result_carry__8_i_3_n_0,mul_result_carry__8_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    mul_result_carry__8_i_1
       (.I0(mul_result__0_n_84),
        .I1(mul_result__2_n_67),
        .O(mul_result_carry__8_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    mul_result_carry__8_i_2
       (.I0(mul_result__2_n_68),
        .I1(mul_result__0_n_85),
        .O(mul_result_carry__8_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    mul_result_carry__8_i_3
       (.I0(mul_result__2_n_69),
        .I1(mul_result__0_n_86),
        .O(mul_result_carry__8_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    mul_result_carry__8_i_4
       (.I0(mul_result__2_n_70),
        .I1(mul_result__0_n_87),
        .O(mul_result_carry__8_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    mul_result_carry_i_1
       (.I0(mul_result__2_n_103),
        .I1(mul_result_n_103),
        .O(mul_result_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    mul_result_carry_i_2
       (.I0(mul_result__2_n_104),
        .I1(mul_result_n_104),
        .O(mul_result_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    mul_result_carry_i_3
       (.I0(mul_result__2_n_105),
        .I1(mul_result_n_105),
        .O(mul_result_carry_i_3_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 out_carry
       (.CI(1'b0),
        .CO({out_carry_n_0,out_carry_n_1,out_carry_n_2,out_carry_n_3}),
        .CYINIT(1'b0),
        .DI(reg_add_reg[3:0]),
        .O(data_r[3:0]),
        .S({out_carry_i_1_n_0,out_carry_i_2_n_0,out_carry_i_3_n_0,out_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 out_carry__0
       (.CI(out_carry_n_0),
        .CO({out_carry__0_n_0,out_carry__0_n_1,out_carry__0_n_2,out_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(reg_add_reg[7:4]),
        .O(data_r[7:4]),
        .S({out_carry__0_i_1_n_0,out_carry__0_i_2_n_0,out_carry__0_i_3_n_0,out_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    out_carry__0_i_1
       (.I0(reg_add_reg[7]),
        .I1(p_0_in[7]),
        .O(out_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    out_carry__0_i_2
       (.I0(reg_add_reg[6]),
        .I1(p_0_in[6]),
        .O(out_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    out_carry__0_i_3
       (.I0(reg_add_reg[5]),
        .I1(p_0_in[5]),
        .O(out_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    out_carry__0_i_4
       (.I0(reg_add_reg[4]),
        .I1(p_0_in[4]),
        .O(out_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 out_carry__1
       (.CI(out_carry__0_n_0),
        .CO({out_carry__1_n_0,out_carry__1_n_1,out_carry__1_n_2,out_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(reg_add_reg[11:8]),
        .O(data_r[11:8]),
        .S({out_carry__1_i_1_n_0,out_carry__1_i_2_n_0,out_carry__1_i_3_n_0,out_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    out_carry__1_i_1
       (.I0(reg_add_reg[11]),
        .I1(p_0_in[11]),
        .O(out_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    out_carry__1_i_2
       (.I0(reg_add_reg[10]),
        .I1(p_0_in[10]),
        .O(out_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    out_carry__1_i_3
       (.I0(reg_add_reg[9]),
        .I1(p_0_in[9]),
        .O(out_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    out_carry__1_i_4
       (.I0(reg_add_reg[8]),
        .I1(p_0_in[8]),
        .O(out_carry__1_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 out_carry__2
       (.CI(out_carry__1_n_0),
        .CO({out_carry__2_n_0,out_carry__2_n_1,out_carry__2_n_2,out_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(reg_add_reg[15:12]),
        .O(data_r[15:12]),
        .S({out_carry__2_i_1_n_0,out_carry__2_i_2_n_0,out_carry__2_i_3_n_0,out_carry__2_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    out_carry__2_i_1
       (.I0(reg_add_reg[15]),
        .I1(p_0_in[15]),
        .O(out_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    out_carry__2_i_2
       (.I0(reg_add_reg[14]),
        .I1(p_0_in[14]),
        .O(out_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    out_carry__2_i_3
       (.I0(reg_add_reg[13]),
        .I1(p_0_in[13]),
        .O(out_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    out_carry__2_i_4
       (.I0(reg_add_reg[12]),
        .I1(p_0_in[12]),
        .O(out_carry__2_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 out_carry__3
       (.CI(out_carry__2_n_0),
        .CO({out_carry__3_n_0,out_carry__3_n_1,out_carry__3_n_2,out_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(reg_add_reg[19:16]),
        .O(data_r[19:16]),
        .S({out_carry__3_i_1_n_0,out_carry__3_i_2_n_0,out_carry__3_i_3_n_0,out_carry__3_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    out_carry__3_i_1
       (.I0(reg_add_reg[19]),
        .I1(p_0_in[19]),
        .O(out_carry__3_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    out_carry__3_i_2
       (.I0(reg_add_reg[18]),
        .I1(p_0_in[18]),
        .O(out_carry__3_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    out_carry__3_i_3
       (.I0(reg_add_reg[17]),
        .I1(p_0_in[17]),
        .O(out_carry__3_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    out_carry__3_i_4
       (.I0(reg_add_reg[16]),
        .I1(p_0_in[16]),
        .O(out_carry__3_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 out_carry__4
       (.CI(out_carry__3_n_0),
        .CO({out_carry__4_n_0,out_carry__4_n_1,out_carry__4_n_2,out_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(reg_add_reg[23:20]),
        .O(data_r[23:20]),
        .S({out_carry__4_i_1_n_0,out_carry__4_i_2_n_0,out_carry__4_i_3_n_0,out_carry__4_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    out_carry__4_i_1
       (.I0(reg_add_reg[23]),
        .I1(p_0_in[23]),
        .O(out_carry__4_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    out_carry__4_i_2
       (.I0(reg_add_reg[22]),
        .I1(p_0_in[22]),
        .O(out_carry__4_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    out_carry__4_i_3
       (.I0(reg_add_reg[21]),
        .I1(p_0_in[21]),
        .O(out_carry__4_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    out_carry__4_i_4
       (.I0(reg_add_reg[20]),
        .I1(p_0_in[20]),
        .O(out_carry__4_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 out_carry__5
       (.CI(out_carry__4_n_0),
        .CO({out_carry__5_n_0,out_carry__5_n_1,out_carry__5_n_2,out_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI(reg_add_reg[27:24]),
        .O(data_r[27:24]),
        .S({out_carry__5_i_1_n_0,out_carry__5_i_2_n_0,out_carry__5_i_3_n_0,out_carry__5_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    out_carry__5_i_1
       (.I0(reg_add_reg[27]),
        .I1(p_0_in[27]),
        .O(out_carry__5_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    out_carry__5_i_2
       (.I0(reg_add_reg[26]),
        .I1(p_0_in[26]),
        .O(out_carry__5_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    out_carry__5_i_3
       (.I0(reg_add_reg[25]),
        .I1(p_0_in[25]),
        .O(out_carry__5_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    out_carry__5_i_4
       (.I0(reg_add_reg[24]),
        .I1(p_0_in[24]),
        .O(out_carry__5_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 out_carry__6
       (.CI(out_carry__5_n_0),
        .CO({NLW_out_carry__6_CO_UNCONNECTED[3],out_carry__6_n_1,out_carry__6_n_2,out_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,reg_add_reg[30:28]}),
        .O(data_r[31:28]),
        .S({out_carry__6_i_1_n_0,out_carry__6_i_2_n_0,out_carry__6_i_3_n_0,out_carry__6_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    out_carry__6_i_1
       (.I0(p_0_in[31]),
        .I1(reg_add_reg[31]),
        .O(out_carry__6_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    out_carry__6_i_2
       (.I0(reg_add_reg[30]),
        .I1(p_0_in[30]),
        .O(out_carry__6_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    out_carry__6_i_3
       (.I0(reg_add_reg[29]),
        .I1(p_0_in[29]),
        .O(out_carry__6_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    out_carry__6_i_4
       (.I0(reg_add_reg[28]),
        .I1(p_0_in[28]),
        .O(out_carry__6_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    out_carry_i_1
       (.I0(reg_add_reg[3]),
        .I1(p_0_in[3]),
        .O(out_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    out_carry_i_2
       (.I0(reg_add_reg[2]),
        .I1(p_0_in[2]),
        .O(out_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    out_carry_i_3
       (.I0(reg_add_reg[1]),
        .I1(p_0_in[1]),
        .O(out_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    out_carry_i_4
       (.I0(reg_add_reg[0]),
        .I1(p_0_in[0]),
        .O(out_carry_i_4_n_0));
  FDCE \reg_add_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\reg_add_reg[31]_0 ),
        .D(O[0]),
        .Q(reg_add_reg[0]));
  FDCE \reg_add_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\reg_add_reg[31]_0 ),
        .D(\reg_add_reg[11]_0 [2]),
        .Q(reg_add_reg[10]));
  FDCE \reg_add_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\reg_add_reg[31]_0 ),
        .D(\reg_add_reg[11]_0 [3]),
        .Q(reg_add_reg[11]));
  FDCE \reg_add_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\reg_add_reg[31]_0 ),
        .D(\reg_add_reg[15]_0 [0]),
        .Q(reg_add_reg[12]));
  FDCE \reg_add_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\reg_add_reg[31]_0 ),
        .D(\reg_add_reg[15]_0 [1]),
        .Q(reg_add_reg[13]));
  FDCE \reg_add_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\reg_add_reg[31]_0 ),
        .D(\reg_add_reg[15]_0 [2]),
        .Q(reg_add_reg[14]));
  FDCE \reg_add_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\reg_add_reg[31]_0 ),
        .D(\reg_add_reg[15]_0 [3]),
        .Q(reg_add_reg[15]));
  FDCE \reg_add_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\reg_add_reg[31]_0 ),
        .D(\reg_add_reg[19]_0 [0]),
        .Q(reg_add_reg[16]));
  FDCE \reg_add_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\reg_add_reg[31]_0 ),
        .D(\reg_add_reg[19]_0 [1]),
        .Q(reg_add_reg[17]));
  FDCE \reg_add_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\reg_add_reg[31]_0 ),
        .D(\reg_add_reg[19]_0 [2]),
        .Q(reg_add_reg[18]));
  FDCE \reg_add_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\reg_add_reg[31]_0 ),
        .D(\reg_add_reg[19]_0 [3]),
        .Q(reg_add_reg[19]));
  FDCE \reg_add_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\reg_add_reg[31]_0 ),
        .D(O[1]),
        .Q(reg_add_reg[1]));
  FDCE \reg_add_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\reg_add_reg[31]_0 ),
        .D(\reg_add_reg[23]_0 [0]),
        .Q(reg_add_reg[20]));
  FDCE \reg_add_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\reg_add_reg[31]_0 ),
        .D(\reg_add_reg[23]_0 [1]),
        .Q(reg_add_reg[21]));
  FDCE \reg_add_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\reg_add_reg[31]_0 ),
        .D(\reg_add_reg[23]_0 [2]),
        .Q(reg_add_reg[22]));
  FDCE \reg_add_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\reg_add_reg[31]_0 ),
        .D(\reg_add_reg[23]_0 [3]),
        .Q(reg_add_reg[23]));
  FDCE \reg_add_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\reg_add_reg[31]_0 ),
        .D(\reg_add_reg[27]_0 [0]),
        .Q(reg_add_reg[24]));
  FDCE \reg_add_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\reg_add_reg[31]_0 ),
        .D(\reg_add_reg[27]_0 [1]),
        .Q(reg_add_reg[25]));
  FDCE \reg_add_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\reg_add_reg[31]_0 ),
        .D(\reg_add_reg[27]_0 [2]),
        .Q(reg_add_reg[26]));
  FDCE \reg_add_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\reg_add_reg[31]_0 ),
        .D(\reg_add_reg[27]_0 [3]),
        .Q(reg_add_reg[27]));
  FDCE \reg_add_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\reg_add_reg[31]_0 ),
        .D(\reg_add_reg[31]_1 [0]),
        .Q(reg_add_reg[28]));
  FDCE \reg_add_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\reg_add_reg[31]_0 ),
        .D(\reg_add_reg[31]_1 [1]),
        .Q(reg_add_reg[29]));
  FDCE \reg_add_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\reg_add_reg[31]_0 ),
        .D(O[2]),
        .Q(reg_add_reg[2]));
  FDCE \reg_add_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\reg_add_reg[31]_0 ),
        .D(\reg_add_reg[31]_1 [2]),
        .Q(reg_add_reg[30]));
  FDCE \reg_add_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\reg_add_reg[31]_0 ),
        .D(\reg_add_reg[31]_1 [3]),
        .Q(reg_add_reg[31]));
  FDCE \reg_add_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\reg_add_reg[31]_0 ),
        .D(O[3]),
        .Q(reg_add_reg[3]));
  FDCE \reg_add_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\reg_add_reg[31]_0 ),
        .D(\reg_add_reg[7]_0 [0]),
        .Q(reg_add_reg[4]));
  FDCE \reg_add_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\reg_add_reg[31]_0 ),
        .D(\reg_add_reg[7]_0 [1]),
        .Q(reg_add_reg[5]));
  FDCE \reg_add_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\reg_add_reg[31]_0 ),
        .D(\reg_add_reg[7]_0 [2]),
        .Q(reg_add_reg[6]));
  FDCE \reg_add_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\reg_add_reg[31]_0 ),
        .D(\reg_add_reg[7]_0 [3]),
        .Q(reg_add_reg[7]));
  FDCE \reg_add_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\reg_add_reg[31]_0 ),
        .D(\reg_add_reg[11]_0 [0]),
        .Q(reg_add_reg[8]));
  FDCE \reg_add_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\reg_add_reg[31]_0 ),
        .D(\reg_add_reg[11]_0 [1]),
        .Q(reg_add_reg[9]));
endmodule

(* ORIG_REF_NAME = "axis_ctrl_if" *) 
module top_mat_mul_0_0_axis_ctrl_if
   (stat_axis_tdata,
    stat_axis_tlast,
    Q,
    \app_data_reg[0][31]_0 ,
    \app_data_reg[1][31]_0 ,
    \FSM_onehot_state_reg[0]_0 ,
    stat_axis_tready,
    ctrl_axis_tlast,
    ctrl_axis_tvalid,
    clk,
    \FSM_onehot_state_reg[4]_0 ,
    D,
    err,
    \err_reg_reg[0]_0 ,
    \err_reg_reg[0]_1 ,
    ctrl_axis_tdata);
  output [2:0]stat_axis_tdata;
  output stat_axis_tlast;
  output [3:0]Q;
  output [31:0]\app_data_reg[0][31]_0 ;
  output [31:0]\app_data_reg[1][31]_0 ;
  input \FSM_onehot_state_reg[0]_0 ;
  input stat_axis_tready;
  input ctrl_axis_tlast;
  input ctrl_axis_tvalid;
  input clk;
  input \FSM_onehot_state_reg[4]_0 ;
  input [0:0]D;
  input [0:0]err;
  input \err_reg_reg[0]_0 ;
  input \err_reg_reg[0]_1 ;
  input [31:0]ctrl_axis_tdata;

  wire [0:0]D;
  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state[4]_i_1_n_0 ;
  wire \FSM_onehot_state_reg[0]_0 ;
  wire \FSM_onehot_state_reg[4]_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire [3:0]Q;
  wire [31:0]\app_data_reg[0][31]_0 ;
  wire [31:0]\app_data_reg[1][31]_0 ;
  wire clk;
  wire [31:0]ctrl_axis_tdata;
  wire ctrl_axis_tlast;
  wire ctrl_axis_tvalid;
  wire [0:0]err;
  wire [1:0]err_reg;
  wire \err_reg[0]_i_1_n_0 ;
  wire \err_reg[1]_i_1_n_0 ;
  wire \err_reg_reg[0]_0 ;
  wire \err_reg_reg[0]_1 ;
  wire p_0_out;
  wire [2:0]stat_axis_tdata;
  wire stat_axis_tlast;
  wire stat_axis_tready;
  wire \stat_cnt[0]_i_1_n_0 ;
  wire \stat_cnt[1]_i_1_n_0 ;
  wire \stat_cnt[2]_i_1_n_0 ;
  wire \stat_cnt[2]_i_2_n_0 ;
  wire \stat_cnt_reg_n_0_[0] ;
  wire \stat_cnt_reg_n_0_[1] ;
  wire \stat_cnt_reg_n_0_[2] ;

  LUT5 #(
    .INIT(32'hF8888888)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(\FSM_onehot_state_reg[0]_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(stat_axis_tready),
        .I3(stat_axis_tlast),
        .I4(Q[3]),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h70FF7070)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(ctrl_axis_tlast),
        .I1(ctrl_axis_tvalid),
        .I2(Q[0]),
        .I3(\FSM_onehot_state_reg[0]_0 ),
        .I4(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(ctrl_axis_tlast),
        .I1(Q[0]),
        .I2(ctrl_axis_tvalid),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF707070)) 
    \FSM_onehot_state[4]_i_1 
       (.I0(stat_axis_tready),
        .I1(stat_axis_tlast),
        .I2(Q[3]),
        .I3(\FSM_onehot_state_reg[0]_0 ),
        .I4(Q[2]),
        .O(\FSM_onehot_state[4]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "FSM_START:00100,FSM_BUSY:01000,FSM_OUTPUT:10000,FSM_IDLE:00010,FSM_WAIT:00001" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .PRE(\FSM_onehot_state_reg[4]_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[0] ));
  (* FSM_ENCODED_STATES = "FSM_START:00100,FSM_BUSY:01000,FSM_OUTPUT:10000,FSM_IDLE:00010,FSM_WAIT:00001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\FSM_onehot_state_reg[4]_0 ),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(Q[0]));
  (* FSM_ENCODED_STATES = "FSM_START:00100,FSM_BUSY:01000,FSM_OUTPUT:10000,FSM_IDLE:00010,FSM_WAIT:00001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\FSM_onehot_state_reg[4]_0 ),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(Q[1]));
  (* FSM_ENCODED_STATES = "FSM_START:00100,FSM_BUSY:01000,FSM_OUTPUT:10000,FSM_IDLE:00010,FSM_WAIT:00001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\FSM_onehot_state_reg[4]_0 ),
        .D(D),
        .Q(Q[2]));
  (* FSM_ENCODED_STATES = "FSM_START:00100,FSM_BUSY:01000,FSM_OUTPUT:10000,FSM_IDLE:00010,FSM_WAIT:00001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\FSM_onehot_state_reg[4]_0 ),
        .D(\FSM_onehot_state[4]_i_1_n_0 ),
        .Q(Q[3]));
  LUT2 #(
    .INIT(4'h8)) 
    \app_data[0][31]_i_1 
       (.I0(ctrl_axis_tvalid),
        .I1(Q[0]),
        .O(p_0_out));
  FDCE \app_data_reg[0][0] 
       (.C(clk),
        .CE(p_0_out),
        .CLR(\FSM_onehot_state_reg[4]_0 ),
        .D(ctrl_axis_tdata[0]),
        .Q(\app_data_reg[0][31]_0 [0]));
  FDCE \app_data_reg[0][10] 
       (.C(clk),
        .CE(p_0_out),
        .CLR(\FSM_onehot_state_reg[4]_0 ),
        .D(ctrl_axis_tdata[10]),
        .Q(\app_data_reg[0][31]_0 [10]));
  FDCE \app_data_reg[0][11] 
       (.C(clk),
        .CE(p_0_out),
        .CLR(\FSM_onehot_state_reg[4]_0 ),
        .D(ctrl_axis_tdata[11]),
        .Q(\app_data_reg[0][31]_0 [11]));
  FDCE \app_data_reg[0][12] 
       (.C(clk),
        .CE(p_0_out),
        .CLR(\FSM_onehot_state_reg[4]_0 ),
        .D(ctrl_axis_tdata[12]),
        .Q(\app_data_reg[0][31]_0 [12]));
  FDCE \app_data_reg[0][13] 
       (.C(clk),
        .CE(p_0_out),
        .CLR(\FSM_onehot_state_reg[4]_0 ),
        .D(ctrl_axis_tdata[13]),
        .Q(\app_data_reg[0][31]_0 [13]));
  FDCE \app_data_reg[0][14] 
       (.C(clk),
        .CE(p_0_out),
        .CLR(\FSM_onehot_state_reg[4]_0 ),
        .D(ctrl_axis_tdata[14]),
        .Q(\app_data_reg[0][31]_0 [14]));
  FDCE \app_data_reg[0][15] 
       (.C(clk),
        .CE(p_0_out),
        .CLR(\FSM_onehot_state_reg[4]_0 ),
        .D(ctrl_axis_tdata[15]),
        .Q(\app_data_reg[0][31]_0 [15]));
  FDCE \app_data_reg[0][16] 
       (.C(clk),
        .CE(p_0_out),
        .CLR(\FSM_onehot_state_reg[4]_0 ),
        .D(ctrl_axis_tdata[16]),
        .Q(\app_data_reg[0][31]_0 [16]));
  FDCE \app_data_reg[0][17] 
       (.C(clk),
        .CE(p_0_out),
        .CLR(\FSM_onehot_state_reg[4]_0 ),
        .D(ctrl_axis_tdata[17]),
        .Q(\app_data_reg[0][31]_0 [17]));
  FDCE \app_data_reg[0][18] 
       (.C(clk),
        .CE(p_0_out),
        .CLR(\FSM_onehot_state_reg[4]_0 ),
        .D(ctrl_axis_tdata[18]),
        .Q(\app_data_reg[0][31]_0 [18]));
  FDCE \app_data_reg[0][19] 
       (.C(clk),
        .CE(p_0_out),
        .CLR(\FSM_onehot_state_reg[4]_0 ),
        .D(ctrl_axis_tdata[19]),
        .Q(\app_data_reg[0][31]_0 [19]));
  FDCE \app_data_reg[0][1] 
       (.C(clk),
        .CE(p_0_out),
        .CLR(\FSM_onehot_state_reg[4]_0 ),
        .D(ctrl_axis_tdata[1]),
        .Q(\app_data_reg[0][31]_0 [1]));
  FDCE \app_data_reg[0][20] 
       (.C(clk),
        .CE(p_0_out),
        .CLR(\FSM_onehot_state_reg[4]_0 ),
        .D(ctrl_axis_tdata[20]),
        .Q(\app_data_reg[0][31]_0 [20]));
  FDCE \app_data_reg[0][21] 
       (.C(clk),
        .CE(p_0_out),
        .CLR(\FSM_onehot_state_reg[4]_0 ),
        .D(ctrl_axis_tdata[21]),
        .Q(\app_data_reg[0][31]_0 [21]));
  FDCE \app_data_reg[0][22] 
       (.C(clk),
        .CE(p_0_out),
        .CLR(\FSM_onehot_state_reg[4]_0 ),
        .D(ctrl_axis_tdata[22]),
        .Q(\app_data_reg[0][31]_0 [22]));
  FDCE \app_data_reg[0][23] 
       (.C(clk),
        .CE(p_0_out),
        .CLR(\FSM_onehot_state_reg[4]_0 ),
        .D(ctrl_axis_tdata[23]),
        .Q(\app_data_reg[0][31]_0 [23]));
  FDCE \app_data_reg[0][24] 
       (.C(clk),
        .CE(p_0_out),
        .CLR(\FSM_onehot_state_reg[4]_0 ),
        .D(ctrl_axis_tdata[24]),
        .Q(\app_data_reg[0][31]_0 [24]));
  FDCE \app_data_reg[0][25] 
       (.C(clk),
        .CE(p_0_out),
        .CLR(\FSM_onehot_state_reg[4]_0 ),
        .D(ctrl_axis_tdata[25]),
        .Q(\app_data_reg[0][31]_0 [25]));
  FDCE \app_data_reg[0][26] 
       (.C(clk),
        .CE(p_0_out),
        .CLR(\FSM_onehot_state_reg[4]_0 ),
        .D(ctrl_axis_tdata[26]),
        .Q(\app_data_reg[0][31]_0 [26]));
  FDCE \app_data_reg[0][27] 
       (.C(clk),
        .CE(p_0_out),
        .CLR(\FSM_onehot_state_reg[4]_0 ),
        .D(ctrl_axis_tdata[27]),
        .Q(\app_data_reg[0][31]_0 [27]));
  FDCE \app_data_reg[0][28] 
       (.C(clk),
        .CE(p_0_out),
        .CLR(\FSM_onehot_state_reg[4]_0 ),
        .D(ctrl_axis_tdata[28]),
        .Q(\app_data_reg[0][31]_0 [28]));
  FDCE \app_data_reg[0][29] 
       (.C(clk),
        .CE(p_0_out),
        .CLR(\FSM_onehot_state_reg[4]_0 ),
        .D(ctrl_axis_tdata[29]),
        .Q(\app_data_reg[0][31]_0 [29]));
  FDCE \app_data_reg[0][2] 
       (.C(clk),
        .CE(p_0_out),
        .CLR(\FSM_onehot_state_reg[4]_0 ),
        .D(ctrl_axis_tdata[2]),
        .Q(\app_data_reg[0][31]_0 [2]));
  FDCE \app_data_reg[0][30] 
       (.C(clk),
        .CE(p_0_out),
        .CLR(\FSM_onehot_state_reg[4]_0 ),
        .D(ctrl_axis_tdata[30]),
        .Q(\app_data_reg[0][31]_0 [30]));
  FDCE \app_data_reg[0][31] 
       (.C(clk),
        .CE(p_0_out),
        .CLR(\FSM_onehot_state_reg[4]_0 ),
        .D(ctrl_axis_tdata[31]),
        .Q(\app_data_reg[0][31]_0 [31]));
  FDCE \app_data_reg[0][3] 
       (.C(clk),
        .CE(p_0_out),
        .CLR(\FSM_onehot_state_reg[4]_0 ),
        .D(ctrl_axis_tdata[3]),
        .Q(\app_data_reg[0][31]_0 [3]));
  FDCE \app_data_reg[0][4] 
       (.C(clk),
        .CE(p_0_out),
        .CLR(\FSM_onehot_state_reg[4]_0 ),
        .D(ctrl_axis_tdata[4]),
        .Q(\app_data_reg[0][31]_0 [4]));
  FDCE \app_data_reg[0][5] 
       (.C(clk),
        .CE(p_0_out),
        .CLR(\FSM_onehot_state_reg[4]_0 ),
        .D(ctrl_axis_tdata[5]),
        .Q(\app_data_reg[0][31]_0 [5]));
  FDCE \app_data_reg[0][6] 
       (.C(clk),
        .CE(p_0_out),
        .CLR(\FSM_onehot_state_reg[4]_0 ),
        .D(ctrl_axis_tdata[6]),
        .Q(\app_data_reg[0][31]_0 [6]));
  FDCE \app_data_reg[0][7] 
       (.C(clk),
        .CE(p_0_out),
        .CLR(\FSM_onehot_state_reg[4]_0 ),
        .D(ctrl_axis_tdata[7]),
        .Q(\app_data_reg[0][31]_0 [7]));
  FDCE \app_data_reg[0][8] 
       (.C(clk),
        .CE(p_0_out),
        .CLR(\FSM_onehot_state_reg[4]_0 ),
        .D(ctrl_axis_tdata[8]),
        .Q(\app_data_reg[0][31]_0 [8]));
  FDCE \app_data_reg[0][9] 
       (.C(clk),
        .CE(p_0_out),
        .CLR(\FSM_onehot_state_reg[4]_0 ),
        .D(ctrl_axis_tdata[9]),
        .Q(\app_data_reg[0][31]_0 [9]));
  FDCE \app_data_reg[1][0] 
       (.C(clk),
        .CE(p_0_out),
        .CLR(\FSM_onehot_state_reg[4]_0 ),
        .D(\app_data_reg[0][31]_0 [0]),
        .Q(\app_data_reg[1][31]_0 [0]));
  FDCE \app_data_reg[1][10] 
       (.C(clk),
        .CE(p_0_out),
        .CLR(\FSM_onehot_state_reg[4]_0 ),
        .D(\app_data_reg[0][31]_0 [10]),
        .Q(\app_data_reg[1][31]_0 [10]));
  FDCE \app_data_reg[1][11] 
       (.C(clk),
        .CE(p_0_out),
        .CLR(\FSM_onehot_state_reg[4]_0 ),
        .D(\app_data_reg[0][31]_0 [11]),
        .Q(\app_data_reg[1][31]_0 [11]));
  FDCE \app_data_reg[1][12] 
       (.C(clk),
        .CE(p_0_out),
        .CLR(\FSM_onehot_state_reg[4]_0 ),
        .D(\app_data_reg[0][31]_0 [12]),
        .Q(\app_data_reg[1][31]_0 [12]));
  FDCE \app_data_reg[1][13] 
       (.C(clk),
        .CE(p_0_out),
        .CLR(\FSM_onehot_state_reg[4]_0 ),
        .D(\app_data_reg[0][31]_0 [13]),
        .Q(\app_data_reg[1][31]_0 [13]));
  FDCE \app_data_reg[1][14] 
       (.C(clk),
        .CE(p_0_out),
        .CLR(\FSM_onehot_state_reg[4]_0 ),
        .D(\app_data_reg[0][31]_0 [14]),
        .Q(\app_data_reg[1][31]_0 [14]));
  FDCE \app_data_reg[1][15] 
       (.C(clk),
        .CE(p_0_out),
        .CLR(\FSM_onehot_state_reg[4]_0 ),
        .D(\app_data_reg[0][31]_0 [15]),
        .Q(\app_data_reg[1][31]_0 [15]));
  FDCE \app_data_reg[1][16] 
       (.C(clk),
        .CE(p_0_out),
        .CLR(\FSM_onehot_state_reg[4]_0 ),
        .D(\app_data_reg[0][31]_0 [16]),
        .Q(\app_data_reg[1][31]_0 [16]));
  FDCE \app_data_reg[1][17] 
       (.C(clk),
        .CE(p_0_out),
        .CLR(\FSM_onehot_state_reg[4]_0 ),
        .D(\app_data_reg[0][31]_0 [17]),
        .Q(\app_data_reg[1][31]_0 [17]));
  FDCE \app_data_reg[1][18] 
       (.C(clk),
        .CE(p_0_out),
        .CLR(\FSM_onehot_state_reg[4]_0 ),
        .D(\app_data_reg[0][31]_0 [18]),
        .Q(\app_data_reg[1][31]_0 [18]));
  FDCE \app_data_reg[1][19] 
       (.C(clk),
        .CE(p_0_out),
        .CLR(\FSM_onehot_state_reg[4]_0 ),
        .D(\app_data_reg[0][31]_0 [19]),
        .Q(\app_data_reg[1][31]_0 [19]));
  FDCE \app_data_reg[1][1] 
       (.C(clk),
        .CE(p_0_out),
        .CLR(\FSM_onehot_state_reg[4]_0 ),
        .D(\app_data_reg[0][31]_0 [1]),
        .Q(\app_data_reg[1][31]_0 [1]));
  FDCE \app_data_reg[1][20] 
       (.C(clk),
        .CE(p_0_out),
        .CLR(\FSM_onehot_state_reg[4]_0 ),
        .D(\app_data_reg[0][31]_0 [20]),
        .Q(\app_data_reg[1][31]_0 [20]));
  FDCE \app_data_reg[1][21] 
       (.C(clk),
        .CE(p_0_out),
        .CLR(\FSM_onehot_state_reg[4]_0 ),
        .D(\app_data_reg[0][31]_0 [21]),
        .Q(\app_data_reg[1][31]_0 [21]));
  FDCE \app_data_reg[1][22] 
       (.C(clk),
        .CE(p_0_out),
        .CLR(\FSM_onehot_state_reg[4]_0 ),
        .D(\app_data_reg[0][31]_0 [22]),
        .Q(\app_data_reg[1][31]_0 [22]));
  FDCE \app_data_reg[1][23] 
       (.C(clk),
        .CE(p_0_out),
        .CLR(\FSM_onehot_state_reg[4]_0 ),
        .D(\app_data_reg[0][31]_0 [23]),
        .Q(\app_data_reg[1][31]_0 [23]));
  FDCE \app_data_reg[1][24] 
       (.C(clk),
        .CE(p_0_out),
        .CLR(\FSM_onehot_state_reg[4]_0 ),
        .D(\app_data_reg[0][31]_0 [24]),
        .Q(\app_data_reg[1][31]_0 [24]));
  FDCE \app_data_reg[1][25] 
       (.C(clk),
        .CE(p_0_out),
        .CLR(\FSM_onehot_state_reg[4]_0 ),
        .D(\app_data_reg[0][31]_0 [25]),
        .Q(\app_data_reg[1][31]_0 [25]));
  FDCE \app_data_reg[1][26] 
       (.C(clk),
        .CE(p_0_out),
        .CLR(\FSM_onehot_state_reg[4]_0 ),
        .D(\app_data_reg[0][31]_0 [26]),
        .Q(\app_data_reg[1][31]_0 [26]));
  FDCE \app_data_reg[1][27] 
       (.C(clk),
        .CE(p_0_out),
        .CLR(\FSM_onehot_state_reg[4]_0 ),
        .D(\app_data_reg[0][31]_0 [27]),
        .Q(\app_data_reg[1][31]_0 [27]));
  FDCE \app_data_reg[1][28] 
       (.C(clk),
        .CE(p_0_out),
        .CLR(\FSM_onehot_state_reg[4]_0 ),
        .D(\app_data_reg[0][31]_0 [28]),
        .Q(\app_data_reg[1][31]_0 [28]));
  FDCE \app_data_reg[1][29] 
       (.C(clk),
        .CE(p_0_out),
        .CLR(\FSM_onehot_state_reg[4]_0 ),
        .D(\app_data_reg[0][31]_0 [29]),
        .Q(\app_data_reg[1][31]_0 [29]));
  FDCE \app_data_reg[1][2] 
       (.C(clk),
        .CE(p_0_out),
        .CLR(\FSM_onehot_state_reg[4]_0 ),
        .D(\app_data_reg[0][31]_0 [2]),
        .Q(\app_data_reg[1][31]_0 [2]));
  FDCE \app_data_reg[1][30] 
       (.C(clk),
        .CE(p_0_out),
        .CLR(\FSM_onehot_state_reg[4]_0 ),
        .D(\app_data_reg[0][31]_0 [30]),
        .Q(\app_data_reg[1][31]_0 [30]));
  FDCE \app_data_reg[1][31] 
       (.C(clk),
        .CE(p_0_out),
        .CLR(\FSM_onehot_state_reg[4]_0 ),
        .D(\app_data_reg[0][31]_0 [31]),
        .Q(\app_data_reg[1][31]_0 [31]));
  FDCE \app_data_reg[1][3] 
       (.C(clk),
        .CE(p_0_out),
        .CLR(\FSM_onehot_state_reg[4]_0 ),
        .D(\app_data_reg[0][31]_0 [3]),
        .Q(\app_data_reg[1][31]_0 [3]));
  FDCE \app_data_reg[1][4] 
       (.C(clk),
        .CE(p_0_out),
        .CLR(\FSM_onehot_state_reg[4]_0 ),
        .D(\app_data_reg[0][31]_0 [4]),
        .Q(\app_data_reg[1][31]_0 [4]));
  FDCE \app_data_reg[1][5] 
       (.C(clk),
        .CE(p_0_out),
        .CLR(\FSM_onehot_state_reg[4]_0 ),
        .D(\app_data_reg[0][31]_0 [5]),
        .Q(\app_data_reg[1][31]_0 [5]));
  FDCE \app_data_reg[1][6] 
       (.C(clk),
        .CE(p_0_out),
        .CLR(\FSM_onehot_state_reg[4]_0 ),
        .D(\app_data_reg[0][31]_0 [6]),
        .Q(\app_data_reg[1][31]_0 [6]));
  FDCE \app_data_reg[1][7] 
       (.C(clk),
        .CE(p_0_out),
        .CLR(\FSM_onehot_state_reg[4]_0 ),
        .D(\app_data_reg[0][31]_0 [7]),
        .Q(\app_data_reg[1][31]_0 [7]));
  FDCE \app_data_reg[1][8] 
       (.C(clk),
        .CE(p_0_out),
        .CLR(\FSM_onehot_state_reg[4]_0 ),
        .D(\app_data_reg[0][31]_0 [8]),
        .Q(\app_data_reg[1][31]_0 [8]));
  FDCE \app_data_reg[1][9] 
       (.C(clk),
        .CE(p_0_out),
        .CLR(\FSM_onehot_state_reg[4]_0 ),
        .D(\app_data_reg[0][31]_0 [9]),
        .Q(\app_data_reg[1][31]_0 [9]));
  LUT4 #(
    .INIT(16'hEFE0)) 
    \err_reg[0]_i_1 
       (.I0(\err_reg_reg[0]_0 ),
        .I1(\err_reg_reg[0]_1 ),
        .I2(Q[2]),
        .I3(err_reg[0]),
        .O(\err_reg[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \err_reg[1]_i_1 
       (.I0(err),
        .I1(Q[2]),
        .I2(err_reg[1]),
        .O(\err_reg[1]_i_1_n_0 ));
  FDCE \err_reg_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\FSM_onehot_state_reg[4]_0 ),
        .D(\err_reg[0]_i_1_n_0 ),
        .Q(err_reg[0]));
  FDCE \err_reg_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\FSM_onehot_state_reg[4]_0 ),
        .D(\err_reg[1]_i_1_n_0 ),
        .Q(err_reg[1]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \stat_axis_tdata[0]_INST_0 
       (.I0(err_reg[0]),
        .I1(\stat_cnt_reg_n_0_[0] ),
        .I2(\stat_cnt_reg_n_0_[1] ),
        .I3(\stat_cnt_reg_n_0_[2] ),
        .O(stat_axis_tdata[0]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \stat_axis_tdata[1]_INST_0 
       (.I0(err_reg[1]),
        .I1(\stat_cnt_reg_n_0_[0] ),
        .I2(\stat_cnt_reg_n_0_[1] ),
        .I3(\stat_cnt_reg_n_0_[2] ),
        .O(stat_axis_tdata[1]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \stat_axis_tdata[28]_INST_0 
       (.I0(\stat_cnt_reg_n_0_[1] ),
        .I1(\stat_cnt_reg_n_0_[0] ),
        .I2(\stat_cnt_reg_n_0_[2] ),
        .O(stat_axis_tdata[2]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    stat_axis_tlast_INST_0
       (.I0(\stat_cnt_reg_n_0_[2] ),
        .I1(\stat_cnt_reg_n_0_[1] ),
        .I2(\stat_cnt_reg_n_0_[0] ),
        .O(stat_axis_tlast));
  LUT6 #(
    .INIT(64'hAA2AAA2A00808080)) 
    \stat_cnt[0]_i_1 
       (.I0(\stat_cnt[2]_i_2_n_0 ),
        .I1(stat_axis_tready),
        .I2(Q[3]),
        .I3(\stat_cnt_reg_n_0_[2] ),
        .I4(\stat_cnt_reg_n_0_[1] ),
        .I5(\stat_cnt_reg_n_0_[0] ),
        .O(\stat_cnt[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAA2A0080AAAA0000)) 
    \stat_cnt[1]_i_1 
       (.I0(\stat_cnt[2]_i_2_n_0 ),
        .I1(stat_axis_tready),
        .I2(Q[3]),
        .I3(\stat_cnt_reg_n_0_[2] ),
        .I4(\stat_cnt_reg_n_0_[1] ),
        .I5(\stat_cnt_reg_n_0_[0] ),
        .O(\stat_cnt[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAA80AA00AA00AA00)) 
    \stat_cnt[2]_i_1 
       (.I0(\stat_cnt[2]_i_2_n_0 ),
        .I1(stat_axis_tready),
        .I2(Q[3]),
        .I3(\stat_cnt_reg_n_0_[2] ),
        .I4(\stat_cnt_reg_n_0_[1] ),
        .I5(\stat_cnt_reg_n_0_[0] ),
        .O(\stat_cnt[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \stat_cnt[2]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(\stat_cnt[2]_i_2_n_0 ));
  FDCE \stat_cnt_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\FSM_onehot_state_reg[4]_0 ),
        .D(\stat_cnt[0]_i_1_n_0 ),
        .Q(\stat_cnt_reg_n_0_[0] ));
  FDCE \stat_cnt_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\FSM_onehot_state_reg[4]_0 ),
        .D(\stat_cnt[1]_i_1_n_0 ),
        .Q(\stat_cnt_reg_n_0_[1] ));
  FDCE \stat_cnt_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\FSM_onehot_state_reg[4]_0 ),
        .D(\stat_cnt[2]_i_1_n_0 ),
        .Q(\stat_cnt_reg_n_0_[2] ));
endmodule

(* ORIG_REF_NAME = "bram" *) 
module top_mat_mul_0_0_bram
   (r_data_int,
    clk,
    P,
    in_axis_tdata,
    mem_inst_reg_0_0_0,
    mem_inst_reg_0_1_0,
    mem_inst_reg_0_2_0,
    mem_inst_reg_0_3_0,
    mem_inst_reg_0_4_0,
    mem_inst_reg_0_5_0,
    mem_inst_reg_0_6_0,
    mem_inst_reg_0_7_0,
    mem_inst_reg_0_8_0,
    mem_inst_reg_0_9_0,
    mem_inst_reg_0_10_0,
    mem_inst_reg_0_11_0,
    mem_inst_reg_0_12_0,
    mem_inst_reg_0_13_0,
    mem_inst_reg_0_14_0,
    mem_inst_reg_0_15_0,
    mem_inst_reg_0_16_0,
    mem_inst_reg_0_17_0,
    mem_inst_reg_0_18_0,
    mem_inst_reg_0_19_0,
    mem_inst_reg_0_20_0,
    mem_inst_reg_0_21_0,
    mem_inst_reg_0_22_0,
    mem_inst_reg_0_23_0,
    mem_inst_reg_0_24_0,
    mem_inst_reg_0_25_0,
    mem_inst_reg_0_26_0,
    mem_inst_reg_0_27_0,
    mem_inst_reg_0_28_0,
    mem_inst_reg_0_29_0,
    mem_inst_reg_0_30_0,
    mem_inst_reg_0_31_0);
  output [31:0]r_data_int;
  input clk;
  input [14:0]P;
  input [31:0]in_axis_tdata;
  input [0:0]mem_inst_reg_0_0_0;
  input [0:0]mem_inst_reg_0_1_0;
  input [0:0]mem_inst_reg_0_2_0;
  input [0:0]mem_inst_reg_0_3_0;
  input [0:0]mem_inst_reg_0_4_0;
  input [0:0]mem_inst_reg_0_5_0;
  input [0:0]mem_inst_reg_0_6_0;
  input [0:0]mem_inst_reg_0_7_0;
  input [0:0]mem_inst_reg_0_8_0;
  input [0:0]mem_inst_reg_0_9_0;
  input [0:0]mem_inst_reg_0_10_0;
  input [0:0]mem_inst_reg_0_11_0;
  input [0:0]mem_inst_reg_0_12_0;
  input [0:0]mem_inst_reg_0_13_0;
  input [0:0]mem_inst_reg_0_14_0;
  input [0:0]mem_inst_reg_0_15_0;
  input [0:0]mem_inst_reg_0_16_0;
  input [0:0]mem_inst_reg_0_17_0;
  input [0:0]mem_inst_reg_0_18_0;
  input [0:0]mem_inst_reg_0_19_0;
  input [0:0]mem_inst_reg_0_20_0;
  input [0:0]mem_inst_reg_0_21_0;
  input [0:0]mem_inst_reg_0_22_0;
  input [0:0]mem_inst_reg_0_23_0;
  input [0:0]mem_inst_reg_0_24_0;
  input [0:0]mem_inst_reg_0_25_0;
  input [0:0]mem_inst_reg_0_26_0;
  input [0:0]mem_inst_reg_0_27_0;
  input [0:0]mem_inst_reg_0_28_0;
  input [0:0]mem_inst_reg_0_29_0;
  input [0:0]mem_inst_reg_0_30_0;
  input [0:0]mem_inst_reg_0_31_0;

  wire [14:0]P;
  wire clk;
  wire [31:0]in_axis_tdata;
  wire [0:0]mem_inst_reg_0_0_0;
  wire [0:0]mem_inst_reg_0_10_0;
  wire [0:0]mem_inst_reg_0_11_0;
  wire [0:0]mem_inst_reg_0_12_0;
  wire [0:0]mem_inst_reg_0_13_0;
  wire [0:0]mem_inst_reg_0_14_0;
  wire [0:0]mem_inst_reg_0_15_0;
  wire [0:0]mem_inst_reg_0_16_0;
  wire [0:0]mem_inst_reg_0_17_0;
  wire [0:0]mem_inst_reg_0_18_0;
  wire [0:0]mem_inst_reg_0_19_0;
  wire [0:0]mem_inst_reg_0_1_0;
  wire [0:0]mem_inst_reg_0_20_0;
  wire [0:0]mem_inst_reg_0_21_0;
  wire [0:0]mem_inst_reg_0_22_0;
  wire [0:0]mem_inst_reg_0_23_0;
  wire [0:0]mem_inst_reg_0_24_0;
  wire [0:0]mem_inst_reg_0_25_0;
  wire [0:0]mem_inst_reg_0_26_0;
  wire [0:0]mem_inst_reg_0_27_0;
  wire [0:0]mem_inst_reg_0_28_0;
  wire [0:0]mem_inst_reg_0_29_0;
  wire [0:0]mem_inst_reg_0_2_0;
  wire [0:0]mem_inst_reg_0_30_0;
  wire [0:0]mem_inst_reg_0_31_0;
  wire [0:0]mem_inst_reg_0_3_0;
  wire [0:0]mem_inst_reg_0_4_0;
  wire [0:0]mem_inst_reg_0_5_0;
  wire [0:0]mem_inst_reg_0_6_0;
  wire [0:0]mem_inst_reg_0_7_0;
  wire [0:0]mem_inst_reg_0_8_0;
  wire [0:0]mem_inst_reg_0_9_0;
  wire [31:0]r_data_int;
  wire NLW_mem_inst_reg_0_0_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_inst_reg_0_0_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_inst_reg_0_0_DBITERR_UNCONNECTED;
  wire NLW_mem_inst_reg_0_0_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_inst_reg_0_0_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_inst_reg_0_0_SBITERR_UNCONNECTED;
  wire [31:1]NLW_mem_inst_reg_0_0_DOADO_UNCONNECTED;
  wire [31:0]NLW_mem_inst_reg_0_0_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_inst_reg_0_0_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_inst_reg_0_0_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_inst_reg_0_0_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_inst_reg_0_0_RDADDRECC_UNCONNECTED;
  wire NLW_mem_inst_reg_0_1_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_inst_reg_0_1_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_inst_reg_0_1_DBITERR_UNCONNECTED;
  wire NLW_mem_inst_reg_0_1_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_inst_reg_0_1_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_inst_reg_0_1_SBITERR_UNCONNECTED;
  wire [31:1]NLW_mem_inst_reg_0_1_DOADO_UNCONNECTED;
  wire [31:0]NLW_mem_inst_reg_0_1_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_inst_reg_0_1_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_inst_reg_0_1_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_inst_reg_0_1_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_inst_reg_0_1_RDADDRECC_UNCONNECTED;
  wire NLW_mem_inst_reg_0_10_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_inst_reg_0_10_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_inst_reg_0_10_DBITERR_UNCONNECTED;
  wire NLW_mem_inst_reg_0_10_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_inst_reg_0_10_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_inst_reg_0_10_SBITERR_UNCONNECTED;
  wire [31:1]NLW_mem_inst_reg_0_10_DOADO_UNCONNECTED;
  wire [31:0]NLW_mem_inst_reg_0_10_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_inst_reg_0_10_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_inst_reg_0_10_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_inst_reg_0_10_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_inst_reg_0_10_RDADDRECC_UNCONNECTED;
  wire NLW_mem_inst_reg_0_11_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_inst_reg_0_11_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_inst_reg_0_11_DBITERR_UNCONNECTED;
  wire NLW_mem_inst_reg_0_11_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_inst_reg_0_11_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_inst_reg_0_11_SBITERR_UNCONNECTED;
  wire [31:1]NLW_mem_inst_reg_0_11_DOADO_UNCONNECTED;
  wire [31:0]NLW_mem_inst_reg_0_11_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_inst_reg_0_11_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_inst_reg_0_11_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_inst_reg_0_11_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_inst_reg_0_11_RDADDRECC_UNCONNECTED;
  wire NLW_mem_inst_reg_0_12_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_inst_reg_0_12_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_inst_reg_0_12_DBITERR_UNCONNECTED;
  wire NLW_mem_inst_reg_0_12_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_inst_reg_0_12_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_inst_reg_0_12_SBITERR_UNCONNECTED;
  wire [31:1]NLW_mem_inst_reg_0_12_DOADO_UNCONNECTED;
  wire [31:0]NLW_mem_inst_reg_0_12_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_inst_reg_0_12_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_inst_reg_0_12_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_inst_reg_0_12_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_inst_reg_0_12_RDADDRECC_UNCONNECTED;
  wire NLW_mem_inst_reg_0_13_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_inst_reg_0_13_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_inst_reg_0_13_DBITERR_UNCONNECTED;
  wire NLW_mem_inst_reg_0_13_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_inst_reg_0_13_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_inst_reg_0_13_SBITERR_UNCONNECTED;
  wire [31:1]NLW_mem_inst_reg_0_13_DOADO_UNCONNECTED;
  wire [31:0]NLW_mem_inst_reg_0_13_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_inst_reg_0_13_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_inst_reg_0_13_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_inst_reg_0_13_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_inst_reg_0_13_RDADDRECC_UNCONNECTED;
  wire NLW_mem_inst_reg_0_14_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_inst_reg_0_14_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_inst_reg_0_14_DBITERR_UNCONNECTED;
  wire NLW_mem_inst_reg_0_14_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_inst_reg_0_14_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_inst_reg_0_14_SBITERR_UNCONNECTED;
  wire [31:1]NLW_mem_inst_reg_0_14_DOADO_UNCONNECTED;
  wire [31:0]NLW_mem_inst_reg_0_14_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_inst_reg_0_14_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_inst_reg_0_14_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_inst_reg_0_14_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_inst_reg_0_14_RDADDRECC_UNCONNECTED;
  wire NLW_mem_inst_reg_0_15_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_inst_reg_0_15_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_inst_reg_0_15_DBITERR_UNCONNECTED;
  wire NLW_mem_inst_reg_0_15_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_inst_reg_0_15_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_inst_reg_0_15_SBITERR_UNCONNECTED;
  wire [31:1]NLW_mem_inst_reg_0_15_DOADO_UNCONNECTED;
  wire [31:0]NLW_mem_inst_reg_0_15_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_inst_reg_0_15_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_inst_reg_0_15_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_inst_reg_0_15_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_inst_reg_0_15_RDADDRECC_UNCONNECTED;
  wire NLW_mem_inst_reg_0_16_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_inst_reg_0_16_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_inst_reg_0_16_DBITERR_UNCONNECTED;
  wire NLW_mem_inst_reg_0_16_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_inst_reg_0_16_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_inst_reg_0_16_SBITERR_UNCONNECTED;
  wire [31:1]NLW_mem_inst_reg_0_16_DOADO_UNCONNECTED;
  wire [31:0]NLW_mem_inst_reg_0_16_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_inst_reg_0_16_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_inst_reg_0_16_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_inst_reg_0_16_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_inst_reg_0_16_RDADDRECC_UNCONNECTED;
  wire NLW_mem_inst_reg_0_17_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_inst_reg_0_17_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_inst_reg_0_17_DBITERR_UNCONNECTED;
  wire NLW_mem_inst_reg_0_17_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_inst_reg_0_17_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_inst_reg_0_17_SBITERR_UNCONNECTED;
  wire [31:1]NLW_mem_inst_reg_0_17_DOADO_UNCONNECTED;
  wire [31:0]NLW_mem_inst_reg_0_17_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_inst_reg_0_17_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_inst_reg_0_17_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_inst_reg_0_17_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_inst_reg_0_17_RDADDRECC_UNCONNECTED;
  wire NLW_mem_inst_reg_0_18_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_inst_reg_0_18_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_inst_reg_0_18_DBITERR_UNCONNECTED;
  wire NLW_mem_inst_reg_0_18_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_inst_reg_0_18_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_inst_reg_0_18_SBITERR_UNCONNECTED;
  wire [31:1]NLW_mem_inst_reg_0_18_DOADO_UNCONNECTED;
  wire [31:0]NLW_mem_inst_reg_0_18_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_inst_reg_0_18_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_inst_reg_0_18_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_inst_reg_0_18_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_inst_reg_0_18_RDADDRECC_UNCONNECTED;
  wire NLW_mem_inst_reg_0_19_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_inst_reg_0_19_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_inst_reg_0_19_DBITERR_UNCONNECTED;
  wire NLW_mem_inst_reg_0_19_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_inst_reg_0_19_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_inst_reg_0_19_SBITERR_UNCONNECTED;
  wire [31:1]NLW_mem_inst_reg_0_19_DOADO_UNCONNECTED;
  wire [31:0]NLW_mem_inst_reg_0_19_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_inst_reg_0_19_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_inst_reg_0_19_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_inst_reg_0_19_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_inst_reg_0_19_RDADDRECC_UNCONNECTED;
  wire NLW_mem_inst_reg_0_2_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_inst_reg_0_2_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_inst_reg_0_2_DBITERR_UNCONNECTED;
  wire NLW_mem_inst_reg_0_2_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_inst_reg_0_2_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_inst_reg_0_2_SBITERR_UNCONNECTED;
  wire [31:1]NLW_mem_inst_reg_0_2_DOADO_UNCONNECTED;
  wire [31:0]NLW_mem_inst_reg_0_2_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_inst_reg_0_2_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_inst_reg_0_2_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_inst_reg_0_2_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_inst_reg_0_2_RDADDRECC_UNCONNECTED;
  wire NLW_mem_inst_reg_0_20_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_inst_reg_0_20_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_inst_reg_0_20_DBITERR_UNCONNECTED;
  wire NLW_mem_inst_reg_0_20_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_inst_reg_0_20_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_inst_reg_0_20_SBITERR_UNCONNECTED;
  wire [31:1]NLW_mem_inst_reg_0_20_DOADO_UNCONNECTED;
  wire [31:0]NLW_mem_inst_reg_0_20_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_inst_reg_0_20_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_inst_reg_0_20_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_inst_reg_0_20_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_inst_reg_0_20_RDADDRECC_UNCONNECTED;
  wire NLW_mem_inst_reg_0_21_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_inst_reg_0_21_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_inst_reg_0_21_DBITERR_UNCONNECTED;
  wire NLW_mem_inst_reg_0_21_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_inst_reg_0_21_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_inst_reg_0_21_SBITERR_UNCONNECTED;
  wire [31:1]NLW_mem_inst_reg_0_21_DOADO_UNCONNECTED;
  wire [31:0]NLW_mem_inst_reg_0_21_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_inst_reg_0_21_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_inst_reg_0_21_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_inst_reg_0_21_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_inst_reg_0_21_RDADDRECC_UNCONNECTED;
  wire NLW_mem_inst_reg_0_22_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_inst_reg_0_22_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_inst_reg_0_22_DBITERR_UNCONNECTED;
  wire NLW_mem_inst_reg_0_22_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_inst_reg_0_22_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_inst_reg_0_22_SBITERR_UNCONNECTED;
  wire [31:1]NLW_mem_inst_reg_0_22_DOADO_UNCONNECTED;
  wire [31:0]NLW_mem_inst_reg_0_22_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_inst_reg_0_22_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_inst_reg_0_22_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_inst_reg_0_22_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_inst_reg_0_22_RDADDRECC_UNCONNECTED;
  wire NLW_mem_inst_reg_0_23_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_inst_reg_0_23_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_inst_reg_0_23_DBITERR_UNCONNECTED;
  wire NLW_mem_inst_reg_0_23_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_inst_reg_0_23_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_inst_reg_0_23_SBITERR_UNCONNECTED;
  wire [31:1]NLW_mem_inst_reg_0_23_DOADO_UNCONNECTED;
  wire [31:0]NLW_mem_inst_reg_0_23_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_inst_reg_0_23_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_inst_reg_0_23_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_inst_reg_0_23_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_inst_reg_0_23_RDADDRECC_UNCONNECTED;
  wire NLW_mem_inst_reg_0_24_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_inst_reg_0_24_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_inst_reg_0_24_DBITERR_UNCONNECTED;
  wire NLW_mem_inst_reg_0_24_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_inst_reg_0_24_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_inst_reg_0_24_SBITERR_UNCONNECTED;
  wire [31:1]NLW_mem_inst_reg_0_24_DOADO_UNCONNECTED;
  wire [31:0]NLW_mem_inst_reg_0_24_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_inst_reg_0_24_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_inst_reg_0_24_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_inst_reg_0_24_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_inst_reg_0_24_RDADDRECC_UNCONNECTED;
  wire NLW_mem_inst_reg_0_25_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_inst_reg_0_25_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_inst_reg_0_25_DBITERR_UNCONNECTED;
  wire NLW_mem_inst_reg_0_25_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_inst_reg_0_25_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_inst_reg_0_25_SBITERR_UNCONNECTED;
  wire [31:1]NLW_mem_inst_reg_0_25_DOADO_UNCONNECTED;
  wire [31:0]NLW_mem_inst_reg_0_25_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_inst_reg_0_25_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_inst_reg_0_25_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_inst_reg_0_25_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_inst_reg_0_25_RDADDRECC_UNCONNECTED;
  wire NLW_mem_inst_reg_0_26_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_inst_reg_0_26_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_inst_reg_0_26_DBITERR_UNCONNECTED;
  wire NLW_mem_inst_reg_0_26_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_inst_reg_0_26_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_inst_reg_0_26_SBITERR_UNCONNECTED;
  wire [31:1]NLW_mem_inst_reg_0_26_DOADO_UNCONNECTED;
  wire [31:0]NLW_mem_inst_reg_0_26_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_inst_reg_0_26_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_inst_reg_0_26_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_inst_reg_0_26_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_inst_reg_0_26_RDADDRECC_UNCONNECTED;
  wire NLW_mem_inst_reg_0_27_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_inst_reg_0_27_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_inst_reg_0_27_DBITERR_UNCONNECTED;
  wire NLW_mem_inst_reg_0_27_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_inst_reg_0_27_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_inst_reg_0_27_SBITERR_UNCONNECTED;
  wire [31:1]NLW_mem_inst_reg_0_27_DOADO_UNCONNECTED;
  wire [31:0]NLW_mem_inst_reg_0_27_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_inst_reg_0_27_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_inst_reg_0_27_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_inst_reg_0_27_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_inst_reg_0_27_RDADDRECC_UNCONNECTED;
  wire NLW_mem_inst_reg_0_28_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_inst_reg_0_28_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_inst_reg_0_28_DBITERR_UNCONNECTED;
  wire NLW_mem_inst_reg_0_28_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_inst_reg_0_28_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_inst_reg_0_28_SBITERR_UNCONNECTED;
  wire [31:1]NLW_mem_inst_reg_0_28_DOADO_UNCONNECTED;
  wire [31:0]NLW_mem_inst_reg_0_28_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_inst_reg_0_28_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_inst_reg_0_28_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_inst_reg_0_28_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_inst_reg_0_28_RDADDRECC_UNCONNECTED;
  wire NLW_mem_inst_reg_0_29_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_inst_reg_0_29_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_inst_reg_0_29_DBITERR_UNCONNECTED;
  wire NLW_mem_inst_reg_0_29_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_inst_reg_0_29_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_inst_reg_0_29_SBITERR_UNCONNECTED;
  wire [31:1]NLW_mem_inst_reg_0_29_DOADO_UNCONNECTED;
  wire [31:0]NLW_mem_inst_reg_0_29_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_inst_reg_0_29_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_inst_reg_0_29_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_inst_reg_0_29_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_inst_reg_0_29_RDADDRECC_UNCONNECTED;
  wire NLW_mem_inst_reg_0_3_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_inst_reg_0_3_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_inst_reg_0_3_DBITERR_UNCONNECTED;
  wire NLW_mem_inst_reg_0_3_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_inst_reg_0_3_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_inst_reg_0_3_SBITERR_UNCONNECTED;
  wire [31:1]NLW_mem_inst_reg_0_3_DOADO_UNCONNECTED;
  wire [31:0]NLW_mem_inst_reg_0_3_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_inst_reg_0_3_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_inst_reg_0_3_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_inst_reg_0_3_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_inst_reg_0_3_RDADDRECC_UNCONNECTED;
  wire NLW_mem_inst_reg_0_30_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_inst_reg_0_30_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_inst_reg_0_30_DBITERR_UNCONNECTED;
  wire NLW_mem_inst_reg_0_30_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_inst_reg_0_30_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_inst_reg_0_30_SBITERR_UNCONNECTED;
  wire [31:1]NLW_mem_inst_reg_0_30_DOADO_UNCONNECTED;
  wire [31:0]NLW_mem_inst_reg_0_30_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_inst_reg_0_30_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_inst_reg_0_30_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_inst_reg_0_30_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_inst_reg_0_30_RDADDRECC_UNCONNECTED;
  wire NLW_mem_inst_reg_0_31_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_inst_reg_0_31_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_inst_reg_0_31_DBITERR_UNCONNECTED;
  wire NLW_mem_inst_reg_0_31_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_inst_reg_0_31_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_inst_reg_0_31_SBITERR_UNCONNECTED;
  wire [31:1]NLW_mem_inst_reg_0_31_DOADO_UNCONNECTED;
  wire [31:0]NLW_mem_inst_reg_0_31_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_inst_reg_0_31_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_inst_reg_0_31_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_inst_reg_0_31_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_inst_reg_0_31_RDADDRECC_UNCONNECTED;
  wire NLW_mem_inst_reg_0_4_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_inst_reg_0_4_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_inst_reg_0_4_DBITERR_UNCONNECTED;
  wire NLW_mem_inst_reg_0_4_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_inst_reg_0_4_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_inst_reg_0_4_SBITERR_UNCONNECTED;
  wire [31:1]NLW_mem_inst_reg_0_4_DOADO_UNCONNECTED;
  wire [31:0]NLW_mem_inst_reg_0_4_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_inst_reg_0_4_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_inst_reg_0_4_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_inst_reg_0_4_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_inst_reg_0_4_RDADDRECC_UNCONNECTED;
  wire NLW_mem_inst_reg_0_5_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_inst_reg_0_5_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_inst_reg_0_5_DBITERR_UNCONNECTED;
  wire NLW_mem_inst_reg_0_5_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_inst_reg_0_5_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_inst_reg_0_5_SBITERR_UNCONNECTED;
  wire [31:1]NLW_mem_inst_reg_0_5_DOADO_UNCONNECTED;
  wire [31:0]NLW_mem_inst_reg_0_5_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_inst_reg_0_5_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_inst_reg_0_5_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_inst_reg_0_5_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_inst_reg_0_5_RDADDRECC_UNCONNECTED;
  wire NLW_mem_inst_reg_0_6_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_inst_reg_0_6_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_inst_reg_0_6_DBITERR_UNCONNECTED;
  wire NLW_mem_inst_reg_0_6_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_inst_reg_0_6_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_inst_reg_0_6_SBITERR_UNCONNECTED;
  wire [31:1]NLW_mem_inst_reg_0_6_DOADO_UNCONNECTED;
  wire [31:0]NLW_mem_inst_reg_0_6_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_inst_reg_0_6_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_inst_reg_0_6_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_inst_reg_0_6_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_inst_reg_0_6_RDADDRECC_UNCONNECTED;
  wire NLW_mem_inst_reg_0_7_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_inst_reg_0_7_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_inst_reg_0_7_DBITERR_UNCONNECTED;
  wire NLW_mem_inst_reg_0_7_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_inst_reg_0_7_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_inst_reg_0_7_SBITERR_UNCONNECTED;
  wire [31:1]NLW_mem_inst_reg_0_7_DOADO_UNCONNECTED;
  wire [31:0]NLW_mem_inst_reg_0_7_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_inst_reg_0_7_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_inst_reg_0_7_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_inst_reg_0_7_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_inst_reg_0_7_RDADDRECC_UNCONNECTED;
  wire NLW_mem_inst_reg_0_8_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_inst_reg_0_8_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_inst_reg_0_8_DBITERR_UNCONNECTED;
  wire NLW_mem_inst_reg_0_8_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_inst_reg_0_8_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_inst_reg_0_8_SBITERR_UNCONNECTED;
  wire [31:1]NLW_mem_inst_reg_0_8_DOADO_UNCONNECTED;
  wire [31:0]NLW_mem_inst_reg_0_8_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_inst_reg_0_8_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_inst_reg_0_8_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_inst_reg_0_8_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_inst_reg_0_8_RDADDRECC_UNCONNECTED;
  wire NLW_mem_inst_reg_0_9_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_inst_reg_0_9_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_inst_reg_0_9_DBITERR_UNCONNECTED;
  wire NLW_mem_inst_reg_0_9_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_inst_reg_0_9_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_inst_reg_0_9_SBITERR_UNCONNECTED;
  wire [31:1]NLW_mem_inst_reg_0_9_DOADO_UNCONNECTED;
  wire [31:0]NLW_mem_inst_reg_0_9_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_inst_reg_0_9_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_inst_reg_0_9_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_inst_reg_0_9_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_inst_reg_0_9_RDADDRECC_UNCONNECTED;

  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "inst/bram_a/mem_inst_reg_0_0" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "0" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(0)) 
    mem_inst_reg_0_0
       (.ADDRARDADDR({1'b1,P}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(NLW_mem_inst_reg_0_0_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_inst_reg_0_0_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk),
        .CLKBWRCLK(1'b0),
        .DBITERR(NLW_mem_inst_reg_0_0_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,in_axis_tdata[0]}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1,1'b1,1'b1}),
        .DOADO({NLW_mem_inst_reg_0_0_DOADO_UNCONNECTED[31:1],r_data_int[0]}),
        .DOBDO(NLW_mem_inst_reg_0_0_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_mem_inst_reg_0_0_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_inst_reg_0_0_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_inst_reg_0_0_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .INJECTDBITERR(NLW_mem_inst_reg_0_0_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_inst_reg_0_0_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_inst_reg_0_0_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_inst_reg_0_0_SBITERR_UNCONNECTED),
        .WEA({mem_inst_reg_0_0_0,mem_inst_reg_0_0_0,mem_inst_reg_0_0_0,mem_inst_reg_0_0_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "inst/bram_a/mem_inst_reg_0_1" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "1" *) 
  (* ram_slice_end = "1" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(0)) 
    mem_inst_reg_0_1
       (.ADDRARDADDR({1'b1,P}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(NLW_mem_inst_reg_0_1_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_inst_reg_0_1_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk),
        .CLKBWRCLK(1'b0),
        .DBITERR(NLW_mem_inst_reg_0_1_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,in_axis_tdata[1]}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1,1'b1,1'b1}),
        .DOADO({NLW_mem_inst_reg_0_1_DOADO_UNCONNECTED[31:1],r_data_int[1]}),
        .DOBDO(NLW_mem_inst_reg_0_1_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_mem_inst_reg_0_1_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_inst_reg_0_1_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_inst_reg_0_1_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .INJECTDBITERR(NLW_mem_inst_reg_0_1_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_inst_reg_0_1_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_inst_reg_0_1_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_inst_reg_0_1_SBITERR_UNCONNECTED),
        .WEA({mem_inst_reg_0_1_0,mem_inst_reg_0_1_0,mem_inst_reg_0_1_0,mem_inst_reg_0_1_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "inst/bram_a/mem_inst_reg_0_10" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "10" *) 
  (* ram_slice_end = "10" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(0)) 
    mem_inst_reg_0_10
       (.ADDRARDADDR({1'b1,P}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(NLW_mem_inst_reg_0_10_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_inst_reg_0_10_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk),
        .CLKBWRCLK(1'b0),
        .DBITERR(NLW_mem_inst_reg_0_10_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,in_axis_tdata[10]}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1,1'b1,1'b1}),
        .DOADO({NLW_mem_inst_reg_0_10_DOADO_UNCONNECTED[31:1],r_data_int[10]}),
        .DOBDO(NLW_mem_inst_reg_0_10_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_mem_inst_reg_0_10_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_inst_reg_0_10_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_inst_reg_0_10_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .INJECTDBITERR(NLW_mem_inst_reg_0_10_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_inst_reg_0_10_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_inst_reg_0_10_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_inst_reg_0_10_SBITERR_UNCONNECTED),
        .WEA({mem_inst_reg_0_10_0,mem_inst_reg_0_10_0,mem_inst_reg_0_10_0,mem_inst_reg_0_10_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "inst/bram_a/mem_inst_reg_0_11" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "11" *) 
  (* ram_slice_end = "11" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(0)) 
    mem_inst_reg_0_11
       (.ADDRARDADDR({1'b1,P}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(NLW_mem_inst_reg_0_11_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_inst_reg_0_11_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk),
        .CLKBWRCLK(1'b0),
        .DBITERR(NLW_mem_inst_reg_0_11_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,in_axis_tdata[11]}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1,1'b1,1'b1}),
        .DOADO({NLW_mem_inst_reg_0_11_DOADO_UNCONNECTED[31:1],r_data_int[11]}),
        .DOBDO(NLW_mem_inst_reg_0_11_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_mem_inst_reg_0_11_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_inst_reg_0_11_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_inst_reg_0_11_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .INJECTDBITERR(NLW_mem_inst_reg_0_11_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_inst_reg_0_11_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_inst_reg_0_11_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_inst_reg_0_11_SBITERR_UNCONNECTED),
        .WEA({mem_inst_reg_0_11_0,mem_inst_reg_0_11_0,mem_inst_reg_0_11_0,mem_inst_reg_0_11_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "inst/bram_a/mem_inst_reg_0_12" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "12" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(0)) 
    mem_inst_reg_0_12
       (.ADDRARDADDR({1'b1,P}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(NLW_mem_inst_reg_0_12_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_inst_reg_0_12_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk),
        .CLKBWRCLK(1'b0),
        .DBITERR(NLW_mem_inst_reg_0_12_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,in_axis_tdata[12]}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1,1'b1,1'b1}),
        .DOADO({NLW_mem_inst_reg_0_12_DOADO_UNCONNECTED[31:1],r_data_int[12]}),
        .DOBDO(NLW_mem_inst_reg_0_12_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_mem_inst_reg_0_12_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_inst_reg_0_12_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_inst_reg_0_12_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .INJECTDBITERR(NLW_mem_inst_reg_0_12_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_inst_reg_0_12_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_inst_reg_0_12_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_inst_reg_0_12_SBITERR_UNCONNECTED),
        .WEA({mem_inst_reg_0_12_0,mem_inst_reg_0_12_0,mem_inst_reg_0_12_0,mem_inst_reg_0_12_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "inst/bram_a/mem_inst_reg_0_13" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "13" *) 
  (* ram_slice_end = "13" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(0)) 
    mem_inst_reg_0_13
       (.ADDRARDADDR({1'b1,P}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(NLW_mem_inst_reg_0_13_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_inst_reg_0_13_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk),
        .CLKBWRCLK(1'b0),
        .DBITERR(NLW_mem_inst_reg_0_13_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,in_axis_tdata[13]}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1,1'b1,1'b1}),
        .DOADO({NLW_mem_inst_reg_0_13_DOADO_UNCONNECTED[31:1],r_data_int[13]}),
        .DOBDO(NLW_mem_inst_reg_0_13_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_mem_inst_reg_0_13_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_inst_reg_0_13_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_inst_reg_0_13_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .INJECTDBITERR(NLW_mem_inst_reg_0_13_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_inst_reg_0_13_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_inst_reg_0_13_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_inst_reg_0_13_SBITERR_UNCONNECTED),
        .WEA({mem_inst_reg_0_13_0,mem_inst_reg_0_13_0,mem_inst_reg_0_13_0,mem_inst_reg_0_13_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "inst/bram_a/mem_inst_reg_0_14" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "14" *) 
  (* ram_slice_end = "14" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(0)) 
    mem_inst_reg_0_14
       (.ADDRARDADDR({1'b1,P}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(NLW_mem_inst_reg_0_14_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_inst_reg_0_14_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk),
        .CLKBWRCLK(1'b0),
        .DBITERR(NLW_mem_inst_reg_0_14_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,in_axis_tdata[14]}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1,1'b1,1'b1}),
        .DOADO({NLW_mem_inst_reg_0_14_DOADO_UNCONNECTED[31:1],r_data_int[14]}),
        .DOBDO(NLW_mem_inst_reg_0_14_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_mem_inst_reg_0_14_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_inst_reg_0_14_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_inst_reg_0_14_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .INJECTDBITERR(NLW_mem_inst_reg_0_14_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_inst_reg_0_14_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_inst_reg_0_14_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_inst_reg_0_14_SBITERR_UNCONNECTED),
        .WEA({mem_inst_reg_0_14_0,mem_inst_reg_0_14_0,mem_inst_reg_0_14_0,mem_inst_reg_0_14_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "inst/bram_a/mem_inst_reg_0_15" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "15" *) 
  (* ram_slice_end = "15" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(0)) 
    mem_inst_reg_0_15
       (.ADDRARDADDR({1'b1,P}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(NLW_mem_inst_reg_0_15_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_inst_reg_0_15_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk),
        .CLKBWRCLK(1'b0),
        .DBITERR(NLW_mem_inst_reg_0_15_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,in_axis_tdata[15]}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1,1'b1,1'b1}),
        .DOADO({NLW_mem_inst_reg_0_15_DOADO_UNCONNECTED[31:1],r_data_int[15]}),
        .DOBDO(NLW_mem_inst_reg_0_15_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_mem_inst_reg_0_15_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_inst_reg_0_15_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_inst_reg_0_15_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .INJECTDBITERR(NLW_mem_inst_reg_0_15_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_inst_reg_0_15_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_inst_reg_0_15_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_inst_reg_0_15_SBITERR_UNCONNECTED),
        .WEA({mem_inst_reg_0_15_0,mem_inst_reg_0_15_0,mem_inst_reg_0_15_0,mem_inst_reg_0_15_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "inst/bram_a/mem_inst_reg_0_16" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "16" *) 
  (* ram_slice_end = "16" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(0)) 
    mem_inst_reg_0_16
       (.ADDRARDADDR({1'b1,P}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(NLW_mem_inst_reg_0_16_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_inst_reg_0_16_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk),
        .CLKBWRCLK(1'b0),
        .DBITERR(NLW_mem_inst_reg_0_16_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,in_axis_tdata[16]}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1,1'b1,1'b1}),
        .DOADO({NLW_mem_inst_reg_0_16_DOADO_UNCONNECTED[31:1],r_data_int[16]}),
        .DOBDO(NLW_mem_inst_reg_0_16_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_mem_inst_reg_0_16_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_inst_reg_0_16_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_inst_reg_0_16_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .INJECTDBITERR(NLW_mem_inst_reg_0_16_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_inst_reg_0_16_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_inst_reg_0_16_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_inst_reg_0_16_SBITERR_UNCONNECTED),
        .WEA({mem_inst_reg_0_16_0,mem_inst_reg_0_16_0,mem_inst_reg_0_16_0,mem_inst_reg_0_16_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "inst/bram_a/mem_inst_reg_0_17" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "17" *) 
  (* ram_slice_end = "17" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(0)) 
    mem_inst_reg_0_17
       (.ADDRARDADDR({1'b1,P}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(NLW_mem_inst_reg_0_17_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_inst_reg_0_17_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk),
        .CLKBWRCLK(1'b0),
        .DBITERR(NLW_mem_inst_reg_0_17_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,in_axis_tdata[17]}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1,1'b1,1'b1}),
        .DOADO({NLW_mem_inst_reg_0_17_DOADO_UNCONNECTED[31:1],r_data_int[17]}),
        .DOBDO(NLW_mem_inst_reg_0_17_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_mem_inst_reg_0_17_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_inst_reg_0_17_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_inst_reg_0_17_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .INJECTDBITERR(NLW_mem_inst_reg_0_17_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_inst_reg_0_17_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_inst_reg_0_17_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_inst_reg_0_17_SBITERR_UNCONNECTED),
        .WEA({mem_inst_reg_0_17_0,mem_inst_reg_0_17_0,mem_inst_reg_0_17_0,mem_inst_reg_0_17_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "inst/bram_a/mem_inst_reg_0_18" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "18" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(0)) 
    mem_inst_reg_0_18
       (.ADDRARDADDR({1'b1,P}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(NLW_mem_inst_reg_0_18_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_inst_reg_0_18_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk),
        .CLKBWRCLK(1'b0),
        .DBITERR(NLW_mem_inst_reg_0_18_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,in_axis_tdata[18]}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1,1'b1,1'b1}),
        .DOADO({NLW_mem_inst_reg_0_18_DOADO_UNCONNECTED[31:1],r_data_int[18]}),
        .DOBDO(NLW_mem_inst_reg_0_18_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_mem_inst_reg_0_18_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_inst_reg_0_18_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_inst_reg_0_18_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .INJECTDBITERR(NLW_mem_inst_reg_0_18_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_inst_reg_0_18_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_inst_reg_0_18_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_inst_reg_0_18_SBITERR_UNCONNECTED),
        .WEA({mem_inst_reg_0_18_0,mem_inst_reg_0_18_0,mem_inst_reg_0_18_0,mem_inst_reg_0_18_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "inst/bram_a/mem_inst_reg_0_19" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "19" *) 
  (* ram_slice_end = "19" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(0)) 
    mem_inst_reg_0_19
       (.ADDRARDADDR({1'b1,P}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(NLW_mem_inst_reg_0_19_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_inst_reg_0_19_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk),
        .CLKBWRCLK(1'b0),
        .DBITERR(NLW_mem_inst_reg_0_19_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,in_axis_tdata[19]}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1,1'b1,1'b1}),
        .DOADO({NLW_mem_inst_reg_0_19_DOADO_UNCONNECTED[31:1],r_data_int[19]}),
        .DOBDO(NLW_mem_inst_reg_0_19_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_mem_inst_reg_0_19_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_inst_reg_0_19_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_inst_reg_0_19_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .INJECTDBITERR(NLW_mem_inst_reg_0_19_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_inst_reg_0_19_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_inst_reg_0_19_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_inst_reg_0_19_SBITERR_UNCONNECTED),
        .WEA({mem_inst_reg_0_19_0,mem_inst_reg_0_19_0,mem_inst_reg_0_19_0,mem_inst_reg_0_19_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "inst/bram_a/mem_inst_reg_0_2" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "2" *) 
  (* ram_slice_end = "2" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(0)) 
    mem_inst_reg_0_2
       (.ADDRARDADDR({1'b1,P}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(NLW_mem_inst_reg_0_2_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_inst_reg_0_2_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk),
        .CLKBWRCLK(1'b0),
        .DBITERR(NLW_mem_inst_reg_0_2_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,in_axis_tdata[2]}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1,1'b1,1'b1}),
        .DOADO({NLW_mem_inst_reg_0_2_DOADO_UNCONNECTED[31:1],r_data_int[2]}),
        .DOBDO(NLW_mem_inst_reg_0_2_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_mem_inst_reg_0_2_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_inst_reg_0_2_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_inst_reg_0_2_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .INJECTDBITERR(NLW_mem_inst_reg_0_2_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_inst_reg_0_2_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_inst_reg_0_2_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_inst_reg_0_2_SBITERR_UNCONNECTED),
        .WEA({mem_inst_reg_0_2_0,mem_inst_reg_0_2_0,mem_inst_reg_0_2_0,mem_inst_reg_0_2_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "inst/bram_a/mem_inst_reg_0_20" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "20" *) 
  (* ram_slice_end = "20" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(0)) 
    mem_inst_reg_0_20
       (.ADDRARDADDR({1'b1,P}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(NLW_mem_inst_reg_0_20_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_inst_reg_0_20_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk),
        .CLKBWRCLK(1'b0),
        .DBITERR(NLW_mem_inst_reg_0_20_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,in_axis_tdata[20]}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1,1'b1,1'b1}),
        .DOADO({NLW_mem_inst_reg_0_20_DOADO_UNCONNECTED[31:1],r_data_int[20]}),
        .DOBDO(NLW_mem_inst_reg_0_20_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_mem_inst_reg_0_20_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_inst_reg_0_20_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_inst_reg_0_20_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .INJECTDBITERR(NLW_mem_inst_reg_0_20_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_inst_reg_0_20_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_inst_reg_0_20_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_inst_reg_0_20_SBITERR_UNCONNECTED),
        .WEA({mem_inst_reg_0_20_0,mem_inst_reg_0_20_0,mem_inst_reg_0_20_0,mem_inst_reg_0_20_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "inst/bram_a/mem_inst_reg_0_21" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "21" *) 
  (* ram_slice_end = "21" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(0)) 
    mem_inst_reg_0_21
       (.ADDRARDADDR({1'b1,P}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(NLW_mem_inst_reg_0_21_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_inst_reg_0_21_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk),
        .CLKBWRCLK(1'b0),
        .DBITERR(NLW_mem_inst_reg_0_21_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,in_axis_tdata[21]}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1,1'b1,1'b1}),
        .DOADO({NLW_mem_inst_reg_0_21_DOADO_UNCONNECTED[31:1],r_data_int[21]}),
        .DOBDO(NLW_mem_inst_reg_0_21_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_mem_inst_reg_0_21_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_inst_reg_0_21_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_inst_reg_0_21_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .INJECTDBITERR(NLW_mem_inst_reg_0_21_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_inst_reg_0_21_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_inst_reg_0_21_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_inst_reg_0_21_SBITERR_UNCONNECTED),
        .WEA({mem_inst_reg_0_21_0,mem_inst_reg_0_21_0,mem_inst_reg_0_21_0,mem_inst_reg_0_21_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "inst/bram_a/mem_inst_reg_0_22" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "22" *) 
  (* ram_slice_end = "22" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(0)) 
    mem_inst_reg_0_22
       (.ADDRARDADDR({1'b1,P}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(NLW_mem_inst_reg_0_22_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_inst_reg_0_22_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk),
        .CLKBWRCLK(1'b0),
        .DBITERR(NLW_mem_inst_reg_0_22_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,in_axis_tdata[22]}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1,1'b1,1'b1}),
        .DOADO({NLW_mem_inst_reg_0_22_DOADO_UNCONNECTED[31:1],r_data_int[22]}),
        .DOBDO(NLW_mem_inst_reg_0_22_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_mem_inst_reg_0_22_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_inst_reg_0_22_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_inst_reg_0_22_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .INJECTDBITERR(NLW_mem_inst_reg_0_22_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_inst_reg_0_22_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_inst_reg_0_22_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_inst_reg_0_22_SBITERR_UNCONNECTED),
        .WEA({mem_inst_reg_0_22_0,mem_inst_reg_0_22_0,mem_inst_reg_0_22_0,mem_inst_reg_0_22_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "inst/bram_a/mem_inst_reg_0_23" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "23" *) 
  (* ram_slice_end = "23" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(0)) 
    mem_inst_reg_0_23
       (.ADDRARDADDR({1'b1,P}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(NLW_mem_inst_reg_0_23_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_inst_reg_0_23_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk),
        .CLKBWRCLK(1'b0),
        .DBITERR(NLW_mem_inst_reg_0_23_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,in_axis_tdata[23]}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1,1'b1,1'b1}),
        .DOADO({NLW_mem_inst_reg_0_23_DOADO_UNCONNECTED[31:1],r_data_int[23]}),
        .DOBDO(NLW_mem_inst_reg_0_23_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_mem_inst_reg_0_23_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_inst_reg_0_23_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_inst_reg_0_23_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .INJECTDBITERR(NLW_mem_inst_reg_0_23_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_inst_reg_0_23_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_inst_reg_0_23_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_inst_reg_0_23_SBITERR_UNCONNECTED),
        .WEA({mem_inst_reg_0_23_0,mem_inst_reg_0_23_0,mem_inst_reg_0_23_0,mem_inst_reg_0_23_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "inst/bram_a/mem_inst_reg_0_24" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "24" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(0)) 
    mem_inst_reg_0_24
       (.ADDRARDADDR({1'b1,P}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(NLW_mem_inst_reg_0_24_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_inst_reg_0_24_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk),
        .CLKBWRCLK(1'b0),
        .DBITERR(NLW_mem_inst_reg_0_24_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,in_axis_tdata[24]}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1,1'b1,1'b1}),
        .DOADO({NLW_mem_inst_reg_0_24_DOADO_UNCONNECTED[31:1],r_data_int[24]}),
        .DOBDO(NLW_mem_inst_reg_0_24_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_mem_inst_reg_0_24_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_inst_reg_0_24_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_inst_reg_0_24_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .INJECTDBITERR(NLW_mem_inst_reg_0_24_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_inst_reg_0_24_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_inst_reg_0_24_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_inst_reg_0_24_SBITERR_UNCONNECTED),
        .WEA({mem_inst_reg_0_24_0,mem_inst_reg_0_24_0,mem_inst_reg_0_24_0,mem_inst_reg_0_24_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "inst/bram_a/mem_inst_reg_0_25" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "25" *) 
  (* ram_slice_end = "25" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(0)) 
    mem_inst_reg_0_25
       (.ADDRARDADDR({1'b1,P}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(NLW_mem_inst_reg_0_25_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_inst_reg_0_25_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk),
        .CLKBWRCLK(1'b0),
        .DBITERR(NLW_mem_inst_reg_0_25_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,in_axis_tdata[25]}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1,1'b1,1'b1}),
        .DOADO({NLW_mem_inst_reg_0_25_DOADO_UNCONNECTED[31:1],r_data_int[25]}),
        .DOBDO(NLW_mem_inst_reg_0_25_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_mem_inst_reg_0_25_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_inst_reg_0_25_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_inst_reg_0_25_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .INJECTDBITERR(NLW_mem_inst_reg_0_25_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_inst_reg_0_25_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_inst_reg_0_25_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_inst_reg_0_25_SBITERR_UNCONNECTED),
        .WEA({mem_inst_reg_0_25_0,mem_inst_reg_0_25_0,mem_inst_reg_0_25_0,mem_inst_reg_0_25_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "inst/bram_a/mem_inst_reg_0_26" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "26" *) 
  (* ram_slice_end = "26" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(0)) 
    mem_inst_reg_0_26
       (.ADDRARDADDR({1'b1,P}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(NLW_mem_inst_reg_0_26_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_inst_reg_0_26_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk),
        .CLKBWRCLK(1'b0),
        .DBITERR(NLW_mem_inst_reg_0_26_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,in_axis_tdata[26]}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1,1'b1,1'b1}),
        .DOADO({NLW_mem_inst_reg_0_26_DOADO_UNCONNECTED[31:1],r_data_int[26]}),
        .DOBDO(NLW_mem_inst_reg_0_26_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_mem_inst_reg_0_26_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_inst_reg_0_26_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_inst_reg_0_26_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .INJECTDBITERR(NLW_mem_inst_reg_0_26_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_inst_reg_0_26_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_inst_reg_0_26_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_inst_reg_0_26_SBITERR_UNCONNECTED),
        .WEA({mem_inst_reg_0_26_0,mem_inst_reg_0_26_0,mem_inst_reg_0_26_0,mem_inst_reg_0_26_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "inst/bram_a/mem_inst_reg_0_27" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "27" *) 
  (* ram_slice_end = "27" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(0)) 
    mem_inst_reg_0_27
       (.ADDRARDADDR({1'b1,P}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(NLW_mem_inst_reg_0_27_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_inst_reg_0_27_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk),
        .CLKBWRCLK(1'b0),
        .DBITERR(NLW_mem_inst_reg_0_27_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,in_axis_tdata[27]}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1,1'b1,1'b1}),
        .DOADO({NLW_mem_inst_reg_0_27_DOADO_UNCONNECTED[31:1],r_data_int[27]}),
        .DOBDO(NLW_mem_inst_reg_0_27_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_mem_inst_reg_0_27_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_inst_reg_0_27_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_inst_reg_0_27_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .INJECTDBITERR(NLW_mem_inst_reg_0_27_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_inst_reg_0_27_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_inst_reg_0_27_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_inst_reg_0_27_SBITERR_UNCONNECTED),
        .WEA({mem_inst_reg_0_27_0,mem_inst_reg_0_27_0,mem_inst_reg_0_27_0,mem_inst_reg_0_27_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "inst/bram_a/mem_inst_reg_0_28" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "28" *) 
  (* ram_slice_end = "28" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(0)) 
    mem_inst_reg_0_28
       (.ADDRARDADDR({1'b1,P}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(NLW_mem_inst_reg_0_28_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_inst_reg_0_28_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk),
        .CLKBWRCLK(1'b0),
        .DBITERR(NLW_mem_inst_reg_0_28_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,in_axis_tdata[28]}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1,1'b1,1'b1}),
        .DOADO({NLW_mem_inst_reg_0_28_DOADO_UNCONNECTED[31:1],r_data_int[28]}),
        .DOBDO(NLW_mem_inst_reg_0_28_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_mem_inst_reg_0_28_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_inst_reg_0_28_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_inst_reg_0_28_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .INJECTDBITERR(NLW_mem_inst_reg_0_28_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_inst_reg_0_28_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_inst_reg_0_28_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_inst_reg_0_28_SBITERR_UNCONNECTED),
        .WEA({mem_inst_reg_0_28_0,mem_inst_reg_0_28_0,mem_inst_reg_0_28_0,mem_inst_reg_0_28_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "inst/bram_a/mem_inst_reg_0_29" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "29" *) 
  (* ram_slice_end = "29" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(0)) 
    mem_inst_reg_0_29
       (.ADDRARDADDR({1'b1,P}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(NLW_mem_inst_reg_0_29_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_inst_reg_0_29_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk),
        .CLKBWRCLK(1'b0),
        .DBITERR(NLW_mem_inst_reg_0_29_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,in_axis_tdata[29]}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1,1'b1,1'b1}),
        .DOADO({NLW_mem_inst_reg_0_29_DOADO_UNCONNECTED[31:1],r_data_int[29]}),
        .DOBDO(NLW_mem_inst_reg_0_29_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_mem_inst_reg_0_29_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_inst_reg_0_29_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_inst_reg_0_29_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .INJECTDBITERR(NLW_mem_inst_reg_0_29_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_inst_reg_0_29_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_inst_reg_0_29_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_inst_reg_0_29_SBITERR_UNCONNECTED),
        .WEA({mem_inst_reg_0_29_0,mem_inst_reg_0_29_0,mem_inst_reg_0_29_0,mem_inst_reg_0_29_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "inst/bram_a/mem_inst_reg_0_3" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "3" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(0)) 
    mem_inst_reg_0_3
       (.ADDRARDADDR({1'b1,P}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(NLW_mem_inst_reg_0_3_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_inst_reg_0_3_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk),
        .CLKBWRCLK(1'b0),
        .DBITERR(NLW_mem_inst_reg_0_3_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,in_axis_tdata[3]}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1,1'b1,1'b1}),
        .DOADO({NLW_mem_inst_reg_0_3_DOADO_UNCONNECTED[31:1],r_data_int[3]}),
        .DOBDO(NLW_mem_inst_reg_0_3_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_mem_inst_reg_0_3_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_inst_reg_0_3_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_inst_reg_0_3_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .INJECTDBITERR(NLW_mem_inst_reg_0_3_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_inst_reg_0_3_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_inst_reg_0_3_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_inst_reg_0_3_SBITERR_UNCONNECTED),
        .WEA({mem_inst_reg_0_3_0,mem_inst_reg_0_3_0,mem_inst_reg_0_3_0,mem_inst_reg_0_3_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "inst/bram_a/mem_inst_reg_0_30" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "30" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(0)) 
    mem_inst_reg_0_30
       (.ADDRARDADDR({1'b1,P}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(NLW_mem_inst_reg_0_30_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_inst_reg_0_30_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk),
        .CLKBWRCLK(1'b0),
        .DBITERR(NLW_mem_inst_reg_0_30_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,in_axis_tdata[30]}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1,1'b1,1'b1}),
        .DOADO({NLW_mem_inst_reg_0_30_DOADO_UNCONNECTED[31:1],r_data_int[30]}),
        .DOBDO(NLW_mem_inst_reg_0_30_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_mem_inst_reg_0_30_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_inst_reg_0_30_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_inst_reg_0_30_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .INJECTDBITERR(NLW_mem_inst_reg_0_30_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_inst_reg_0_30_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_inst_reg_0_30_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_inst_reg_0_30_SBITERR_UNCONNECTED),
        .WEA({mem_inst_reg_0_30_0,mem_inst_reg_0_30_0,mem_inst_reg_0_30_0,mem_inst_reg_0_30_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "inst/bram_a/mem_inst_reg_0_31" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "31" *) 
  (* ram_slice_end = "31" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(0)) 
    mem_inst_reg_0_31
       (.ADDRARDADDR({1'b1,P}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(NLW_mem_inst_reg_0_31_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_inst_reg_0_31_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk),
        .CLKBWRCLK(1'b0),
        .DBITERR(NLW_mem_inst_reg_0_31_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,in_axis_tdata[31]}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1,1'b1,1'b1}),
        .DOADO({NLW_mem_inst_reg_0_31_DOADO_UNCONNECTED[31:1],r_data_int[31]}),
        .DOBDO(NLW_mem_inst_reg_0_31_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_mem_inst_reg_0_31_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_inst_reg_0_31_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_inst_reg_0_31_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .INJECTDBITERR(NLW_mem_inst_reg_0_31_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_inst_reg_0_31_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_inst_reg_0_31_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_inst_reg_0_31_SBITERR_UNCONNECTED),
        .WEA({mem_inst_reg_0_31_0,mem_inst_reg_0_31_0,mem_inst_reg_0_31_0,mem_inst_reg_0_31_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "inst/bram_a/mem_inst_reg_0_4" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "4" *) 
  (* ram_slice_end = "4" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(0)) 
    mem_inst_reg_0_4
       (.ADDRARDADDR({1'b1,P}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(NLW_mem_inst_reg_0_4_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_inst_reg_0_4_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk),
        .CLKBWRCLK(1'b0),
        .DBITERR(NLW_mem_inst_reg_0_4_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,in_axis_tdata[4]}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1,1'b1,1'b1}),
        .DOADO({NLW_mem_inst_reg_0_4_DOADO_UNCONNECTED[31:1],r_data_int[4]}),
        .DOBDO(NLW_mem_inst_reg_0_4_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_mem_inst_reg_0_4_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_inst_reg_0_4_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_inst_reg_0_4_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .INJECTDBITERR(NLW_mem_inst_reg_0_4_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_inst_reg_0_4_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_inst_reg_0_4_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_inst_reg_0_4_SBITERR_UNCONNECTED),
        .WEA({mem_inst_reg_0_4_0,mem_inst_reg_0_4_0,mem_inst_reg_0_4_0,mem_inst_reg_0_4_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "inst/bram_a/mem_inst_reg_0_5" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "5" *) 
  (* ram_slice_end = "5" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(0)) 
    mem_inst_reg_0_5
       (.ADDRARDADDR({1'b1,P}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(NLW_mem_inst_reg_0_5_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_inst_reg_0_5_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk),
        .CLKBWRCLK(1'b0),
        .DBITERR(NLW_mem_inst_reg_0_5_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,in_axis_tdata[5]}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1,1'b1,1'b1}),
        .DOADO({NLW_mem_inst_reg_0_5_DOADO_UNCONNECTED[31:1],r_data_int[5]}),
        .DOBDO(NLW_mem_inst_reg_0_5_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_mem_inst_reg_0_5_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_inst_reg_0_5_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_inst_reg_0_5_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .INJECTDBITERR(NLW_mem_inst_reg_0_5_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_inst_reg_0_5_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_inst_reg_0_5_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_inst_reg_0_5_SBITERR_UNCONNECTED),
        .WEA({mem_inst_reg_0_5_0,mem_inst_reg_0_5_0,mem_inst_reg_0_5_0,mem_inst_reg_0_5_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "inst/bram_a/mem_inst_reg_0_6" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(0)) 
    mem_inst_reg_0_6
       (.ADDRARDADDR({1'b1,P}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(NLW_mem_inst_reg_0_6_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_inst_reg_0_6_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk),
        .CLKBWRCLK(1'b0),
        .DBITERR(NLW_mem_inst_reg_0_6_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,in_axis_tdata[6]}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1,1'b1,1'b1}),
        .DOADO({NLW_mem_inst_reg_0_6_DOADO_UNCONNECTED[31:1],r_data_int[6]}),
        .DOBDO(NLW_mem_inst_reg_0_6_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_mem_inst_reg_0_6_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_inst_reg_0_6_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_inst_reg_0_6_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .INJECTDBITERR(NLW_mem_inst_reg_0_6_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_inst_reg_0_6_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_inst_reg_0_6_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_inst_reg_0_6_SBITERR_UNCONNECTED),
        .WEA({mem_inst_reg_0_6_0,mem_inst_reg_0_6_0,mem_inst_reg_0_6_0,mem_inst_reg_0_6_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "inst/bram_a/mem_inst_reg_0_7" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(0)) 
    mem_inst_reg_0_7
       (.ADDRARDADDR({1'b1,P}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(NLW_mem_inst_reg_0_7_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_inst_reg_0_7_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk),
        .CLKBWRCLK(1'b0),
        .DBITERR(NLW_mem_inst_reg_0_7_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,in_axis_tdata[7]}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1,1'b1,1'b1}),
        .DOADO({NLW_mem_inst_reg_0_7_DOADO_UNCONNECTED[31:1],r_data_int[7]}),
        .DOBDO(NLW_mem_inst_reg_0_7_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_mem_inst_reg_0_7_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_inst_reg_0_7_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_inst_reg_0_7_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .INJECTDBITERR(NLW_mem_inst_reg_0_7_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_inst_reg_0_7_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_inst_reg_0_7_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_inst_reg_0_7_SBITERR_UNCONNECTED),
        .WEA({mem_inst_reg_0_7_0,mem_inst_reg_0_7_0,mem_inst_reg_0_7_0,mem_inst_reg_0_7_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "inst/bram_a/mem_inst_reg_0_8" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "8" *) 
  (* ram_slice_end = "8" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(0)) 
    mem_inst_reg_0_8
       (.ADDRARDADDR({1'b1,P}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(NLW_mem_inst_reg_0_8_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_inst_reg_0_8_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk),
        .CLKBWRCLK(1'b0),
        .DBITERR(NLW_mem_inst_reg_0_8_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,in_axis_tdata[8]}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1,1'b1,1'b1}),
        .DOADO({NLW_mem_inst_reg_0_8_DOADO_UNCONNECTED[31:1],r_data_int[8]}),
        .DOBDO(NLW_mem_inst_reg_0_8_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_mem_inst_reg_0_8_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_inst_reg_0_8_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_inst_reg_0_8_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .INJECTDBITERR(NLW_mem_inst_reg_0_8_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_inst_reg_0_8_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_inst_reg_0_8_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_inst_reg_0_8_SBITERR_UNCONNECTED),
        .WEA({mem_inst_reg_0_8_0,mem_inst_reg_0_8_0,mem_inst_reg_0_8_0,mem_inst_reg_0_8_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "inst/bram_a/mem_inst_reg_0_9" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "9" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(0)) 
    mem_inst_reg_0_9
       (.ADDRARDADDR({1'b1,P}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(NLW_mem_inst_reg_0_9_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_inst_reg_0_9_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk),
        .CLKBWRCLK(1'b0),
        .DBITERR(NLW_mem_inst_reg_0_9_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,in_axis_tdata[9]}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1,1'b1,1'b1}),
        .DOADO({NLW_mem_inst_reg_0_9_DOADO_UNCONNECTED[31:1],r_data_int[9]}),
        .DOBDO(NLW_mem_inst_reg_0_9_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_mem_inst_reg_0_9_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_inst_reg_0_9_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_inst_reg_0_9_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .INJECTDBITERR(NLW_mem_inst_reg_0_9_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_inst_reg_0_9_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_inst_reg_0_9_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_inst_reg_0_9_SBITERR_UNCONNECTED),
        .WEA({mem_inst_reg_0_9_0,mem_inst_reg_0_9_0,mem_inst_reg_0_9_0,mem_inst_reg_0_9_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "bram" *) 
module top_mat_mul_0_0_bram__parameterized0
   (r_data_int,
    clk,
    Q,
    in_axis_tdata,
    WEA);
  output [31:0]r_data_int;
  input clk;
  input [7:0]Q;
  input [31:0]in_axis_tdata;
  input [0:0]WEA;

  wire [7:0]Q;
  wire [0:0]WEA;
  wire clk;
  wire [31:0]in_axis_tdata;
  wire [31:0]r_data_int;
  wire [15:14]NLW_mem_inst_reg_DOBDO_UNCONNECTED;
  wire [1:0]NLW_mem_inst_reg_DOPBDOP_UNCONNECTED;

  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p2_d16" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d14" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "inst/bram_b/mem_inst_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_ext_slice_begin = "18" *) 
  (* ram_ext_slice_end = "31" *) 
  (* ram_offset = "256" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "17" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    mem_inst_reg
       (.ADDRARDADDR({1'b0,1'b1,Q,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,1'b1,Q,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(clk),
        .CLKBWRCLK(clk),
        .DIADI(in_axis_tdata[15:0]),
        .DIBDI({1'b1,1'b1,in_axis_tdata[31:18]}),
        .DIPADIP(in_axis_tdata[17:16]),
        .DIPBDIP({1'b1,1'b1}),
        .DOADO(r_data_int[15:0]),
        .DOBDO({NLW_mem_inst_reg_DOBDO_UNCONNECTED[15:14],r_data_int[31:18]}),
        .DOPADOP(r_data_int[17:16]),
        .DOPBDOP(NLW_mem_inst_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b1),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({WEA,WEA}),
        .WEBWE({1'b0,1'b0,WEA,WEA}));
endmodule

(* ORIG_REF_NAME = "bram" *) 
module top_mat_mul_0_0_bram__parameterized1
   (r_data_int,
    clk,
    mem_inst_reg_0,
    data_r,
    WEBWE);
  output [31:0]r_data_int;
  input clk;
  input [6:0]mem_inst_reg_0;
  input [31:0]data_r;
  input [0:0]WEBWE;

  wire [0:0]WEBWE;
  wire clk;
  wire [31:0]data_r;
  wire [6:0]mem_inst_reg_0;
  wire [31:0]r_data_int;
  wire [15:14]NLW_mem_inst_reg_DOBDO_UNCONNECTED;
  wire [1:0]NLW_mem_inst_reg_DOPBDOP_UNCONNECTED;

  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p2_d16" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d14" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "4096" *) 
  (* RTL_RAM_NAME = "inst/bram_r/mem_inst_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_ext_slice_begin = "18" *) 
  (* ram_ext_slice_end = "31" *) 
  (* ram_offset = "384" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "17" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    mem_inst_reg
       (.ADDRARDADDR({1'b0,1'b1,1'b1,mem_inst_reg_0,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,mem_inst_reg_0,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(clk),
        .CLKBWRCLK(clk),
        .DIADI(data_r[15:0]),
        .DIBDI({1'b1,1'b1,data_r[31:18]}),
        .DIPADIP(data_r[17:16]),
        .DIPBDIP({1'b1,1'b1}),
        .DOADO(r_data_int[15:0]),
        .DOBDO({NLW_mem_inst_reg_DOBDO_UNCONNECTED[15:14],r_data_int[31:18]}),
        .DOPADOP(r_data_int[17:16]),
        .DOPBDOP(NLW_mem_inst_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b1),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({WEBWE,WEBWE}),
        .WEBWE({1'b0,1'b0,WEBWE,WEBWE}));
endmodule

(* ORIG_REF_NAME = "dim_counter" *) 
module top_mat_mul_0_0_dim_counter
   (\count_reg[6]_0 ,
    Q,
    \state_reg[1] ,
    D,
    \state_reg[3] ,
    \count_reg[0]_0 ,
    CO,
    in_axis_tvalid,
    \count_reg[0]_1 ,
    last_carry_0,
    last_carry_1,
    last_carry_2,
    E,
    clk,
    \count_reg[6]_1 );
  output [0:0]\count_reg[6]_0 ;
  output [6:0]Q;
  output \state_reg[1] ;
  output [0:0]D;
  output \state_reg[3] ;
  input [3:0]\count_reg[0]_0 ;
  input [0:0]CO;
  input in_axis_tvalid;
  input [0:0]\count_reg[0]_1 ;
  input [6:0]last_carry_0;
  input last_carry_1;
  input last_carry_2;
  input [0:0]E;
  input clk;
  input \count_reg[6]_1 ;

  wire [0:0]CO;
  wire [0:0]D;
  wire [0:0]E;
  wire [6:0]Q;
  wire clk;
  wire \count[0]_i_1__2_n_0 ;
  wire \count[6]_i_3__0_n_0 ;
  wire \count[6]_i_4_n_0 ;
  wire \count[6]_i_5_n_0 ;
  wire [3:0]\count_reg[0]_0 ;
  wire [0:0]\count_reg[0]_1 ;
  wire [0:0]\count_reg[6]_0 ;
  wire \count_reg[6]_1 ;
  wire in_axis_tvalid;
  wire [6:0]last_carry_0;
  wire last_carry_1;
  wire last_carry_2;
  wire last_carry_i_1_n_0;
  wire last_carry_i_2__0_n_0;
  wire last_carry_i_3__0_n_0;
  wire last_carry_i_4__0_n_0;
  wire last_carry_i_5__1_n_0;
  wire last_carry_i_6__0_n_0;
  wire last_carry_i_7__0_n_0;
  wire last_carry_i_8__0_n_0;
  wire last_carry_n_1;
  wire last_carry_n_2;
  wire last_carry_n_3;
  wire [6:1]p_0_in__0;
  wire \state_reg[1] ;
  wire \state_reg[3] ;
  wire [3:0]NLW_last_carry_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'h000000000011BF00)) 
    \count[0]_i_1 
       (.I0(\count_reg[0]_0 [0]),
        .I1(\count_reg[0]_0 [1]),
        .I2(\count_reg[6]_0 ),
        .I3(\count_reg[0]_0 [2]),
        .I4(\count_reg[0]_0 [3]),
        .I5(\count_reg[0]_1 ),
        .O(D));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \count[0]_i_1__2 
       (.I0(Q[0]),
        .I1(\count[6]_i_4_n_0 ),
        .O(\count[0]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \count[1]_i_1__0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\count[6]_i_4_n_0 ),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0078)) 
    \count[2]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(\count[6]_i_4_n_0 ),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00007F80)) 
    \count[3]_i_1__0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(\count[6]_i_4_n_0 ),
        .O(p_0_in__0[3]));
  LUT6 #(
    .INIT(64'h000000007FFF8000)) 
    \count[4]_i_1__0 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .I5(\count[6]_i_4_n_0 ),
        .O(p_0_in__0[4]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \count[5]_i_1 
       (.I0(\count[6]_i_3__0_n_0 ),
        .I1(Q[5]),
        .I2(\count[6]_i_4_n_0 ),
        .O(p_0_in__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0078)) 
    \count[6]_i_2 
       (.I0(\count[6]_i_3__0_n_0 ),
        .I1(Q[5]),
        .I2(Q[6]),
        .I3(\count[6]_i_4_n_0 ),
        .O(p_0_in__0[6]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \count[6]_i_3__0 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .O(\count[6]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h4444400055555555)) 
    \count[6]_i_4 
       (.I0(\state_reg[1] ),
        .I1(\count_reg[6]_0 ),
        .I2(CO),
        .I3(in_axis_tvalid),
        .I4(\count_reg[0]_0 [2]),
        .I5(\count[6]_i_5_n_0 ),
        .O(\count[6]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h44440466)) 
    \count[6]_i_4__0 
       (.I0(\count_reg[0]_0 [3]),
        .I1(\count_reg[0]_0 [2]),
        .I2(\count_reg[6]_0 ),
        .I3(\count_reg[0]_0 [1]),
        .I4(\count_reg[0]_0 [0]),
        .O(\state_reg[3] ));
  LUT3 #(
    .INIT(8'h04)) 
    \count[6]_i_5 
       (.I0(\count_reg[0]_0 [0]),
        .I1(\count_reg[0]_0 [1]),
        .I2(\count_reg[0]_0 [3]),
        .O(\count[6]_i_5_n_0 ));
  FDCE \count_reg[0] 
       (.C(clk),
        .CE(E),
        .CLR(\count_reg[6]_1 ),
        .D(\count[0]_i_1__2_n_0 ),
        .Q(Q[0]));
  FDCE \count_reg[1] 
       (.C(clk),
        .CE(E),
        .CLR(\count_reg[6]_1 ),
        .D(p_0_in__0[1]),
        .Q(Q[1]));
  FDCE \count_reg[2] 
       (.C(clk),
        .CE(E),
        .CLR(\count_reg[6]_1 ),
        .D(p_0_in__0[2]),
        .Q(Q[2]));
  FDCE \count_reg[3] 
       (.C(clk),
        .CE(E),
        .CLR(\count_reg[6]_1 ),
        .D(p_0_in__0[3]),
        .Q(Q[3]));
  FDCE \count_reg[4] 
       (.C(clk),
        .CE(E),
        .CLR(\count_reg[6]_1 ),
        .D(p_0_in__0[4]),
        .Q(Q[4]));
  FDCE \count_reg[5] 
       (.C(clk),
        .CE(E),
        .CLR(\count_reg[6]_1 ),
        .D(p_0_in__0[5]),
        .Q(Q[5]));
  FDCE \count_reg[6] 
       (.C(clk),
        .CE(E),
        .CLR(\count_reg[6]_1 ),
        .D(p_0_in__0[6]),
        .Q(Q[6]));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 last_carry
       (.CI(1'b0),
        .CO({\count_reg[6]_0 ,last_carry_n_1,last_carry_n_2,last_carry_n_3}),
        .CYINIT(1'b1),
        .DI({last_carry_i_1_n_0,last_carry_i_2__0_n_0,last_carry_i_3__0_n_0,last_carry_i_4__0_n_0}),
        .O(NLW_last_carry_O_UNCONNECTED[3:0]),
        .S({last_carry_i_5__1_n_0,last_carry_i_6__0_n_0,last_carry_i_7__0_n_0,last_carry_i_8__0_n_0}));
  LUT3 #(
    .INIT(8'h28)) 
    last_carry_i_1
       (.I0(Q[6]),
        .I1(last_carry_0[6]),
        .I2(last_carry_1),
        .O(last_carry_i_1_n_0));
  LUT5 #(
    .INIT(32'h8AE308A2)) 
    last_carry_i_2__0
       (.I0(Q[5]),
        .I1(last_carry_2),
        .I2(last_carry_0[4]),
        .I3(last_carry_0[5]),
        .I4(Q[4]),
        .O(last_carry_i_2__0_n_0));
  LUT6 #(
    .INIT(64'h222ABBBC0002AAA8)) 
    last_carry_i_3__0
       (.I0(Q[3]),
        .I1(last_carry_0[2]),
        .I2(last_carry_0[1]),
        .I3(last_carry_0[0]),
        .I4(last_carry_0[3]),
        .I5(Q[2]),
        .O(last_carry_i_3__0_n_0));
  LUT4 #(
    .INIT(16'hB828)) 
    last_carry_i_4__0
       (.I0(Q[1]),
        .I1(last_carry_0[1]),
        .I2(last_carry_0[0]),
        .I3(Q[0]),
        .O(last_carry_i_4__0_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    last_carry_i_5__1
       (.I0(last_carry_0[6]),
        .I1(last_carry_1),
        .I2(Q[6]),
        .O(last_carry_i_5__1_n_0));
  LUT5 #(
    .INIT(32'h06909009)) 
    last_carry_i_6__0
       (.I0(last_carry_0[5]),
        .I1(Q[5]),
        .I2(last_carry_0[4]),
        .I3(last_carry_2),
        .I4(Q[4]),
        .O(last_carry_i_6__0_n_0));
  LUT6 #(
    .INIT(64'h9090900609090990)) 
    last_carry_i_7__0
       (.I0(last_carry_0[3]),
        .I1(Q[3]),
        .I2(last_carry_0[2]),
        .I3(last_carry_0[1]),
        .I4(last_carry_0[0]),
        .I5(Q[2]),
        .O(last_carry_i_7__0_n_0));
  LUT4 #(
    .INIT(16'h0690)) 
    last_carry_i_8__0
       (.I0(last_carry_0[1]),
        .I1(Q[1]),
        .I2(last_carry_0[0]),
        .I3(Q[0]),
        .O(last_carry_i_8__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \state[0]_i_5 
       (.I0(\count_reg[0]_0 [1]),
        .I1(\count_reg[0]_0 [2]),
        .I2(\count_reg[0]_0 [3]),
        .O(\state_reg[1] ));
endmodule

(* ORIG_REF_NAME = "dim_counter" *) 
module top_mat_mul_0_0_dim_counter_1
   (Q,
    D,
    \state_reg[3] ,
    \state_reg[2] ,
    out_axis_tlast,
    \mat_row_size_reg_reg[4] ,
    \mat_row_size_reg_reg[1] ,
    \state_reg[0] ,
    \state_reg[0]_0 ,
    \state_reg[0]_1 ,
    \state_reg[0]_2 ,
    CO,
    \state_reg[0]_3 ,
    \state_reg[0]_4 ,
    \count_reg[0]_0 ,
    \count_reg[1]_0 ,
    out_axis_tready,
    last_carry_0,
    clk,
    \count_reg[0]_1 );
  output [6:0]Q;
  output [0:0]D;
  output \state_reg[3] ;
  output \state_reg[2] ;
  output out_axis_tlast;
  output \mat_row_size_reg_reg[4] ;
  output \mat_row_size_reg_reg[1] ;
  input \state_reg[0] ;
  input \state_reg[0]_0 ;
  input [3:0]\state_reg[0]_1 ;
  input \state_reg[0]_2 ;
  input [0:0]CO;
  input [0:0]\state_reg[0]_3 ;
  input \state_reg[0]_4 ;
  input [0:0]\count_reg[0]_0 ;
  input \count_reg[1]_0 ;
  input out_axis_tready;
  input [6:0]last_carry_0;
  input clk;
  input \count_reg[0]_1 ;

  wire [0:0]CO;
  wire [0:0]D;
  wire [6:0]Q;
  wire clk;
  wire \count[6]_i_1__0_n_0 ;
  wire \count[6]_i_3_n_0 ;
  wire \count[6]_i_5__0_n_0 ;
  wire [0:0]\count_reg[0]_0 ;
  wire \count_reg[0]_1 ;
  wire \count_reg[1]_0 ;
  wire [6:0]last_carry_0;
  wire last_carry_i_1__0_n_0;
  wire last_carry_i_2_n_0;
  wire last_carry_i_3_n_0;
  wire last_carry_i_4_n_0;
  wire last_carry_i_5__2_n_0;
  wire last_carry_i_6_n_0;
  wire last_carry_i_7_n_0;
  wire last_carry_i_8_n_0;
  wire last_carry_n_1;
  wire last_carry_n_2;
  wire last_carry_n_3;
  wire \mat_row_size_reg_reg[1] ;
  wire \mat_row_size_reg_reg[4] ;
  wire out_axis_tlast;
  wire out_axis_tready;
  wire [6:1]p_0_in__1;
  wire r_cnt_last;
  wire \state_reg[0] ;
  wire \state_reg[0]_0 ;
  wire [3:0]\state_reg[0]_1 ;
  wire \state_reg[0]_2 ;
  wire [0:0]\state_reg[0]_3 ;
  wire \state_reg[0]_4 ;
  wire \state_reg[2] ;
  wire \state_reg[3] ;
  wire [3:0]NLW_last_carry_O_UNCONNECTED;

  LUT3 #(
    .INIT(8'h28)) 
    \count[1]_i_1__1 
       (.I0(\count_reg[1]_0 ),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(p_0_in__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \count[2]_i_1__1 
       (.I0(\count_reg[1]_0 ),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(p_0_in__1[2]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \count[3]_i_1__1 
       (.I0(\count_reg[1]_0 ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[3]),
        .O(p_0_in__1[3]));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \count[4]_i_1__1 
       (.I0(\count_reg[1]_0 ),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[3]),
        .I5(Q[4]),
        .O(p_0_in__1[4]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \count[5]_i_1__0 
       (.I0(\count_reg[1]_0 ),
        .I1(\count[6]_i_5__0_n_0 ),
        .I2(Q[5]),
        .O(p_0_in__1[5]));
  LUT6 #(
    .INIT(64'h30080000FFFFFFFF)) 
    \count[6]_i_1__0 
       (.I0(out_axis_tready),
        .I1(\state_reg[0]_1 [3]),
        .I2(\state_reg[0]_1 [2]),
        .I3(\state_reg[0]_1 [1]),
        .I4(\count[6]_i_3_n_0 ),
        .I5(\count_reg[1]_0 ),
        .O(\count[6]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \count[6]_i_2__0 
       (.I0(\count_reg[1]_0 ),
        .I1(Q[5]),
        .I2(\count[6]_i_5__0_n_0 ),
        .I3(Q[6]),
        .O(p_0_in__1[6]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \count[6]_i_3 
       (.I0(r_cnt_last),
        .I1(\state_reg[0]_1 [0]),
        .O(\count[6]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \count[6]_i_5__0 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[4]),
        .O(\count[6]_i_5__0_n_0 ));
  FDCE \count_reg[0] 
       (.C(clk),
        .CE(\count[6]_i_1__0_n_0 ),
        .CLR(\count_reg[0]_1 ),
        .D(\count_reg[0]_0 ),
        .Q(Q[0]));
  FDCE \count_reg[1] 
       (.C(clk),
        .CE(\count[6]_i_1__0_n_0 ),
        .CLR(\count_reg[0]_1 ),
        .D(p_0_in__1[1]),
        .Q(Q[1]));
  FDCE \count_reg[2] 
       (.C(clk),
        .CE(\count[6]_i_1__0_n_0 ),
        .CLR(\count_reg[0]_1 ),
        .D(p_0_in__1[2]),
        .Q(Q[2]));
  FDCE \count_reg[3] 
       (.C(clk),
        .CE(\count[6]_i_1__0_n_0 ),
        .CLR(\count_reg[0]_1 ),
        .D(p_0_in__1[3]),
        .Q(Q[3]));
  FDCE \count_reg[4] 
       (.C(clk),
        .CE(\count[6]_i_1__0_n_0 ),
        .CLR(\count_reg[0]_1 ),
        .D(p_0_in__1[4]),
        .Q(Q[4]));
  FDCE \count_reg[5] 
       (.C(clk),
        .CE(\count[6]_i_1__0_n_0 ),
        .CLR(\count_reg[0]_1 ),
        .D(p_0_in__1[5]),
        .Q(Q[5]));
  FDCE \count_reg[6] 
       (.C(clk),
        .CE(\count[6]_i_1__0_n_0 ),
        .CLR(\count_reg[0]_1 ),
        .D(p_0_in__1[6]),
        .Q(Q[6]));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 last_carry
       (.CI(1'b0),
        .CO({r_cnt_last,last_carry_n_1,last_carry_n_2,last_carry_n_3}),
        .CYINIT(1'b1),
        .DI({last_carry_i_1__0_n_0,last_carry_i_2_n_0,last_carry_i_3_n_0,last_carry_i_4_n_0}),
        .O(NLW_last_carry_O_UNCONNECTED[3:0]),
        .S({last_carry_i_5__2_n_0,last_carry_i_6_n_0,last_carry_i_7_n_0,last_carry_i_8_n_0}));
  LUT4 #(
    .INIT(16'h0001)) 
    last_carry_i_10
       (.I0(last_carry_0[1]),
        .I1(last_carry_0[0]),
        .I2(last_carry_0[2]),
        .I3(last_carry_0[3]),
        .O(\mat_row_size_reg_reg[1] ));
  LUT3 #(
    .INIT(8'h28)) 
    last_carry_i_1__0
       (.I0(Q[6]),
        .I1(last_carry_0[6]),
        .I2(\mat_row_size_reg_reg[4] ),
        .O(last_carry_i_1__0_n_0));
  LUT5 #(
    .INIT(32'h8AE308A2)) 
    last_carry_i_2
       (.I0(Q[5]),
        .I1(\mat_row_size_reg_reg[1] ),
        .I2(last_carry_0[4]),
        .I3(last_carry_0[5]),
        .I4(Q[4]),
        .O(last_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h222ABBBC0002AAA8)) 
    last_carry_i_3
       (.I0(Q[3]),
        .I1(last_carry_0[2]),
        .I2(last_carry_0[1]),
        .I3(last_carry_0[0]),
        .I4(last_carry_0[3]),
        .I5(Q[2]),
        .O(last_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'hB828)) 
    last_carry_i_4
       (.I0(Q[1]),
        .I1(last_carry_0[1]),
        .I2(last_carry_0[0]),
        .I3(Q[0]),
        .O(last_carry_i_4_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    last_carry_i_5__2
       (.I0(last_carry_0[6]),
        .I1(\mat_row_size_reg_reg[4] ),
        .I2(Q[6]),
        .O(last_carry_i_5__2_n_0));
  LUT5 #(
    .INIT(32'h06909009)) 
    last_carry_i_6
       (.I0(last_carry_0[5]),
        .I1(Q[5]),
        .I2(last_carry_0[4]),
        .I3(\mat_row_size_reg_reg[1] ),
        .I4(Q[4]),
        .O(last_carry_i_6_n_0));
  LUT6 #(
    .INIT(64'h9090900609090990)) 
    last_carry_i_7
       (.I0(last_carry_0[3]),
        .I1(Q[3]),
        .I2(last_carry_0[2]),
        .I3(last_carry_0[1]),
        .I4(last_carry_0[0]),
        .I5(Q[2]),
        .O(last_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h0960)) 
    last_carry_i_8
       (.I0(last_carry_0[1]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(last_carry_0[0]),
        .O(last_carry_i_8_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    last_carry_i_9
       (.I0(last_carry_0[4]),
        .I1(last_carry_0[5]),
        .I2(last_carry_0[3]),
        .I3(last_carry_0[2]),
        .I4(last_carry_0[0]),
        .I5(last_carry_0[1]),
        .O(\mat_row_size_reg_reg[4] ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h02020200)) 
    out_axis_tlast_INST_0
       (.I0(\state_reg[0]_1 [3]),
        .I1(\state_reg[0]_1 [2]),
        .I2(\state_reg[0]_1 [1]),
        .I3(\state_reg[0]_1 [0]),
        .I4(r_cnt_last),
        .O(out_axis_tlast));
  LUT6 #(
    .INIT(64'hFEFEFEFEFEFEFEFF)) 
    \state[0]_i_1 
       (.I0(\state_reg[0] ),
        .I1(\state_reg[3] ),
        .I2(\state_reg[0]_0 ),
        .I3(\state_reg[0]_1 [3]),
        .I4(\state_reg[0]_1 [2]),
        .I5(\state_reg[0]_2 ),
        .O(D));
  LUT6 #(
    .INIT(64'hAAAAEAAAAAAAAAAA)) 
    \state[1]_i_6 
       (.I0(\state_reg[2] ),
        .I1(CO),
        .I2(\state_reg[0]_3 ),
        .I3(\state_reg[0]_4 ),
        .I4(\state_reg[0]_1 [3]),
        .I5(\state_reg[0]_1 [2]),
        .O(\state_reg[3] ));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    \state[2]_i_3 
       (.I0(\state_reg[0]_1 [2]),
        .I1(\state_reg[0]_1 [3]),
        .I2(out_axis_tready),
        .I3(\state_reg[0]_1 [0]),
        .I4(\state_reg[0]_1 [1]),
        .I5(r_cnt_last),
        .O(\state_reg[2] ));
endmodule

(* ORIG_REF_NAME = "dim_counter" *) 
module top_mat_mul_0_0_dim_counter__parameterized0
   (CO,
    Q,
    \state_reg[2] ,
    in_axis_tvalid_0,
    \mat_col_size_reg_reg[5] ,
    \mat_col_size_reg_reg[4] ,
    \mat_col_size_reg_reg[5]_0 ,
    anrst_0,
    in_axis_tvalid,
    \count_reg[0]_0 ,
    \state_reg[0] ,
    \state_reg[0]_0 ,
    last_carry_0,
    anrst,
    clk);
  output [0:0]CO;
  output [7:0]Q;
  output \state_reg[2] ;
  output in_axis_tvalid_0;
  output \mat_col_size_reg_reg[5] ;
  output \mat_col_size_reg_reg[4] ;
  output \mat_col_size_reg_reg[5]_0 ;
  output anrst_0;
  input in_axis_tvalid;
  input [3:0]\count_reg[0]_0 ;
  input [0:0]\state_reg[0] ;
  input [0:0]\state_reg[0]_0 ;
  input [7:0]last_carry_0;
  input anrst;
  input clk;

  wire [0:0]CO;
  wire [7:0]Q;
  wire anrst;
  wire anrst_0;
  wire clk;
  wire \count[0]_i_1__1_n_0 ;
  wire \count[5]_i_1__1_n_0 ;
  wire \count[5]_i_2_n_0 ;
  wire \count[6]_i_1__1_n_0 ;
  wire \count[7]_i_2_n_0 ;
  wire \count[7]_i_3__0_n_0 ;
  wire [3:0]\count_reg[0]_0 ;
  wire in_axis_tvalid;
  wire in_axis_tvalid_0;
  wire [7:0]last_carry_0;
  wire last_carry_i_1__2_n_0;
  wire last_carry_i_2__2_n_0;
  wire last_carry_i_3__2_n_0;
  wire last_carry_i_4__2_n_0;
  wire last_carry_i_5__0_n_0;
  wire last_carry_i_6__2_n_0;
  wire last_carry_i_7__2_n_0;
  wire last_carry_i_8__2_n_0;
  wire last_carry_n_1;
  wire last_carry_n_2;
  wire last_carry_n_3;
  wire \mat_col_size_reg_reg[4] ;
  wire \mat_col_size_reg_reg[5] ;
  wire \mat_col_size_reg_reg[5]_0 ;
  wire [4:1]p_0_in__2;
  wire sel;
  wire [0:0]\state_reg[0] ;
  wire [0:0]\state_reg[0]_0 ;
  wire \state_reg[2] ;
  wire [3:0]NLW_last_carry_O_UNCONNECTED;

  LUT1 #(
    .INIT(2'h1)) 
    \FSM_onehot_state[1]_i_2 
       (.I0(anrst),
        .O(anrst_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \count[0]_i_1__1 
       (.I0(Q[0]),
        .I1(\state_reg[2] ),
        .O(\count[0]_i_1__1_n_0 ));
  LUT3 #(
    .INIT(8'h06)) 
    \count[1]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\state_reg[2] ),
        .O(p_0_in__2[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0078)) 
    \count[2]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(\state_reg[2] ),
        .O(p_0_in__2[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00007F80)) 
    \count[3]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(\state_reg[2] ),
        .O(p_0_in__2[3]));
  LUT6 #(
    .INIT(64'h000000007FFF8000)) 
    \count[4]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .I5(\state_reg[2] ),
        .O(p_0_in__2[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h41)) 
    \count[5]_i_1__1 
       (.I0(\state_reg[2] ),
        .I1(\count[5]_i_2_n_0 ),
        .I2(Q[5]),
        .O(\count[5]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \count[5]_i_2 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[4]),
        .O(\count[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEA5555)) 
    \count[6]_i_1 
       (.I0(\count_reg[0]_0 [2]),
        .I1(in_axis_tvalid),
        .I2(CO),
        .I3(\count_reg[0]_0 [0]),
        .I4(\count_reg[0]_0 [1]),
        .I5(\count_reg[0]_0 [3]),
        .O(\state_reg[2] ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h41)) 
    \count[6]_i_1__1 
       (.I0(\state_reg[2] ),
        .I1(\count[7]_i_3__0_n_0 ),
        .I2(Q[6]),
        .O(\count[6]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF5FFFFFCF5FF)) 
    \count[7]_i_1 
       (.I0(CO),
        .I1(in_axis_tvalid),
        .I2(\count_reg[0]_0 [3]),
        .I3(\count_reg[0]_0 [2]),
        .I4(\count_reg[0]_0 [1]),
        .I5(\count_reg[0]_0 [0]),
        .O(sel));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h4510)) 
    \count[7]_i_2 
       (.I0(\state_reg[2] ),
        .I1(\count[7]_i_3__0_n_0 ),
        .I2(Q[6]),
        .I3(Q[7]),
        .O(\count[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \count[7]_i_3__0 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[3]),
        .I5(Q[5]),
        .O(\count[7]_i_3__0_n_0 ));
  FDCE \count_reg[0] 
       (.C(clk),
        .CE(sel),
        .CLR(anrst_0),
        .D(\count[0]_i_1__1_n_0 ),
        .Q(Q[0]));
  FDCE \count_reg[1] 
       (.C(clk),
        .CE(sel),
        .CLR(anrst_0),
        .D(p_0_in__2[1]),
        .Q(Q[1]));
  FDCE \count_reg[2] 
       (.C(clk),
        .CE(sel),
        .CLR(anrst_0),
        .D(p_0_in__2[2]),
        .Q(Q[2]));
  FDCE \count_reg[3] 
       (.C(clk),
        .CE(sel),
        .CLR(anrst_0),
        .D(p_0_in__2[3]),
        .Q(Q[3]));
  FDCE \count_reg[4] 
       (.C(clk),
        .CE(sel),
        .CLR(anrst_0),
        .D(p_0_in__2[4]),
        .Q(Q[4]));
  FDCE \count_reg[5] 
       (.C(clk),
        .CE(sel),
        .CLR(anrst_0),
        .D(\count[5]_i_1__1_n_0 ),
        .Q(Q[5]));
  FDCE \count_reg[6] 
       (.C(clk),
        .CE(sel),
        .CLR(anrst_0),
        .D(\count[6]_i_1__1_n_0 ),
        .Q(Q[6]));
  FDCE \count_reg[7] 
       (.C(clk),
        .CE(sel),
        .CLR(anrst_0),
        .D(\count[7]_i_2_n_0 ),
        .Q(Q[7]));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 last_carry
       (.CI(1'b0),
        .CO({CO,last_carry_n_1,last_carry_n_2,last_carry_n_3}),
        .CYINIT(1'b1),
        .DI({last_carry_i_1__2_n_0,last_carry_i_2__2_n_0,last_carry_i_3__2_n_0,last_carry_i_4__2_n_0}),
        .O(NLW_last_carry_O_UNCONNECTED[3:0]),
        .S({last_carry_i_5__0_n_0,last_carry_i_6__2_n_0,last_carry_i_7__2_n_0,last_carry_i_8__2_n_0}));
  LUT6 #(
    .INIT(64'h5555555555555556)) 
    last_carry_i_10__0
       (.I0(last_carry_0[5]),
        .I1(last_carry_0[2]),
        .I2(last_carry_0[3]),
        .I3(last_carry_0[1]),
        .I4(last_carry_0[0]),
        .I5(last_carry_0[4]),
        .O(\mat_col_size_reg_reg[5] ));
  LUT5 #(
    .INIT(32'h55555556)) 
    last_carry_i_11
       (.I0(last_carry_0[4]),
        .I1(last_carry_0[0]),
        .I2(last_carry_0[1]),
        .I3(last_carry_0[3]),
        .I4(last_carry_0[2]),
        .O(\mat_col_size_reg_reg[4] ));
  LUT5 #(
    .INIT(32'h2ABC02A8)) 
    last_carry_i_1__2
       (.I0(Q[7]),
        .I1(last_carry_0[6]),
        .I2(\mat_col_size_reg_reg[5]_0 ),
        .I3(last_carry_0[7]),
        .I4(Q[6]),
        .O(last_carry_i_1__2_n_0));
  LUT4 #(
    .INIT(16'hE888)) 
    last_carry_i_2__2
       (.I0(Q[5]),
        .I1(\mat_col_size_reg_reg[5] ),
        .I2(\mat_col_size_reg_reg[4] ),
        .I3(Q[4]),
        .O(last_carry_i_2__2_n_0));
  LUT6 #(
    .INIT(64'h222ABBBC0002AAA8)) 
    last_carry_i_3__2
       (.I0(Q[3]),
        .I1(last_carry_0[2]),
        .I2(last_carry_0[1]),
        .I3(last_carry_0[0]),
        .I4(last_carry_0[3]),
        .I5(Q[2]),
        .O(last_carry_i_3__2_n_0));
  LUT4 #(
    .INIT(16'hB828)) 
    last_carry_i_4__2
       (.I0(Q[1]),
        .I1(last_carry_0[1]),
        .I2(last_carry_0[0]),
        .I3(Q[0]),
        .O(last_carry_i_4__2_n_0));
  LUT5 #(
    .INIT(32'h90060990)) 
    last_carry_i_5__0
       (.I0(last_carry_0[7]),
        .I1(Q[7]),
        .I2(\mat_col_size_reg_reg[5]_0 ),
        .I3(last_carry_0[6]),
        .I4(Q[6]),
        .O(last_carry_i_5__0_n_0));
  LUT4 #(
    .INIT(16'h0660)) 
    last_carry_i_6__2
       (.I0(\mat_col_size_reg_reg[5] ),
        .I1(Q[5]),
        .I2(\mat_col_size_reg_reg[4] ),
        .I3(Q[4]),
        .O(last_carry_i_6__2_n_0));
  LUT6 #(
    .INIT(64'h9090900609090990)) 
    last_carry_i_7__2
       (.I0(last_carry_0[3]),
        .I1(Q[3]),
        .I2(last_carry_0[2]),
        .I3(last_carry_0[1]),
        .I4(last_carry_0[0]),
        .I5(Q[2]),
        .O(last_carry_i_7__2_n_0));
  LUT4 #(
    .INIT(16'h0690)) 
    last_carry_i_8__2
       (.I0(last_carry_0[1]),
        .I1(Q[1]),
        .I2(last_carry_0[0]),
        .I3(Q[0]),
        .O(last_carry_i_8__2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    last_carry_i_9__0
       (.I0(last_carry_0[5]),
        .I1(last_carry_0[2]),
        .I2(last_carry_0[3]),
        .I3(last_carry_0[1]),
        .I4(last_carry_0[0]),
        .I5(last_carry_0[4]),
        .O(\mat_col_size_reg_reg[5]_0 ));
  LUT6 #(
    .INIT(64'hF000FFFF7F7FFFFF)) 
    \state[0]_i_3 
       (.I0(CO),
        .I1(\state_reg[0] ),
        .I2(in_axis_tvalid),
        .I3(\state_reg[0]_0 ),
        .I4(\count_reg[0]_0 [1]),
        .I5(\count_reg[0]_0 [0]),
        .O(in_axis_tvalid_0));
endmodule

(* ORIG_REF_NAME = "dim_counter" *) 
module top_mat_mul_0_0_dim_counter__parameterized0_0
   (\count_reg[7]_0 ,
    Q,
    D,
    \state_reg[1] ,
    in_axis_tvalid,
    \count_reg[0]_0 ,
    \state_reg[1]_0 ,
    \state_reg[1]_1 ,
    \state_reg[1]_2 ,
    \state_reg[1]_3 ,
    \state_reg[0] ,
    \state_reg[0]_0 ,
    E,
    \state_reg[2] ,
    \state_reg[2]_0 ,
    last_carry_0,
    last_carry_1,
    last_carry_2,
    last_carry_3,
    clk,
    \count_reg[7]_1 );
  output [0:0]\count_reg[7]_0 ;
  output [7:0]Q;
  output [1:0]D;
  output \state_reg[1] ;
  input in_axis_tvalid;
  input [3:0]\count_reg[0]_0 ;
  input \state_reg[1]_0 ;
  input \state_reg[1]_1 ;
  input \state_reg[1]_2 ;
  input \state_reg[1]_3 ;
  input \state_reg[0] ;
  input \state_reg[0]_0 ;
  input [0:0]E;
  input \state_reg[2] ;
  input \state_reg[2]_0 ;
  input [5:0]last_carry_0;
  input last_carry_1;
  input last_carry_2;
  input last_carry_3;
  input clk;
  input \count_reg[7]_1 ;

  wire [1:0]D;
  wire [0:0]E;
  wire [7:0]Q;
  wire clk;
  wire \count[5]_i_1__2_n_0 ;
  wire \count[5]_i_2__0_n_0 ;
  wire \count[6]_i_1__2_n_0 ;
  wire \count[7]_i_1__0_n_0 ;
  wire \count[7]_i_2__0_n_0 ;
  wire \count[7]_i_3_n_0 ;
  wire \count[7]_i_4_n_0 ;
  wire [3:0]\count_reg[0]_0 ;
  wire [0:0]\count_reg[7]_0 ;
  wire \count_reg[7]_1 ;
  wire in_axis_tvalid;
  wire [5:0]last_carry_0;
  wire last_carry_1;
  wire last_carry_2;
  wire last_carry_3;
  wire last_carry_i_1__1_n_0;
  wire last_carry_i_2__1_n_0;
  wire last_carry_i_3__1_n_0;
  wire last_carry_i_4__1_n_0;
  wire last_carry_i_5_n_0;
  wire last_carry_i_6__1_n_0;
  wire last_carry_i_7__1_n_0;
  wire last_carry_i_8__1_n_0;
  wire last_carry_n_1;
  wire last_carry_n_2;
  wire last_carry_n_3;
  wire [4:0]p_0_in__3;
  wire \state[1]_i_2_n_0 ;
  wire \state[1]_i_7_n_0 ;
  wire \state_reg[0] ;
  wire \state_reg[0]_0 ;
  wire \state_reg[1] ;
  wire \state_reg[1]_0 ;
  wire \state_reg[1]_1 ;
  wire \state_reg[1]_2 ;
  wire \state_reg[1]_3 ;
  wire \state_reg[2] ;
  wire \state_reg[2]_0 ;
  wire [3:0]NLW_last_carry_O_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \count[0]_i_1__0 
       (.I0(Q[0]),
        .I1(\count[7]_i_3_n_0 ),
        .O(p_0_in__3[0]));
  LUT3 #(
    .INIT(8'h06)) 
    \count[1]_i_1__2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\count[7]_i_3_n_0 ),
        .O(p_0_in__3[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0078)) 
    \count[2]_i_1__2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(\count[7]_i_3_n_0 ),
        .O(p_0_in__3[2]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h00007F80)) 
    \count[3]_i_1__2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(\count[7]_i_3_n_0 ),
        .O(p_0_in__3[3]));
  LUT6 #(
    .INIT(64'h000000007FFF8000)) 
    \count[4]_i_1__2 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .I5(\count[7]_i_3_n_0 ),
        .O(p_0_in__3[4]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h41)) 
    \count[5]_i_1__2 
       (.I0(\count[7]_i_3_n_0 ),
        .I1(\count[5]_i_2__0_n_0 ),
        .I2(Q[5]),
        .O(\count[5]_i_1__2_n_0 ));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \count[5]_i_2__0 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[4]),
        .O(\count[5]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h41)) 
    \count[6]_i_1__2 
       (.I0(\count[7]_i_3_n_0 ),
        .I1(\count[7]_i_4_n_0 ),
        .I2(Q[6]),
        .O(\count[6]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFCF5FFFFFFF5FF)) 
    \count[7]_i_1__0 
       (.I0(\count_reg[7]_0 ),
        .I1(in_axis_tvalid),
        .I2(\count_reg[0]_0 [3]),
        .I3(\count_reg[0]_0 [2]),
        .I4(\count_reg[0]_0 [1]),
        .I5(\count_reg[0]_0 [0]),
        .O(\count[7]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h4510)) 
    \count[7]_i_2__0 
       (.I0(\count[7]_i_3_n_0 ),
        .I1(\count[7]_i_4_n_0 ),
        .I2(Q[6]),
        .I3(Q[7]),
        .O(\count[7]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFCCCCF777)) 
    \count[7]_i_3 
       (.I0(\count_reg[0]_0 [0]),
        .I1(\count_reg[0]_0 [1]),
        .I2(\count_reg[7]_0 ),
        .I3(in_axis_tvalid),
        .I4(\count_reg[0]_0 [2]),
        .I5(\count_reg[0]_0 [3]),
        .O(\count[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \count[7]_i_4 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[3]),
        .I5(Q[5]),
        .O(\count[7]_i_4_n_0 ));
  FDCE \count_reg[0] 
       (.C(clk),
        .CE(\count[7]_i_1__0_n_0 ),
        .CLR(\count_reg[7]_1 ),
        .D(p_0_in__3[0]),
        .Q(Q[0]));
  FDCE \count_reg[1] 
       (.C(clk),
        .CE(\count[7]_i_1__0_n_0 ),
        .CLR(\count_reg[7]_1 ),
        .D(p_0_in__3[1]),
        .Q(Q[1]));
  FDCE \count_reg[2] 
       (.C(clk),
        .CE(\count[7]_i_1__0_n_0 ),
        .CLR(\count_reg[7]_1 ),
        .D(p_0_in__3[2]),
        .Q(Q[2]));
  FDCE \count_reg[3] 
       (.C(clk),
        .CE(\count[7]_i_1__0_n_0 ),
        .CLR(\count_reg[7]_1 ),
        .D(p_0_in__3[3]),
        .Q(Q[3]));
  FDCE \count_reg[4] 
       (.C(clk),
        .CE(\count[7]_i_1__0_n_0 ),
        .CLR(\count_reg[7]_1 ),
        .D(p_0_in__3[4]),
        .Q(Q[4]));
  FDCE \count_reg[5] 
       (.C(clk),
        .CE(\count[7]_i_1__0_n_0 ),
        .CLR(\count_reg[7]_1 ),
        .D(\count[5]_i_1__2_n_0 ),
        .Q(Q[5]));
  FDCE \count_reg[6] 
       (.C(clk),
        .CE(\count[7]_i_1__0_n_0 ),
        .CLR(\count_reg[7]_1 ),
        .D(\count[6]_i_1__2_n_0 ),
        .Q(Q[6]));
  FDCE \count_reg[7] 
       (.C(clk),
        .CE(\count[7]_i_1__0_n_0 ),
        .CLR(\count_reg[7]_1 ),
        .D(\count[7]_i_2__0_n_0 ),
        .Q(Q[7]));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 last_carry
       (.CI(1'b0),
        .CO({\count_reg[7]_0 ,last_carry_n_1,last_carry_n_2,last_carry_n_3}),
        .CYINIT(1'b1),
        .DI({last_carry_i_1__1_n_0,last_carry_i_2__1_n_0,last_carry_i_3__1_n_0,last_carry_i_4__1_n_0}),
        .O(NLW_last_carry_O_UNCONNECTED[3:0]),
        .S({last_carry_i_5_n_0,last_carry_i_6__1_n_0,last_carry_i_7__1_n_0,last_carry_i_8__1_n_0}));
  LUT5 #(
    .INIT(32'h2ABC02A8)) 
    last_carry_i_1__1
       (.I0(Q[7]),
        .I1(last_carry_0[4]),
        .I2(last_carry_3),
        .I3(last_carry_0[5]),
        .I4(Q[6]),
        .O(last_carry_i_1__1_n_0));
  LUT4 #(
    .INIT(16'hE888)) 
    last_carry_i_2__1
       (.I0(Q[5]),
        .I1(last_carry_1),
        .I2(last_carry_2),
        .I3(Q[4]),
        .O(last_carry_i_2__1_n_0));
  LUT6 #(
    .INIT(64'h222ABBBC0002AAA8)) 
    last_carry_i_3__1
       (.I0(Q[3]),
        .I1(last_carry_0[2]),
        .I2(last_carry_0[1]),
        .I3(last_carry_0[0]),
        .I4(last_carry_0[3]),
        .I5(Q[2]),
        .O(last_carry_i_3__1_n_0));
  LUT4 #(
    .INIT(16'hB828)) 
    last_carry_i_4__1
       (.I0(Q[1]),
        .I1(last_carry_0[1]),
        .I2(last_carry_0[0]),
        .I3(Q[0]),
        .O(last_carry_i_4__1_n_0));
  LUT5 #(
    .INIT(32'h90060990)) 
    last_carry_i_5
       (.I0(last_carry_0[5]),
        .I1(Q[7]),
        .I2(last_carry_3),
        .I3(last_carry_0[4]),
        .I4(Q[6]),
        .O(last_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h0660)) 
    last_carry_i_6__1
       (.I0(last_carry_1),
        .I1(Q[5]),
        .I2(last_carry_2),
        .I3(Q[4]),
        .O(last_carry_i_6__1_n_0));
  LUT6 #(
    .INIT(64'h9090900609090990)) 
    last_carry_i_7__1
       (.I0(last_carry_0[3]),
        .I1(Q[3]),
        .I2(last_carry_0[2]),
        .I3(last_carry_0[1]),
        .I4(last_carry_0[0]),
        .I5(Q[2]),
        .O(last_carry_i_7__1_n_0));
  LUT4 #(
    .INIT(16'h0960)) 
    last_carry_i_8__1
       (.I0(last_carry_0[1]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(last_carry_0[0]),
        .O(last_carry_i_8__1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF11F0F1F0)) 
    \state[0]_i_2 
       (.I0(\state_reg[0] ),
        .I1(\count_reg[0]_0 [1]),
        .I2(\state_reg[0]_0 ),
        .I3(\count_reg[0]_0 [0]),
        .I4(\count_reg[7]_0 ),
        .I5(E),
        .O(\state_reg[1] ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFD500)) 
    \state[1]_i_1 
       (.I0(\state[1]_i_2_n_0 ),
        .I1(\state_reg[1]_0 ),
        .I2(\state_reg[1]_1 ),
        .I3(\state_reg[1]_2 ),
        .I4(\state_reg[1]_3 ),
        .I5(\state[1]_i_7_n_0 ),
        .O(D[0]));
  LUT4 #(
    .INIT(16'h80FF)) 
    \state[1]_i_2 
       (.I0(in_axis_tvalid),
        .I1(\count_reg[7]_0 ),
        .I2(\count_reg[0]_0 [0]),
        .I3(\count_reg[0]_0 [1]),
        .O(\state[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h04000000)) 
    \state[1]_i_7 
       (.I0(\count_reg[0]_0 [3]),
        .I1(\count_reg[0]_0 [2]),
        .I2(\count_reg[0]_0 [1]),
        .I3(\count_reg[0]_0 [0]),
        .I4(\count_reg[7]_0 ),
        .O(\state[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF06020202)) 
    \state[2]_i_1 
       (.I0(\count_reg[0]_0 [2]),
        .I1(\state_reg[2] ),
        .I2(\count_reg[0]_0 [3]),
        .I3(in_axis_tvalid),
        .I4(\count_reg[7]_0 ),
        .I5(\state_reg[2]_0 ),
        .O(D[1]));
endmodule

(* ORIG_REF_NAME = "mat_mul" *) 
module top_mat_mul_0_0_mat_mul
   (in_axis_tready,
    stat_axis_tvalid,
    ctrl_axis_tready,
    stat_axis_tdata,
    stat_axis_tlast,
    out_axis_tvalid,
    out_axis_tlast,
    out_axis_tdata,
    in_axis_tvalid,
    clk,
    in_axis_tdata,
    stat_axis_tready,
    ctrl_axis_tdata,
    ctrl_axis_tlast,
    ctrl_axis_tvalid,
    out_axis_tready,
    anrst);
  output in_axis_tready;
  output stat_axis_tvalid;
  output ctrl_axis_tready;
  output [2:0]stat_axis_tdata;
  output stat_axis_tlast;
  output out_axis_tvalid;
  output out_axis_tlast;
  output [31:0]out_axis_tdata;
  input in_axis_tvalid;
  input clk;
  input [31:0]in_axis_tdata;
  input stat_axis_tready;
  input [31:0]ctrl_axis_tdata;
  input ctrl_axis_tlast;
  input ctrl_axis_tvalid;
  input out_axis_tready;
  input anrst;

  wire [14:0]addr_a;
  wire [7:0]addr_b;
  wire addr_ctrl_inst_n_133;
  wire addr_ctrl_inst_n_135;
  wire addr_ctrl_inst_n_136;
  wire addr_ctrl_inst_n_137;
  wire addr_ctrl_inst_n_138;
  wire addr_ctrl_inst_n_139;
  wire addr_ctrl_inst_n_140;
  wire addr_ctrl_inst_n_141;
  wire addr_ctrl_inst_n_142;
  wire addr_ctrl_inst_n_143;
  wire addr_ctrl_inst_n_144;
  wire addr_ctrl_inst_n_145;
  wire addr_ctrl_inst_n_146;
  wire addr_ctrl_inst_n_147;
  wire addr_ctrl_inst_n_148;
  wire addr_ctrl_inst_n_149;
  wire addr_ctrl_inst_n_15;
  wire addr_ctrl_inst_n_150;
  wire addr_ctrl_inst_n_151;
  wire addr_ctrl_inst_n_152;
  wire addr_ctrl_inst_n_153;
  wire addr_ctrl_inst_n_154;
  wire addr_ctrl_inst_n_155;
  wire addr_ctrl_inst_n_156;
  wire addr_ctrl_inst_n_157;
  wire addr_ctrl_inst_n_158;
  wire addr_ctrl_inst_n_159;
  wire addr_ctrl_inst_n_160;
  wire addr_ctrl_inst_n_161;
  wire addr_ctrl_inst_n_162;
  wire addr_ctrl_inst_n_163;
  wire addr_ctrl_inst_n_164;
  wire addr_ctrl_inst_n_165;
  wire addr_ctrl_inst_n_166;
  wire addr_ctrl_inst_n_167;
  wire addr_ctrl_inst_n_168;
  wire addr_ctrl_inst_n_169;
  wire addr_ctrl_inst_n_170;
  wire addr_ctrl_inst_n_171;
  wire addr_ctrl_inst_n_172;
  wire addr_ctrl_inst_n_173;
  wire addr_ctrl_inst_n_174;
  wire addr_ctrl_inst_n_175;
  wire addr_ctrl_inst_n_176;
  wire addr_ctrl_inst_n_177;
  wire addr_ctrl_inst_n_178;
  wire addr_ctrl_inst_n_179;
  wire addr_ctrl_inst_n_180;
  wire addr_ctrl_inst_n_181;
  wire addr_ctrl_inst_n_182;
  wire addr_ctrl_inst_n_183;
  wire addr_ctrl_inst_n_184;
  wire addr_ctrl_inst_n_185;
  wire addr_ctrl_inst_n_186;
  wire addr_ctrl_inst_n_187;
  wire addr_ctrl_inst_n_188;
  wire addr_ctrl_inst_n_189;
  wire addr_ctrl_inst_n_190;
  wire addr_ctrl_inst_n_191;
  wire addr_ctrl_inst_n_192;
  wire addr_ctrl_inst_n_193;
  wire addr_ctrl_inst_n_194;
  wire addr_ctrl_inst_n_195;
  wire addr_ctrl_inst_n_196;
  wire addr_ctrl_inst_n_197;
  wire addr_ctrl_inst_n_198;
  wire addr_ctrl_inst_n_199;
  wire addr_ctrl_inst_n_200;
  wire addr_ctrl_inst_n_32;
  wire addr_ctrl_inst_n_33;
  wire addr_ctrl_inst_n_34;
  wire addr_ctrl_inst_n_35;
  wire addr_ctrl_inst_n_36;
  wire addr_ctrl_inst_n_37;
  wire addr_ctrl_inst_n_38;
  wire addr_ctrl_inst_n_39;
  wire addr_ctrl_inst_n_40;
  wire addr_ctrl_inst_n_41;
  wire addr_ctrl_inst_n_42;
  wire addr_ctrl_inst_n_43;
  wire addr_ctrl_inst_n_44;
  wire addr_ctrl_inst_n_45;
  wire addr_ctrl_inst_n_46;
  wire addr_ctrl_inst_n_47;
  wire addr_ctrl_inst_n_48;
  wire addr_ctrl_inst_n_49;
  wire addr_ctrl_inst_n_50;
  wire addr_ctrl_inst_n_51;
  wire addr_ctrl_inst_n_52;
  wire addr_ctrl_inst_n_53;
  wire addr_ctrl_inst_n_54;
  wire addr_ctrl_inst_n_55;
  wire addr_ctrl_inst_n_56;
  wire addr_ctrl_inst_n_57;
  wire addr_ctrl_inst_n_58;
  wire addr_ctrl_inst_n_59;
  wire addr_ctrl_inst_n_60;
  wire addr_ctrl_inst_n_61;
  wire addr_ctrl_inst_n_62;
  wire addr_ctrl_inst_n_63;
  wire addr_ctrl_inst_n_96;
  wire addr_ctrl_inst_n_97;
  wire [6:0]addr_r;
  wire anrst;
  wire [31:0]\app_data_reg[0] ;
  wire [31:0]\app_data_reg[1] ;
  wire clk;
  wire [31:0]ctrl_axis_tdata;
  wire ctrl_axis_tlast;
  wire ctrl_axis_tready;
  wire ctrl_axis_tvalid;
  wire [31:0]data_r;
  wire [1:1]err;
  wire [31:0]in_axis_tdata;
  wire in_axis_tready;
  wire in_axis_tvalid;
  wire [31:0]out_axis_tdata;
  wire out_axis_tlast;
  wire out_axis_tready;
  wire out_axis_tvalid;
  wire [31:0]p_0_in;
  wire [31:0]r_data;
  wire [31:0]r_data_int;
  wire [31:0]r_data_int_0;
  wire [31:0]r_data_int_1;
  wire [31:0]reg_add_reg;
  wire start_stb;
  wire [2:0]stat_axis_tdata;
  wire stat_axis_tlast;
  wire stat_axis_tready;
  wire stat_axis_tvalid;
  wire update_err;
  wire we_b;

  top_mat_mul_0_0_addr_ctrl addr_ctrl_inst
       (.B({addr_ctrl_inst_n_32,addr_ctrl_inst_n_33,addr_ctrl_inst_n_34,addr_ctrl_inst_n_35,addr_ctrl_inst_n_36,addr_ctrl_inst_n_37,addr_ctrl_inst_n_38,addr_ctrl_inst_n_39,addr_ctrl_inst_n_40,addr_ctrl_inst_n_41,addr_ctrl_inst_n_42,addr_ctrl_inst_n_43,addr_ctrl_inst_n_44,addr_ctrl_inst_n_45,addr_ctrl_inst_n_46,addr_ctrl_inst_n_47,addr_ctrl_inst_n_48}),
        .D(addr_ctrl_inst_n_96),
        .\FSM_onehot_state_reg[3] ({update_err,start_stb}),
        .O({addr_ctrl_inst_n_168,addr_ctrl_inst_n_169,addr_ctrl_inst_n_170,addr_ctrl_inst_n_171}),
        .P(addr_a),
        .Q(addr_b),
        .WEA(we_b),
        .WEBWE(addr_ctrl_inst_n_15),
        .anrst(anrst),
        .anrst_0(addr_ctrl_inst_n_200),
        .clk(clk),
        .\count_reg[6] (addr_r),
        .err(err),
        .in_axis_tready(in_axis_tready),
        .in_axis_tvalid(in_axis_tvalid),
        .\mat_col_size_reg_reg[31]_0 (\app_data_reg[0] ),
        .\mat_col_size_reg_reg[8]_0 (addr_ctrl_inst_n_133),
        .\mat_row_size_reg_reg[29]_0 (addr_ctrl_inst_n_135),
        .\mat_row_size_reg_reg[31]_0 (\app_data_reg[1] ),
        .mem_inst_reg({addr_ctrl_inst_n_49,addr_ctrl_inst_n_50,addr_ctrl_inst_n_51,addr_ctrl_inst_n_52,addr_ctrl_inst_n_53,addr_ctrl_inst_n_54,addr_ctrl_inst_n_55,addr_ctrl_inst_n_56,addr_ctrl_inst_n_57,addr_ctrl_inst_n_58,addr_ctrl_inst_n_59,addr_ctrl_inst_n_60,addr_ctrl_inst_n_61,addr_ctrl_inst_n_62,addr_ctrl_inst_n_63}),
        .out_axis_tdata(out_axis_tdata),
        .out_axis_tlast(out_axis_tlast),
        .out_axis_tready(out_axis_tready),
        .out_axis_tvalid(out_axis_tvalid),
        .p_0_in(p_0_in),
        .r_data(r_data),
        .r_data_int(r_data_int),
        .r_data_int_0(r_data_int_0),
        .r_data_int_1(r_data_int_1),
        .reg_add_reg(reg_add_reg),
        .\state_reg[0]_0 (addr_ctrl_inst_n_97),
        .\state_reg[1]_0 ({addr_ctrl_inst_n_172,addr_ctrl_inst_n_173,addr_ctrl_inst_n_174,addr_ctrl_inst_n_175}),
        .\state_reg[1]_1 ({addr_ctrl_inst_n_176,addr_ctrl_inst_n_177,addr_ctrl_inst_n_178,addr_ctrl_inst_n_179}),
        .\state_reg[1]_2 ({addr_ctrl_inst_n_180,addr_ctrl_inst_n_181,addr_ctrl_inst_n_182,addr_ctrl_inst_n_183}),
        .\state_reg[1]_3 ({addr_ctrl_inst_n_184,addr_ctrl_inst_n_185,addr_ctrl_inst_n_186,addr_ctrl_inst_n_187}),
        .\state_reg[1]_4 ({addr_ctrl_inst_n_188,addr_ctrl_inst_n_189,addr_ctrl_inst_n_190,addr_ctrl_inst_n_191}),
        .\state_reg[1]_5 ({addr_ctrl_inst_n_192,addr_ctrl_inst_n_193,addr_ctrl_inst_n_194,addr_ctrl_inst_n_195}),
        .\state_reg[1]_6 ({addr_ctrl_inst_n_196,addr_ctrl_inst_n_197,addr_ctrl_inst_n_198,addr_ctrl_inst_n_199}),
        .\state_reg[2]_0 (addr_ctrl_inst_n_136),
        .\state_reg[2]_1 (addr_ctrl_inst_n_137),
        .\state_reg[2]_10 (addr_ctrl_inst_n_146),
        .\state_reg[2]_11 (addr_ctrl_inst_n_147),
        .\state_reg[2]_12 (addr_ctrl_inst_n_148),
        .\state_reg[2]_13 (addr_ctrl_inst_n_149),
        .\state_reg[2]_14 (addr_ctrl_inst_n_150),
        .\state_reg[2]_15 (addr_ctrl_inst_n_151),
        .\state_reg[2]_16 (addr_ctrl_inst_n_152),
        .\state_reg[2]_17 (addr_ctrl_inst_n_153),
        .\state_reg[2]_18 (addr_ctrl_inst_n_154),
        .\state_reg[2]_19 (addr_ctrl_inst_n_155),
        .\state_reg[2]_2 (addr_ctrl_inst_n_138),
        .\state_reg[2]_20 (addr_ctrl_inst_n_156),
        .\state_reg[2]_21 (addr_ctrl_inst_n_157),
        .\state_reg[2]_22 (addr_ctrl_inst_n_158),
        .\state_reg[2]_23 (addr_ctrl_inst_n_159),
        .\state_reg[2]_24 (addr_ctrl_inst_n_160),
        .\state_reg[2]_25 (addr_ctrl_inst_n_161),
        .\state_reg[2]_26 (addr_ctrl_inst_n_162),
        .\state_reg[2]_27 (addr_ctrl_inst_n_163),
        .\state_reg[2]_28 (addr_ctrl_inst_n_164),
        .\state_reg[2]_29 (addr_ctrl_inst_n_165),
        .\state_reg[2]_3 (addr_ctrl_inst_n_139),
        .\state_reg[2]_30 (addr_ctrl_inst_n_166),
        .\state_reg[2]_31 (addr_ctrl_inst_n_167),
        .\state_reg[2]_4 (addr_ctrl_inst_n_140),
        .\state_reg[2]_5 (addr_ctrl_inst_n_141),
        .\state_reg[2]_6 (addr_ctrl_inst_n_142),
        .\state_reg[2]_7 (addr_ctrl_inst_n_143),
        .\state_reg[2]_8 (addr_ctrl_inst_n_144),
        .\state_reg[2]_9 (addr_ctrl_inst_n_145));
  top_mat_mul_0_0_alu_mac alu_mac_inst
       (.B({addr_ctrl_inst_n_32,addr_ctrl_inst_n_33,addr_ctrl_inst_n_34,addr_ctrl_inst_n_35,addr_ctrl_inst_n_36,addr_ctrl_inst_n_37,addr_ctrl_inst_n_38,addr_ctrl_inst_n_39,addr_ctrl_inst_n_40,addr_ctrl_inst_n_41,addr_ctrl_inst_n_42,addr_ctrl_inst_n_43,addr_ctrl_inst_n_44,addr_ctrl_inst_n_45,addr_ctrl_inst_n_46,addr_ctrl_inst_n_47,addr_ctrl_inst_n_48}),
        .O({addr_ctrl_inst_n_168,addr_ctrl_inst_n_169,addr_ctrl_inst_n_170,addr_ctrl_inst_n_171}),
        .clk(clk),
        .data_r(data_r),
        .mul_result__0_0({addr_ctrl_inst_n_49,addr_ctrl_inst_n_50,addr_ctrl_inst_n_51,addr_ctrl_inst_n_52,addr_ctrl_inst_n_53,addr_ctrl_inst_n_54,addr_ctrl_inst_n_55,addr_ctrl_inst_n_56,addr_ctrl_inst_n_57,addr_ctrl_inst_n_58,addr_ctrl_inst_n_59,addr_ctrl_inst_n_60,addr_ctrl_inst_n_61,addr_ctrl_inst_n_62,addr_ctrl_inst_n_63}),
        .p_0_in(p_0_in),
        .r_data(r_data),
        .reg_add_reg(reg_add_reg),
        .\reg_add_reg[11]_0 ({addr_ctrl_inst_n_176,addr_ctrl_inst_n_177,addr_ctrl_inst_n_178,addr_ctrl_inst_n_179}),
        .\reg_add_reg[15]_0 ({addr_ctrl_inst_n_180,addr_ctrl_inst_n_181,addr_ctrl_inst_n_182,addr_ctrl_inst_n_183}),
        .\reg_add_reg[19]_0 ({addr_ctrl_inst_n_184,addr_ctrl_inst_n_185,addr_ctrl_inst_n_186,addr_ctrl_inst_n_187}),
        .\reg_add_reg[23]_0 ({addr_ctrl_inst_n_188,addr_ctrl_inst_n_189,addr_ctrl_inst_n_190,addr_ctrl_inst_n_191}),
        .\reg_add_reg[27]_0 ({addr_ctrl_inst_n_192,addr_ctrl_inst_n_193,addr_ctrl_inst_n_194,addr_ctrl_inst_n_195}),
        .\reg_add_reg[31]_0 (addr_ctrl_inst_n_200),
        .\reg_add_reg[31]_1 ({addr_ctrl_inst_n_196,addr_ctrl_inst_n_197,addr_ctrl_inst_n_198,addr_ctrl_inst_n_199}),
        .\reg_add_reg[7]_0 ({addr_ctrl_inst_n_172,addr_ctrl_inst_n_173,addr_ctrl_inst_n_174,addr_ctrl_inst_n_175}));
  top_mat_mul_0_0_axis_ctrl_if axis_ctrl_inst
       (.D(addr_ctrl_inst_n_96),
        .\FSM_onehot_state_reg[0]_0 (addr_ctrl_inst_n_97),
        .\FSM_onehot_state_reg[4]_0 (addr_ctrl_inst_n_200),
        .Q({stat_axis_tvalid,update_err,start_stb,ctrl_axis_tready}),
        .\app_data_reg[0][31]_0 (\app_data_reg[0] ),
        .\app_data_reg[1][31]_0 (\app_data_reg[1] ),
        .clk(clk),
        .ctrl_axis_tdata(ctrl_axis_tdata),
        .ctrl_axis_tlast(ctrl_axis_tlast),
        .ctrl_axis_tvalid(ctrl_axis_tvalid),
        .err(err),
        .\err_reg_reg[0]_0 (addr_ctrl_inst_n_135),
        .\err_reg_reg[0]_1 (addr_ctrl_inst_n_133),
        .stat_axis_tdata(stat_axis_tdata),
        .stat_axis_tlast(stat_axis_tlast),
        .stat_axis_tready(stat_axis_tready));
  top_mat_mul_0_0_bram bram_a
       (.P(addr_a),
        .clk(clk),
        .in_axis_tdata(in_axis_tdata),
        .mem_inst_reg_0_0_0(addr_ctrl_inst_n_151),
        .mem_inst_reg_0_10_0(addr_ctrl_inst_n_161),
        .mem_inst_reg_0_11_0(addr_ctrl_inst_n_162),
        .mem_inst_reg_0_12_0(addr_ctrl_inst_n_163),
        .mem_inst_reg_0_13_0(addr_ctrl_inst_n_164),
        .mem_inst_reg_0_14_0(addr_ctrl_inst_n_165),
        .mem_inst_reg_0_15_0(addr_ctrl_inst_n_166),
        .mem_inst_reg_0_16_0(addr_ctrl_inst_n_167),
        .mem_inst_reg_0_17_0(addr_ctrl_inst_n_136),
        .mem_inst_reg_0_18_0(addr_ctrl_inst_n_137),
        .mem_inst_reg_0_19_0(addr_ctrl_inst_n_138),
        .mem_inst_reg_0_1_0(addr_ctrl_inst_n_152),
        .mem_inst_reg_0_20_0(addr_ctrl_inst_n_139),
        .mem_inst_reg_0_21_0(addr_ctrl_inst_n_140),
        .mem_inst_reg_0_22_0(addr_ctrl_inst_n_141),
        .mem_inst_reg_0_23_0(addr_ctrl_inst_n_142),
        .mem_inst_reg_0_24_0(addr_ctrl_inst_n_143),
        .mem_inst_reg_0_25_0(addr_ctrl_inst_n_144),
        .mem_inst_reg_0_26_0(addr_ctrl_inst_n_145),
        .mem_inst_reg_0_27_0(addr_ctrl_inst_n_146),
        .mem_inst_reg_0_28_0(addr_ctrl_inst_n_147),
        .mem_inst_reg_0_29_0(addr_ctrl_inst_n_148),
        .mem_inst_reg_0_2_0(addr_ctrl_inst_n_153),
        .mem_inst_reg_0_30_0(addr_ctrl_inst_n_149),
        .mem_inst_reg_0_31_0(addr_ctrl_inst_n_150),
        .mem_inst_reg_0_3_0(addr_ctrl_inst_n_154),
        .mem_inst_reg_0_4_0(addr_ctrl_inst_n_155),
        .mem_inst_reg_0_5_0(addr_ctrl_inst_n_156),
        .mem_inst_reg_0_6_0(addr_ctrl_inst_n_157),
        .mem_inst_reg_0_7_0(addr_ctrl_inst_n_158),
        .mem_inst_reg_0_8_0(addr_ctrl_inst_n_159),
        .mem_inst_reg_0_9_0(addr_ctrl_inst_n_160),
        .r_data_int(r_data_int));
  top_mat_mul_0_0_bram__parameterized0 bram_b
       (.Q(addr_b),
        .WEA(we_b),
        .clk(clk),
        .in_axis_tdata(in_axis_tdata),
        .r_data_int(r_data_int_0));
  top_mat_mul_0_0_bram__parameterized1 bram_r
       (.WEBWE(addr_ctrl_inst_n_15),
        .clk(clk),
        .data_r(data_r),
        .mem_inst_reg_0(addr_r),
        .r_data_int(r_data_int_1));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
