// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Mon Jan  8 05:57:50 2024
// Host        : husky-laptop-devel running 64-bit unknown
// Command     : write_verilog -force -mode synth_stub
//               /localstorage/Temporary/UU/Embedded/FPGA/repo/uu-fpga-matmul/hw/uu-fpga-matmul.gen/sources_1/bd/top/ip/top_mat_mul_0_0/top_mat_mul_0_0_stub.v
// Design      : top_mat_mul_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z007sclg225-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "mat_mul,Vivado 2023.1" *)
module top_mat_mul_0_0(clk, anrst, ctrl_axis_tready, ctrl_axis_tvalid, 
  ctrl_axis_tlast, ctrl_axis_tdata, stat_axis_tready, stat_axis_tvalid, stat_axis_tlast, 
  stat_axis_tdata, in_axis_tready, in_axis_tvalid, in_axis_tlast, in_axis_tdata, 
  out_axis_tready, out_axis_tvalid, out_axis_tlast, out_axis_tdata)
/* synthesis syn_black_box black_box_pad_pin="anrst,ctrl_axis_tready,ctrl_axis_tvalid,ctrl_axis_tlast,ctrl_axis_tdata[31:0],stat_axis_tready,stat_axis_tvalid,stat_axis_tlast,stat_axis_tdata[31:0],in_axis_tready,in_axis_tvalid,in_axis_tlast,in_axis_tdata[31:0],out_axis_tready,out_axis_tvalid,out_axis_tlast,out_axis_tdata[31:0]" */
/* synthesis syn_force_seq_prim="clk" */;
  input clk /* synthesis syn_isclock = 1 */;
  input anrst;
  output ctrl_axis_tready;
  input ctrl_axis_tvalid;
  input ctrl_axis_tlast;
  input [31:0]ctrl_axis_tdata;
  input stat_axis_tready;
  output stat_axis_tvalid;
  output stat_axis_tlast;
  output [31:0]stat_axis_tdata;
  output in_axis_tready;
  input in_axis_tvalid;
  input in_axis_tlast;
  input [31:0]in_axis_tdata;
  input out_axis_tready;
  output out_axis_tvalid;
  output out_axis_tlast;
  output [31:0]out_axis_tdata;
endmodule
