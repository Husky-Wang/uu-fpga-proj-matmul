//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
//Date        : Tue Jan  9 10:43:16 2024
//Host        : husky-laptop-devel running 64-bit unknown
//Command     : generate_target top.bd
//Design      : top
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "top,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=top,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=9,numReposBlks=9,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=1,da_board_cnt=2,da_clkrst_cnt=2,da_ps7_cnt=2,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "top.hwdef" *) 
module top
   (DDR_0_addr,
    DDR_0_ba,
    DDR_0_cas_n,
    DDR_0_ck_n,
    DDR_0_ck_p,
    DDR_0_cke,
    DDR_0_cs_n,
    DDR_0_dm,
    DDR_0_dq,
    DDR_0_dqs_n,
    DDR_0_dqs_p,
    DDR_0_odt,
    DDR_0_ras_n,
    DDR_0_reset_n,
    DDR_0_we_n,
    FIXED_IO_0_ddr_vrn,
    FIXED_IO_0_ddr_vrp,
    FIXED_IO_0_mio,
    FIXED_IO_0_ps_clk,
    FIXED_IO_0_ps_porb,
    FIXED_IO_0_ps_srstb);
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR_0 ADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DDR_0, AXI_ARBITRATION_SCHEME TDM, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 11, CAS_WRITE_LATENCY 11, CS_ENABLED true, DATA_MASK_ENABLED true, DATA_WIDTH 8, MEMORY_TYPE COMPONENTS, MEM_ADDR_MAP ROW_COLUMN_BANK, SLOT Single, TIMEPERIOD_PS 1250" *) inout [14:0]DDR_0_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR_0 BA" *) inout [2:0]DDR_0_ba;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR_0 CAS_N" *) inout DDR_0_cas_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR_0 CK_N" *) inout DDR_0_ck_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR_0 CK_P" *) inout DDR_0_ck_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR_0 CKE" *) inout DDR_0_cke;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR_0 CS_N" *) inout DDR_0_cs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR_0 DM" *) inout [3:0]DDR_0_dm;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR_0 DQ" *) inout [31:0]DDR_0_dq;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR_0 DQS_N" *) inout [3:0]DDR_0_dqs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR_0 DQS_P" *) inout [3:0]DDR_0_dqs_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR_0 ODT" *) inout DDR_0_odt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR_0 RAS_N" *) inout DDR_0_ras_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR_0 RESET_N" *) inout DDR_0_reset_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR_0 WE_N" *) inout DDR_0_we_n;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO_0 DDR_VRN" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME FIXED_IO_0, CAN_DEBUG false" *) inout FIXED_IO_0_ddr_vrn;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO_0 DDR_VRP" *) inout FIXED_IO_0_ddr_vrp;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO_0 MIO" *) inout [53:0]FIXED_IO_0_mio;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO_0 PS_CLK" *) inout FIXED_IO_0_ps_clk;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO_0 PS_PORB" *) inout FIXED_IO_0_ps_porb;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO_0 PS_SRSTB" *) inout FIXED_IO_0_ps_srstb;

  (* CONN_BUS_INFO = "axi_dma_0_M_AXIS_CNTRL xilinx.com:interface:axis:1.0 None TDATA" *) (* DONT_TOUCH *) wire [31:0]axi_dma_0_M_AXIS_CNTRL_TDATA;
  (* CONN_BUS_INFO = "axi_dma_0_M_AXIS_CNTRL xilinx.com:interface:axis:1.0 None TKEEP" *) (* DONT_TOUCH *) wire [3:0]axi_dma_0_M_AXIS_CNTRL_TKEEP;
  (* CONN_BUS_INFO = "axi_dma_0_M_AXIS_CNTRL xilinx.com:interface:axis:1.0 None TLAST" *) (* DONT_TOUCH *) wire axi_dma_0_M_AXIS_CNTRL_TLAST;
  (* CONN_BUS_INFO = "axi_dma_0_M_AXIS_CNTRL xilinx.com:interface:axis:1.0 None TREADY" *) (* DONT_TOUCH *) wire axi_dma_0_M_AXIS_CNTRL_TREADY;
  (* CONN_BUS_INFO = "axi_dma_0_M_AXIS_CNTRL xilinx.com:interface:axis:1.0 None TVALID" *) (* DONT_TOUCH *) wire axi_dma_0_M_AXIS_CNTRL_TVALID;
  (* CONN_BUS_INFO = "axi_dma_0_M_AXIS_MM2S xilinx.com:interface:axis:1.0 None TDATA" *) (* DONT_TOUCH *) wire [31:0]axi_dma_0_M_AXIS_MM2S_TDATA;
  (* CONN_BUS_INFO = "axi_dma_0_M_AXIS_MM2S xilinx.com:interface:axis:1.0 None TKEEP" *) (* DONT_TOUCH *) wire [3:0]axi_dma_0_M_AXIS_MM2S_TKEEP;
  (* CONN_BUS_INFO = "axi_dma_0_M_AXIS_MM2S xilinx.com:interface:axis:1.0 None TLAST" *) (* DONT_TOUCH *) wire axi_dma_0_M_AXIS_MM2S_TLAST;
  (* CONN_BUS_INFO = "axi_dma_0_M_AXIS_MM2S xilinx.com:interface:axis:1.0 None TREADY" *) (* DONT_TOUCH *) wire axi_dma_0_M_AXIS_MM2S_TREADY;
  (* CONN_BUS_INFO = "axi_dma_0_M_AXIS_MM2S xilinx.com:interface:axis:1.0 None TVALID" *) (* DONT_TOUCH *) wire axi_dma_0_M_AXIS_MM2S_TVALID;
  wire [31:0]axi_dma_0_M_AXI_ARADDR;
  wire [1:0]axi_dma_0_M_AXI_ARBURST;
  wire [3:0]axi_dma_0_M_AXI_ARCACHE;
  wire [7:0]axi_dma_0_M_AXI_ARLEN;
  wire [2:0]axi_dma_0_M_AXI_ARPROT;
  wire axi_dma_0_M_AXI_ARREADY;
  wire [2:0]axi_dma_0_M_AXI_ARSIZE;
  wire axi_dma_0_M_AXI_ARVALID;
  wire [31:0]axi_dma_0_M_AXI_AWADDR;
  wire [1:0]axi_dma_0_M_AXI_AWBURST;
  wire [3:0]axi_dma_0_M_AXI_AWCACHE;
  wire [7:0]axi_dma_0_M_AXI_AWLEN;
  wire [2:0]axi_dma_0_M_AXI_AWPROT;
  wire axi_dma_0_M_AXI_AWREADY;
  wire [2:0]axi_dma_0_M_AXI_AWSIZE;
  wire axi_dma_0_M_AXI_AWVALID;
  wire axi_dma_0_M_AXI_BREADY;
  wire [1:0]axi_dma_0_M_AXI_BRESP;
  wire axi_dma_0_M_AXI_BVALID;
  wire [31:0]axi_dma_0_M_AXI_RDATA;
  wire axi_dma_0_M_AXI_RLAST;
  wire axi_dma_0_M_AXI_RREADY;
  wire [1:0]axi_dma_0_M_AXI_RRESP;
  wire axi_dma_0_M_AXI_RVALID;
  wire [31:0]axi_dma_0_M_AXI_SG_ARADDR;
  wire [1:0]axi_dma_0_M_AXI_SG_ARBURST;
  wire [3:0]axi_dma_0_M_AXI_SG_ARCACHE;
  wire [7:0]axi_dma_0_M_AXI_SG_ARLEN;
  wire [2:0]axi_dma_0_M_AXI_SG_ARPROT;
  wire axi_dma_0_M_AXI_SG_ARREADY;
  wire [2:0]axi_dma_0_M_AXI_SG_ARSIZE;
  wire axi_dma_0_M_AXI_SG_ARVALID;
  wire [31:0]axi_dma_0_M_AXI_SG_AWADDR;
  wire [1:0]axi_dma_0_M_AXI_SG_AWBURST;
  wire [3:0]axi_dma_0_M_AXI_SG_AWCACHE;
  wire [7:0]axi_dma_0_M_AXI_SG_AWLEN;
  wire [2:0]axi_dma_0_M_AXI_SG_AWPROT;
  wire axi_dma_0_M_AXI_SG_AWREADY;
  wire [2:0]axi_dma_0_M_AXI_SG_AWSIZE;
  wire axi_dma_0_M_AXI_SG_AWVALID;
  wire axi_dma_0_M_AXI_SG_BREADY;
  wire [1:0]axi_dma_0_M_AXI_SG_BRESP;
  wire axi_dma_0_M_AXI_SG_BVALID;
  wire [31:0]axi_dma_0_M_AXI_SG_RDATA;
  wire axi_dma_0_M_AXI_SG_RLAST;
  wire axi_dma_0_M_AXI_SG_RREADY;
  wire [1:0]axi_dma_0_M_AXI_SG_RRESP;
  wire axi_dma_0_M_AXI_SG_RVALID;
  wire [31:0]axi_dma_0_M_AXI_SG_WDATA;
  wire axi_dma_0_M_AXI_SG_WLAST;
  wire axi_dma_0_M_AXI_SG_WREADY;
  wire [3:0]axi_dma_0_M_AXI_SG_WSTRB;
  wire axi_dma_0_M_AXI_SG_WVALID;
  wire [31:0]axi_dma_0_M_AXI_WDATA;
  wire axi_dma_0_M_AXI_WLAST;
  wire axi_dma_0_M_AXI_WREADY;
  wire [3:0]axi_dma_0_M_AXI_WSTRB;
  wire axi_dma_0_M_AXI_WVALID;
  wire axi_dma_0_mm2s_cntrl_reset_out_n;
  wire axi_dma_0_mm2s_introut;
  wire axi_dma_0_s2mm_introut;
  (* CONN_BUS_INFO = "mat_mul_0_out_axis xilinx.com:interface:axis:1.0 None TDATA" *) (* DONT_TOUCH *) wire [31:0]mat_mul_0_out_axis_TDATA;
  (* CONN_BUS_INFO = "mat_mul_0_out_axis xilinx.com:interface:axis:1.0 None TLAST" *) (* DONT_TOUCH *) wire mat_mul_0_out_axis_TLAST;
  (* CONN_BUS_INFO = "mat_mul_0_out_axis xilinx.com:interface:axis:1.0 None TREADY" *) (* DONT_TOUCH *) wire mat_mul_0_out_axis_TREADY;
  (* CONN_BUS_INFO = "mat_mul_0_out_axis xilinx.com:interface:axis:1.0 None TVALID" *) (* DONT_TOUCH *) wire mat_mul_0_out_axis_TVALID;
  (* CONN_BUS_INFO = "mat_mul_0_stat_axis xilinx.com:interface:axis:1.0 None TDATA" *) (* DONT_TOUCH *) wire [31:0]mat_mul_0_stat_axis_TDATA;
  (* CONN_BUS_INFO = "mat_mul_0_stat_axis xilinx.com:interface:axis:1.0 None TLAST" *) (* DONT_TOUCH *) wire mat_mul_0_stat_axis_TLAST;
  (* CONN_BUS_INFO = "mat_mul_0_stat_axis xilinx.com:interface:axis:1.0 None TREADY" *) (* DONT_TOUCH *) wire mat_mul_0_stat_axis_TREADY;
  (* CONN_BUS_INFO = "mat_mul_0_stat_axis xilinx.com:interface:axis:1.0 None TVALID" *) (* DONT_TOUCH *) wire mat_mul_0_stat_axis_TVALID;
  wire [0:0]proc_sys_reset_0_interconnect_aresetn;
  wire [0:0]proc_sys_reset_0_peripheral_aresetn;
  wire [14:0]processing_system7_0_DDR_ADDR;
  wire [2:0]processing_system7_0_DDR_BA;
  wire processing_system7_0_DDR_CAS_N;
  wire processing_system7_0_DDR_CKE;
  wire processing_system7_0_DDR_CK_N;
  wire processing_system7_0_DDR_CK_P;
  wire processing_system7_0_DDR_CS_N;
  wire [3:0]processing_system7_0_DDR_DM;
  wire [31:0]processing_system7_0_DDR_DQ;
  wire [3:0]processing_system7_0_DDR_DQS_N;
  wire [3:0]processing_system7_0_DDR_DQS_P;
  wire processing_system7_0_DDR_ODT;
  wire processing_system7_0_DDR_RAS_N;
  wire processing_system7_0_DDR_RESET_N;
  wire processing_system7_0_DDR_WE_N;
  wire processing_system7_0_FCLK_CLK0;
  wire processing_system7_0_FCLK_RESET0_N;
  wire processing_system7_0_FIXED_IO_DDR_VRN;
  wire processing_system7_0_FIXED_IO_DDR_VRP;
  wire [53:0]processing_system7_0_FIXED_IO_MIO;
  wire processing_system7_0_FIXED_IO_PS_CLK;
  wire processing_system7_0_FIXED_IO_PS_PORB;
  wire processing_system7_0_FIXED_IO_PS_SRSTB;
  wire [31:0]processing_system7_0_M_AXI_GP0_ARADDR;
  wire [1:0]processing_system7_0_M_AXI_GP0_ARBURST;
  wire [3:0]processing_system7_0_M_AXI_GP0_ARCACHE;
  wire [11:0]processing_system7_0_M_AXI_GP0_ARID;
  wire [3:0]processing_system7_0_M_AXI_GP0_ARLEN;
  wire [1:0]processing_system7_0_M_AXI_GP0_ARLOCK;
  wire [2:0]processing_system7_0_M_AXI_GP0_ARPROT;
  wire [3:0]processing_system7_0_M_AXI_GP0_ARQOS;
  wire processing_system7_0_M_AXI_GP0_ARREADY;
  wire [2:0]processing_system7_0_M_AXI_GP0_ARSIZE;
  wire processing_system7_0_M_AXI_GP0_ARVALID;
  wire [31:0]processing_system7_0_M_AXI_GP0_AWADDR;
  wire [1:0]processing_system7_0_M_AXI_GP0_AWBURST;
  wire [3:0]processing_system7_0_M_AXI_GP0_AWCACHE;
  wire [11:0]processing_system7_0_M_AXI_GP0_AWID;
  wire [3:0]processing_system7_0_M_AXI_GP0_AWLEN;
  wire [1:0]processing_system7_0_M_AXI_GP0_AWLOCK;
  wire [2:0]processing_system7_0_M_AXI_GP0_AWPROT;
  wire [3:0]processing_system7_0_M_AXI_GP0_AWQOS;
  wire processing_system7_0_M_AXI_GP0_AWREADY;
  wire [2:0]processing_system7_0_M_AXI_GP0_AWSIZE;
  wire processing_system7_0_M_AXI_GP0_AWVALID;
  wire [11:0]processing_system7_0_M_AXI_GP0_BID;
  wire processing_system7_0_M_AXI_GP0_BREADY;
  wire [1:0]processing_system7_0_M_AXI_GP0_BRESP;
  wire processing_system7_0_M_AXI_GP0_BVALID;
  wire [31:0]processing_system7_0_M_AXI_GP0_RDATA;
  wire [11:0]processing_system7_0_M_AXI_GP0_RID;
  wire processing_system7_0_M_AXI_GP0_RLAST;
  wire processing_system7_0_M_AXI_GP0_RREADY;
  wire [1:0]processing_system7_0_M_AXI_GP0_RRESP;
  wire processing_system7_0_M_AXI_GP0_RVALID;
  wire [31:0]processing_system7_0_M_AXI_GP0_WDATA;
  wire [11:0]processing_system7_0_M_AXI_GP0_WID;
  wire processing_system7_0_M_AXI_GP0_WLAST;
  wire processing_system7_0_M_AXI_GP0_WREADY;
  wire [3:0]processing_system7_0_M_AXI_GP0_WSTRB;
  wire processing_system7_0_M_AXI_GP0_WVALID;
  wire [31:0]smc_mem_payload_M00_AXI_ARADDR;
  wire [1:0]smc_mem_payload_M00_AXI_ARBURST;
  wire [3:0]smc_mem_payload_M00_AXI_ARCACHE;
  wire [3:0]smc_mem_payload_M00_AXI_ARLEN;
  wire [1:0]smc_mem_payload_M00_AXI_ARLOCK;
  wire [2:0]smc_mem_payload_M00_AXI_ARPROT;
  wire [3:0]smc_mem_payload_M00_AXI_ARQOS;
  wire smc_mem_payload_M00_AXI_ARREADY;
  wire [2:0]smc_mem_payload_M00_AXI_ARSIZE;
  wire smc_mem_payload_M00_AXI_ARVALID;
  wire [31:0]smc_mem_payload_M00_AXI_AWADDR;
  wire [1:0]smc_mem_payload_M00_AXI_AWBURST;
  wire [3:0]smc_mem_payload_M00_AXI_AWCACHE;
  wire [3:0]smc_mem_payload_M00_AXI_AWLEN;
  wire [1:0]smc_mem_payload_M00_AXI_AWLOCK;
  wire [2:0]smc_mem_payload_M00_AXI_AWPROT;
  wire [3:0]smc_mem_payload_M00_AXI_AWQOS;
  wire smc_mem_payload_M00_AXI_AWREADY;
  wire [2:0]smc_mem_payload_M00_AXI_AWSIZE;
  wire smc_mem_payload_M00_AXI_AWVALID;
  wire smc_mem_payload_M00_AXI_BREADY;
  wire [1:0]smc_mem_payload_M00_AXI_BRESP;
  wire smc_mem_payload_M00_AXI_BVALID;
  wire [31:0]smc_mem_payload_M00_AXI_RDATA;
  wire smc_mem_payload_M00_AXI_RLAST;
  wire smc_mem_payload_M00_AXI_RREADY;
  wire [1:0]smc_mem_payload_M00_AXI_RRESP;
  wire smc_mem_payload_M00_AXI_RVALID;
  wire [31:0]smc_mem_payload_M00_AXI_WDATA;
  wire smc_mem_payload_M00_AXI_WLAST;
  wire smc_mem_payload_M00_AXI_WREADY;
  wire [3:0]smc_mem_payload_M00_AXI_WSTRB;
  wire smc_mem_payload_M00_AXI_WVALID;
  wire [31:0]smc_mem_sg_M00_AXI_ARADDR;
  wire [1:0]smc_mem_sg_M00_AXI_ARBURST;
  wire [3:0]smc_mem_sg_M00_AXI_ARCACHE;
  wire [3:0]smc_mem_sg_M00_AXI_ARLEN;
  wire [1:0]smc_mem_sg_M00_AXI_ARLOCK;
  wire [2:0]smc_mem_sg_M00_AXI_ARPROT;
  wire [3:0]smc_mem_sg_M00_AXI_ARQOS;
  wire smc_mem_sg_M00_AXI_ARREADY;
  wire [2:0]smc_mem_sg_M00_AXI_ARSIZE;
  wire smc_mem_sg_M00_AXI_ARVALID;
  wire [31:0]smc_mem_sg_M00_AXI_AWADDR;
  wire [1:0]smc_mem_sg_M00_AXI_AWBURST;
  wire [3:0]smc_mem_sg_M00_AXI_AWCACHE;
  wire [3:0]smc_mem_sg_M00_AXI_AWLEN;
  wire [1:0]smc_mem_sg_M00_AXI_AWLOCK;
  wire [2:0]smc_mem_sg_M00_AXI_AWPROT;
  wire [3:0]smc_mem_sg_M00_AXI_AWQOS;
  wire smc_mem_sg_M00_AXI_AWREADY;
  wire [2:0]smc_mem_sg_M00_AXI_AWSIZE;
  wire smc_mem_sg_M00_AXI_AWVALID;
  wire smc_mem_sg_M00_AXI_BREADY;
  wire [1:0]smc_mem_sg_M00_AXI_BRESP;
  wire smc_mem_sg_M00_AXI_BVALID;
  wire [31:0]smc_mem_sg_M00_AXI_RDATA;
  wire smc_mem_sg_M00_AXI_RLAST;
  wire smc_mem_sg_M00_AXI_RREADY;
  wire [1:0]smc_mem_sg_M00_AXI_RRESP;
  wire smc_mem_sg_M00_AXI_RVALID;
  wire [31:0]smc_mem_sg_M00_AXI_WDATA;
  wire smc_mem_sg_M00_AXI_WLAST;
  wire smc_mem_sg_M00_AXI_WREADY;
  wire [3:0]smc_mem_sg_M00_AXI_WSTRB;
  wire smc_mem_sg_M00_AXI_WVALID;
  wire [9:0]smc_periph_M00_AXI_ARADDR;
  wire smc_periph_M00_AXI_ARREADY;
  wire smc_periph_M00_AXI_ARVALID;
  wire [9:0]smc_periph_M00_AXI_AWADDR;
  wire smc_periph_M00_AXI_AWREADY;
  wire smc_periph_M00_AXI_AWVALID;
  wire smc_periph_M00_AXI_BREADY;
  wire [1:0]smc_periph_M00_AXI_BRESP;
  wire smc_periph_M00_AXI_BVALID;
  wire [31:0]smc_periph_M00_AXI_RDATA;
  wire smc_periph_M00_AXI_RREADY;
  wire [1:0]smc_periph_M00_AXI_RRESP;
  wire smc_periph_M00_AXI_RVALID;
  wire [31:0]smc_periph_M00_AXI_WDATA;
  wire smc_periph_M00_AXI_WREADY;
  wire smc_periph_M00_AXI_WVALID;
  wire [1:0]xlconcat_0_dout;

  top_axi_dma_0_0 axi_dma_0
       (.axi_resetn(proc_sys_reset_0_peripheral_aresetn),
        .m_axi_mm2s_aclk(processing_system7_0_FCLK_CLK0),
        .m_axi_mm2s_araddr(axi_dma_0_M_AXI_ARADDR),
        .m_axi_mm2s_arburst(axi_dma_0_M_AXI_ARBURST),
        .m_axi_mm2s_arcache(axi_dma_0_M_AXI_ARCACHE),
        .m_axi_mm2s_arlen(axi_dma_0_M_AXI_ARLEN),
        .m_axi_mm2s_arprot(axi_dma_0_M_AXI_ARPROT),
        .m_axi_mm2s_arready(axi_dma_0_M_AXI_ARREADY),
        .m_axi_mm2s_arsize(axi_dma_0_M_AXI_ARSIZE),
        .m_axi_mm2s_arvalid(axi_dma_0_M_AXI_ARVALID),
        .m_axi_mm2s_rdata(axi_dma_0_M_AXI_RDATA),
        .m_axi_mm2s_rlast(axi_dma_0_M_AXI_RLAST),
        .m_axi_mm2s_rready(axi_dma_0_M_AXI_RREADY),
        .m_axi_mm2s_rresp(axi_dma_0_M_AXI_RRESP),
        .m_axi_mm2s_rvalid(axi_dma_0_M_AXI_RVALID),
        .m_axi_s2mm_aclk(processing_system7_0_FCLK_CLK0),
        .m_axi_s2mm_awaddr(axi_dma_0_M_AXI_AWADDR),
        .m_axi_s2mm_awburst(axi_dma_0_M_AXI_AWBURST),
        .m_axi_s2mm_awcache(axi_dma_0_M_AXI_AWCACHE),
        .m_axi_s2mm_awlen(axi_dma_0_M_AXI_AWLEN),
        .m_axi_s2mm_awprot(axi_dma_0_M_AXI_AWPROT),
        .m_axi_s2mm_awready(axi_dma_0_M_AXI_AWREADY),
        .m_axi_s2mm_awsize(axi_dma_0_M_AXI_AWSIZE),
        .m_axi_s2mm_awvalid(axi_dma_0_M_AXI_AWVALID),
        .m_axi_s2mm_bready(axi_dma_0_M_AXI_BREADY),
        .m_axi_s2mm_bresp(axi_dma_0_M_AXI_BRESP),
        .m_axi_s2mm_bvalid(axi_dma_0_M_AXI_BVALID),
        .m_axi_s2mm_wdata(axi_dma_0_M_AXI_WDATA),
        .m_axi_s2mm_wlast(axi_dma_0_M_AXI_WLAST),
        .m_axi_s2mm_wready(axi_dma_0_M_AXI_WREADY),
        .m_axi_s2mm_wstrb(axi_dma_0_M_AXI_WSTRB),
        .m_axi_s2mm_wvalid(axi_dma_0_M_AXI_WVALID),
        .m_axi_sg_aclk(processing_system7_0_FCLK_CLK0),
        .m_axi_sg_araddr(axi_dma_0_M_AXI_SG_ARADDR),
        .m_axi_sg_arburst(axi_dma_0_M_AXI_SG_ARBURST),
        .m_axi_sg_arcache(axi_dma_0_M_AXI_SG_ARCACHE),
        .m_axi_sg_arlen(axi_dma_0_M_AXI_SG_ARLEN),
        .m_axi_sg_arprot(axi_dma_0_M_AXI_SG_ARPROT),
        .m_axi_sg_arready(axi_dma_0_M_AXI_SG_ARREADY),
        .m_axi_sg_arsize(axi_dma_0_M_AXI_SG_ARSIZE),
        .m_axi_sg_arvalid(axi_dma_0_M_AXI_SG_ARVALID),
        .m_axi_sg_awaddr(axi_dma_0_M_AXI_SG_AWADDR),
        .m_axi_sg_awburst(axi_dma_0_M_AXI_SG_AWBURST),
        .m_axi_sg_awcache(axi_dma_0_M_AXI_SG_AWCACHE),
        .m_axi_sg_awlen(axi_dma_0_M_AXI_SG_AWLEN),
        .m_axi_sg_awprot(axi_dma_0_M_AXI_SG_AWPROT),
        .m_axi_sg_awready(axi_dma_0_M_AXI_SG_AWREADY),
        .m_axi_sg_awsize(axi_dma_0_M_AXI_SG_AWSIZE),
        .m_axi_sg_awvalid(axi_dma_0_M_AXI_SG_AWVALID),
        .m_axi_sg_bready(axi_dma_0_M_AXI_SG_BREADY),
        .m_axi_sg_bresp(axi_dma_0_M_AXI_SG_BRESP),
        .m_axi_sg_bvalid(axi_dma_0_M_AXI_SG_BVALID),
        .m_axi_sg_rdata(axi_dma_0_M_AXI_SG_RDATA),
        .m_axi_sg_rlast(axi_dma_0_M_AXI_SG_RLAST),
        .m_axi_sg_rready(axi_dma_0_M_AXI_SG_RREADY),
        .m_axi_sg_rresp(axi_dma_0_M_AXI_SG_RRESP),
        .m_axi_sg_rvalid(axi_dma_0_M_AXI_SG_RVALID),
        .m_axi_sg_wdata(axi_dma_0_M_AXI_SG_WDATA),
        .m_axi_sg_wlast(axi_dma_0_M_AXI_SG_WLAST),
        .m_axi_sg_wready(axi_dma_0_M_AXI_SG_WREADY),
        .m_axi_sg_wstrb(axi_dma_0_M_AXI_SG_WSTRB),
        .m_axi_sg_wvalid(axi_dma_0_M_AXI_SG_WVALID),
        .m_axis_mm2s_cntrl_tdata(axi_dma_0_M_AXIS_CNTRL_TDATA),
        .m_axis_mm2s_cntrl_tkeep(axi_dma_0_M_AXIS_CNTRL_TKEEP),
        .m_axis_mm2s_cntrl_tlast(axi_dma_0_M_AXIS_CNTRL_TLAST),
        .m_axis_mm2s_cntrl_tready(axi_dma_0_M_AXIS_CNTRL_TREADY),
        .m_axis_mm2s_cntrl_tvalid(axi_dma_0_M_AXIS_CNTRL_TVALID),
        .m_axis_mm2s_tdata(axi_dma_0_M_AXIS_MM2S_TDATA),
        .m_axis_mm2s_tkeep(axi_dma_0_M_AXIS_MM2S_TKEEP),
        .m_axis_mm2s_tlast(axi_dma_0_M_AXIS_MM2S_TLAST),
        .m_axis_mm2s_tready(axi_dma_0_M_AXIS_MM2S_TREADY),
        .m_axis_mm2s_tvalid(axi_dma_0_M_AXIS_MM2S_TVALID),
        .mm2s_cntrl_reset_out_n(axi_dma_0_mm2s_cntrl_reset_out_n),
        .mm2s_introut(axi_dma_0_mm2s_introut),
        .s2mm_introut(axi_dma_0_s2mm_introut),
        .s_axi_lite_aclk(processing_system7_0_FCLK_CLK0),
        .s_axi_lite_araddr(smc_periph_M00_AXI_ARADDR),
        .s_axi_lite_arready(smc_periph_M00_AXI_ARREADY),
        .s_axi_lite_arvalid(smc_periph_M00_AXI_ARVALID),
        .s_axi_lite_awaddr(smc_periph_M00_AXI_AWADDR),
        .s_axi_lite_awready(smc_periph_M00_AXI_AWREADY),
        .s_axi_lite_awvalid(smc_periph_M00_AXI_AWVALID),
        .s_axi_lite_bready(smc_periph_M00_AXI_BREADY),
        .s_axi_lite_bresp(smc_periph_M00_AXI_BRESP),
        .s_axi_lite_bvalid(smc_periph_M00_AXI_BVALID),
        .s_axi_lite_rdata(smc_periph_M00_AXI_RDATA),
        .s_axi_lite_rready(smc_periph_M00_AXI_RREADY),
        .s_axi_lite_rresp(smc_periph_M00_AXI_RRESP),
        .s_axi_lite_rvalid(smc_periph_M00_AXI_RVALID),
        .s_axi_lite_wdata(smc_periph_M00_AXI_WDATA),
        .s_axi_lite_wready(smc_periph_M00_AXI_WREADY),
        .s_axi_lite_wvalid(smc_periph_M00_AXI_WVALID),
        .s_axis_s2mm_sts_tdata(mat_mul_0_stat_axis_TDATA),
        .s_axis_s2mm_sts_tkeep({1'b1,1'b1,1'b1,1'b1}),
        .s_axis_s2mm_sts_tlast(mat_mul_0_stat_axis_TLAST),
        .s_axis_s2mm_sts_tready(mat_mul_0_stat_axis_TREADY),
        .s_axis_s2mm_sts_tvalid(mat_mul_0_stat_axis_TVALID),
        .s_axis_s2mm_tdata(mat_mul_0_out_axis_TDATA),
        .s_axis_s2mm_tkeep({1'b1,1'b1,1'b1,1'b1}),
        .s_axis_s2mm_tlast(mat_mul_0_out_axis_TLAST),
        .s_axis_s2mm_tready(mat_mul_0_out_axis_TREADY),
        .s_axis_s2mm_tvalid(mat_mul_0_out_axis_TVALID));
  top_mat_mul_0_0 mat_mul_0
       (.anrst(proc_sys_reset_0_interconnect_aresetn),
        .clk(processing_system7_0_FCLK_CLK0),
        .ctrl_axis_tdata(axi_dma_0_M_AXIS_CNTRL_TDATA),
        .ctrl_axis_tlast(axi_dma_0_M_AXIS_CNTRL_TLAST),
        .ctrl_axis_tready(axi_dma_0_M_AXIS_CNTRL_TREADY),
        .ctrl_axis_tvalid(axi_dma_0_M_AXIS_CNTRL_TVALID),
        .in_axis_tdata(axi_dma_0_M_AXIS_MM2S_TDATA),
        .in_axis_tlast(axi_dma_0_M_AXIS_MM2S_TLAST),
        .in_axis_tready(axi_dma_0_M_AXIS_MM2S_TREADY),
        .in_axis_tvalid(axi_dma_0_M_AXIS_MM2S_TVALID),
        .out_axis_tdata(mat_mul_0_out_axis_TDATA),
        .out_axis_tlast(mat_mul_0_out_axis_TLAST),
        .out_axis_tready(mat_mul_0_out_axis_TREADY),
        .out_axis_tvalid(mat_mul_0_out_axis_TVALID),
        .stat_axis_tdata(mat_mul_0_stat_axis_TDATA),
        .stat_axis_tlast(mat_mul_0_stat_axis_TLAST),
        .stat_axis_tready(mat_mul_0_stat_axis_TREADY),
        .stat_axis_tvalid(mat_mul_0_stat_axis_TVALID));
  top_proc_sys_reset_0_0 proc_sys_reset_0
       (.aux_reset_in(processing_system7_0_FCLK_RESET0_N),
        .dcm_locked(1'b1),
        .ext_reset_in(axi_dma_0_mm2s_cntrl_reset_out_n),
        .interconnect_aresetn(proc_sys_reset_0_interconnect_aresetn),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .slowest_sync_clk(processing_system7_0_FCLK_CLK0));
  top_processing_system7_0_1 processing_system7_0
       (.DDR_Addr(DDR_0_addr[14:0]),
        .DDR_BankAddr(DDR_0_ba[2:0]),
        .DDR_CAS_n(DDR_0_cas_n),
        .DDR_CKE(DDR_0_cke),
        .DDR_CS_n(DDR_0_cs_n),
        .DDR_Clk(DDR_0_ck_p),
        .DDR_Clk_n(DDR_0_ck_n),
        .DDR_DM(DDR_0_dm[3:0]),
        .DDR_DQ(DDR_0_dq[31:0]),
        .DDR_DQS(DDR_0_dqs_p[3:0]),
        .DDR_DQS_n(DDR_0_dqs_n[3:0]),
        .DDR_DRSTB(DDR_0_reset_n),
        .DDR_ODT(DDR_0_odt),
        .DDR_RAS_n(DDR_0_ras_n),
        .DDR_VRN(FIXED_IO_0_ddr_vrn),
        .DDR_VRP(FIXED_IO_0_ddr_vrp),
        .DDR_WEB(DDR_0_we_n),
        .FCLK_CLK0(processing_system7_0_FCLK_CLK0),
        .FCLK_RESET0_N(processing_system7_0_FCLK_RESET0_N),
        .IRQ_F2P(xlconcat_0_dout),
        .MIO(FIXED_IO_0_mio[53:0]),
        .M_AXI_GP0_ACLK(processing_system7_0_FCLK_CLK0),
        .M_AXI_GP0_ARADDR(processing_system7_0_M_AXI_GP0_ARADDR),
        .M_AXI_GP0_ARBURST(processing_system7_0_M_AXI_GP0_ARBURST),
        .M_AXI_GP0_ARCACHE(processing_system7_0_M_AXI_GP0_ARCACHE),
        .M_AXI_GP0_ARID(processing_system7_0_M_AXI_GP0_ARID),
        .M_AXI_GP0_ARLEN(processing_system7_0_M_AXI_GP0_ARLEN),
        .M_AXI_GP0_ARLOCK(processing_system7_0_M_AXI_GP0_ARLOCK),
        .M_AXI_GP0_ARPROT(processing_system7_0_M_AXI_GP0_ARPROT),
        .M_AXI_GP0_ARQOS(processing_system7_0_M_AXI_GP0_ARQOS),
        .M_AXI_GP0_ARREADY(processing_system7_0_M_AXI_GP0_ARREADY),
        .M_AXI_GP0_ARSIZE(processing_system7_0_M_AXI_GP0_ARSIZE),
        .M_AXI_GP0_ARVALID(processing_system7_0_M_AXI_GP0_ARVALID),
        .M_AXI_GP0_AWADDR(processing_system7_0_M_AXI_GP0_AWADDR),
        .M_AXI_GP0_AWBURST(processing_system7_0_M_AXI_GP0_AWBURST),
        .M_AXI_GP0_AWCACHE(processing_system7_0_M_AXI_GP0_AWCACHE),
        .M_AXI_GP0_AWID(processing_system7_0_M_AXI_GP0_AWID),
        .M_AXI_GP0_AWLEN(processing_system7_0_M_AXI_GP0_AWLEN),
        .M_AXI_GP0_AWLOCK(processing_system7_0_M_AXI_GP0_AWLOCK),
        .M_AXI_GP0_AWPROT(processing_system7_0_M_AXI_GP0_AWPROT),
        .M_AXI_GP0_AWQOS(processing_system7_0_M_AXI_GP0_AWQOS),
        .M_AXI_GP0_AWREADY(processing_system7_0_M_AXI_GP0_AWREADY),
        .M_AXI_GP0_AWSIZE(processing_system7_0_M_AXI_GP0_AWSIZE),
        .M_AXI_GP0_AWVALID(processing_system7_0_M_AXI_GP0_AWVALID),
        .M_AXI_GP0_BID(processing_system7_0_M_AXI_GP0_BID),
        .M_AXI_GP0_BREADY(processing_system7_0_M_AXI_GP0_BREADY),
        .M_AXI_GP0_BRESP(processing_system7_0_M_AXI_GP0_BRESP),
        .M_AXI_GP0_BVALID(processing_system7_0_M_AXI_GP0_BVALID),
        .M_AXI_GP0_RDATA(processing_system7_0_M_AXI_GP0_RDATA),
        .M_AXI_GP0_RID(processing_system7_0_M_AXI_GP0_RID),
        .M_AXI_GP0_RLAST(processing_system7_0_M_AXI_GP0_RLAST),
        .M_AXI_GP0_RREADY(processing_system7_0_M_AXI_GP0_RREADY),
        .M_AXI_GP0_RRESP(processing_system7_0_M_AXI_GP0_RRESP),
        .M_AXI_GP0_RVALID(processing_system7_0_M_AXI_GP0_RVALID),
        .M_AXI_GP0_WDATA(processing_system7_0_M_AXI_GP0_WDATA),
        .M_AXI_GP0_WID(processing_system7_0_M_AXI_GP0_WID),
        .M_AXI_GP0_WLAST(processing_system7_0_M_AXI_GP0_WLAST),
        .M_AXI_GP0_WREADY(processing_system7_0_M_AXI_GP0_WREADY),
        .M_AXI_GP0_WSTRB(processing_system7_0_M_AXI_GP0_WSTRB),
        .M_AXI_GP0_WVALID(processing_system7_0_M_AXI_GP0_WVALID),
        .PS_CLK(FIXED_IO_0_ps_clk),
        .PS_PORB(FIXED_IO_0_ps_porb),
        .PS_SRSTB(FIXED_IO_0_ps_srstb),
        .S_AXI_HP0_ACLK(processing_system7_0_FCLK_CLK0),
        .S_AXI_HP0_ARADDR(smc_mem_payload_M00_AXI_ARADDR),
        .S_AXI_HP0_ARBURST(smc_mem_payload_M00_AXI_ARBURST),
        .S_AXI_HP0_ARCACHE(smc_mem_payload_M00_AXI_ARCACHE),
        .S_AXI_HP0_ARID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP0_ARLEN(smc_mem_payload_M00_AXI_ARLEN),
        .S_AXI_HP0_ARLOCK(smc_mem_payload_M00_AXI_ARLOCK),
        .S_AXI_HP0_ARPROT(smc_mem_payload_M00_AXI_ARPROT),
        .S_AXI_HP0_ARQOS(smc_mem_payload_M00_AXI_ARQOS),
        .S_AXI_HP0_ARREADY(smc_mem_payload_M00_AXI_ARREADY),
        .S_AXI_HP0_ARSIZE(smc_mem_payload_M00_AXI_ARSIZE),
        .S_AXI_HP0_ARVALID(smc_mem_payload_M00_AXI_ARVALID),
        .S_AXI_HP0_AWADDR(smc_mem_payload_M00_AXI_AWADDR),
        .S_AXI_HP0_AWBURST(smc_mem_payload_M00_AXI_AWBURST),
        .S_AXI_HP0_AWCACHE(smc_mem_payload_M00_AXI_AWCACHE),
        .S_AXI_HP0_AWID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP0_AWLEN(smc_mem_payload_M00_AXI_AWLEN),
        .S_AXI_HP0_AWLOCK(smc_mem_payload_M00_AXI_AWLOCK),
        .S_AXI_HP0_AWPROT(smc_mem_payload_M00_AXI_AWPROT),
        .S_AXI_HP0_AWQOS(smc_mem_payload_M00_AXI_AWQOS),
        .S_AXI_HP0_AWREADY(smc_mem_payload_M00_AXI_AWREADY),
        .S_AXI_HP0_AWSIZE(smc_mem_payload_M00_AXI_AWSIZE),
        .S_AXI_HP0_AWVALID(smc_mem_payload_M00_AXI_AWVALID),
        .S_AXI_HP0_BREADY(smc_mem_payload_M00_AXI_BREADY),
        .S_AXI_HP0_BRESP(smc_mem_payload_M00_AXI_BRESP),
        .S_AXI_HP0_BVALID(smc_mem_payload_M00_AXI_BVALID),
        .S_AXI_HP0_RDATA(smc_mem_payload_M00_AXI_RDATA),
        .S_AXI_HP0_RDISSUECAP1_EN(1'b0),
        .S_AXI_HP0_RLAST(smc_mem_payload_M00_AXI_RLAST),
        .S_AXI_HP0_RREADY(smc_mem_payload_M00_AXI_RREADY),
        .S_AXI_HP0_RRESP(smc_mem_payload_M00_AXI_RRESP),
        .S_AXI_HP0_RVALID(smc_mem_payload_M00_AXI_RVALID),
        .S_AXI_HP0_WDATA(smc_mem_payload_M00_AXI_WDATA),
        .S_AXI_HP0_WID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP0_WLAST(smc_mem_payload_M00_AXI_WLAST),
        .S_AXI_HP0_WREADY(smc_mem_payload_M00_AXI_WREADY),
        .S_AXI_HP0_WRISSUECAP1_EN(1'b0),
        .S_AXI_HP0_WSTRB(smc_mem_payload_M00_AXI_WSTRB),
        .S_AXI_HP0_WVALID(smc_mem_payload_M00_AXI_WVALID),
        .S_AXI_HP2_ACLK(processing_system7_0_FCLK_CLK0),
        .S_AXI_HP2_ARADDR(smc_mem_sg_M00_AXI_ARADDR),
        .S_AXI_HP2_ARBURST(smc_mem_sg_M00_AXI_ARBURST),
        .S_AXI_HP2_ARCACHE(smc_mem_sg_M00_AXI_ARCACHE),
        .S_AXI_HP2_ARID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP2_ARLEN(smc_mem_sg_M00_AXI_ARLEN),
        .S_AXI_HP2_ARLOCK(smc_mem_sg_M00_AXI_ARLOCK),
        .S_AXI_HP2_ARPROT(smc_mem_sg_M00_AXI_ARPROT),
        .S_AXI_HP2_ARQOS(smc_mem_sg_M00_AXI_ARQOS),
        .S_AXI_HP2_ARREADY(smc_mem_sg_M00_AXI_ARREADY),
        .S_AXI_HP2_ARSIZE(smc_mem_sg_M00_AXI_ARSIZE),
        .S_AXI_HP2_ARVALID(smc_mem_sg_M00_AXI_ARVALID),
        .S_AXI_HP2_AWADDR(smc_mem_sg_M00_AXI_AWADDR),
        .S_AXI_HP2_AWBURST(smc_mem_sg_M00_AXI_AWBURST),
        .S_AXI_HP2_AWCACHE(smc_mem_sg_M00_AXI_AWCACHE),
        .S_AXI_HP2_AWID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP2_AWLEN(smc_mem_sg_M00_AXI_AWLEN),
        .S_AXI_HP2_AWLOCK(smc_mem_sg_M00_AXI_AWLOCK),
        .S_AXI_HP2_AWPROT(smc_mem_sg_M00_AXI_AWPROT),
        .S_AXI_HP2_AWQOS(smc_mem_sg_M00_AXI_AWQOS),
        .S_AXI_HP2_AWREADY(smc_mem_sg_M00_AXI_AWREADY),
        .S_AXI_HP2_AWSIZE(smc_mem_sg_M00_AXI_AWSIZE),
        .S_AXI_HP2_AWVALID(smc_mem_sg_M00_AXI_AWVALID),
        .S_AXI_HP2_BREADY(smc_mem_sg_M00_AXI_BREADY),
        .S_AXI_HP2_BRESP(smc_mem_sg_M00_AXI_BRESP),
        .S_AXI_HP2_BVALID(smc_mem_sg_M00_AXI_BVALID),
        .S_AXI_HP2_RDATA(smc_mem_sg_M00_AXI_RDATA),
        .S_AXI_HP2_RDISSUECAP1_EN(1'b0),
        .S_AXI_HP2_RLAST(smc_mem_sg_M00_AXI_RLAST),
        .S_AXI_HP2_RREADY(smc_mem_sg_M00_AXI_RREADY),
        .S_AXI_HP2_RRESP(smc_mem_sg_M00_AXI_RRESP),
        .S_AXI_HP2_RVALID(smc_mem_sg_M00_AXI_RVALID),
        .S_AXI_HP2_WDATA(smc_mem_sg_M00_AXI_WDATA),
        .S_AXI_HP2_WID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP2_WLAST(smc_mem_sg_M00_AXI_WLAST),
        .S_AXI_HP2_WREADY(smc_mem_sg_M00_AXI_WREADY),
        .S_AXI_HP2_WRISSUECAP1_EN(1'b0),
        .S_AXI_HP2_WSTRB(smc_mem_sg_M00_AXI_WSTRB),
        .S_AXI_HP2_WVALID(smc_mem_sg_M00_AXI_WVALID),
        .USB0_VBUS_PWRFAULT(1'b0));
  top_smartconnect_0_2 smc_mem_payload
       (.M00_AXI_araddr(smc_mem_payload_M00_AXI_ARADDR),
        .M00_AXI_arburst(smc_mem_payload_M00_AXI_ARBURST),
        .M00_AXI_arcache(smc_mem_payload_M00_AXI_ARCACHE),
        .M00_AXI_arlen(smc_mem_payload_M00_AXI_ARLEN),
        .M00_AXI_arlock(smc_mem_payload_M00_AXI_ARLOCK),
        .M00_AXI_arprot(smc_mem_payload_M00_AXI_ARPROT),
        .M00_AXI_arqos(smc_mem_payload_M00_AXI_ARQOS),
        .M00_AXI_arready(smc_mem_payload_M00_AXI_ARREADY),
        .M00_AXI_arsize(smc_mem_payload_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(smc_mem_payload_M00_AXI_ARVALID),
        .M00_AXI_awaddr(smc_mem_payload_M00_AXI_AWADDR),
        .M00_AXI_awburst(smc_mem_payload_M00_AXI_AWBURST),
        .M00_AXI_awcache(smc_mem_payload_M00_AXI_AWCACHE),
        .M00_AXI_awlen(smc_mem_payload_M00_AXI_AWLEN),
        .M00_AXI_awlock(smc_mem_payload_M00_AXI_AWLOCK),
        .M00_AXI_awprot(smc_mem_payload_M00_AXI_AWPROT),
        .M00_AXI_awqos(smc_mem_payload_M00_AXI_AWQOS),
        .M00_AXI_awready(smc_mem_payload_M00_AXI_AWREADY),
        .M00_AXI_awsize(smc_mem_payload_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(smc_mem_payload_M00_AXI_AWVALID),
        .M00_AXI_bready(smc_mem_payload_M00_AXI_BREADY),
        .M00_AXI_bresp(smc_mem_payload_M00_AXI_BRESP),
        .M00_AXI_bvalid(smc_mem_payload_M00_AXI_BVALID),
        .M00_AXI_rdata(smc_mem_payload_M00_AXI_RDATA),
        .M00_AXI_rlast(smc_mem_payload_M00_AXI_RLAST),
        .M00_AXI_rready(smc_mem_payload_M00_AXI_RREADY),
        .M00_AXI_rresp(smc_mem_payload_M00_AXI_RRESP),
        .M00_AXI_rvalid(smc_mem_payload_M00_AXI_RVALID),
        .M00_AXI_wdata(smc_mem_payload_M00_AXI_WDATA),
        .M00_AXI_wlast(smc_mem_payload_M00_AXI_WLAST),
        .M00_AXI_wready(smc_mem_payload_M00_AXI_WREADY),
        .M00_AXI_wstrb(smc_mem_payload_M00_AXI_WSTRB),
        .M00_AXI_wvalid(smc_mem_payload_M00_AXI_WVALID),
        .S00_AXI_araddr(axi_dma_0_M_AXI_ARADDR),
        .S00_AXI_arburst(axi_dma_0_M_AXI_ARBURST),
        .S00_AXI_arcache(axi_dma_0_M_AXI_ARCACHE),
        .S00_AXI_arlen(axi_dma_0_M_AXI_ARLEN),
        .S00_AXI_arlock(1'b0),
        .S00_AXI_arprot(axi_dma_0_M_AXI_ARPROT),
        .S00_AXI_arqos({1'b0,1'b0,1'b0,1'b0}),
        .S00_AXI_arready(axi_dma_0_M_AXI_ARREADY),
        .S00_AXI_arsize(axi_dma_0_M_AXI_ARSIZE),
        .S00_AXI_arvalid(axi_dma_0_M_AXI_ARVALID),
        .S00_AXI_awaddr(axi_dma_0_M_AXI_AWADDR),
        .S00_AXI_awburst(axi_dma_0_M_AXI_AWBURST),
        .S00_AXI_awcache(axi_dma_0_M_AXI_AWCACHE),
        .S00_AXI_awlen(axi_dma_0_M_AXI_AWLEN),
        .S00_AXI_awlock(1'b0),
        .S00_AXI_awprot(axi_dma_0_M_AXI_AWPROT),
        .S00_AXI_awqos({1'b0,1'b0,1'b0,1'b0}),
        .S00_AXI_awready(axi_dma_0_M_AXI_AWREADY),
        .S00_AXI_awsize(axi_dma_0_M_AXI_AWSIZE),
        .S00_AXI_awvalid(axi_dma_0_M_AXI_AWVALID),
        .S00_AXI_bready(axi_dma_0_M_AXI_BREADY),
        .S00_AXI_bresp(axi_dma_0_M_AXI_BRESP),
        .S00_AXI_bvalid(axi_dma_0_M_AXI_BVALID),
        .S00_AXI_rdata(axi_dma_0_M_AXI_RDATA),
        .S00_AXI_rlast(axi_dma_0_M_AXI_RLAST),
        .S00_AXI_rready(axi_dma_0_M_AXI_RREADY),
        .S00_AXI_rresp(axi_dma_0_M_AXI_RRESP),
        .S00_AXI_rvalid(axi_dma_0_M_AXI_RVALID),
        .S00_AXI_wdata(axi_dma_0_M_AXI_WDATA),
        .S00_AXI_wlast(axi_dma_0_M_AXI_WLAST),
        .S00_AXI_wready(axi_dma_0_M_AXI_WREADY),
        .S00_AXI_wstrb(axi_dma_0_M_AXI_WSTRB),
        .S00_AXI_wvalid(axi_dma_0_M_AXI_WVALID),
        .aclk(processing_system7_0_FCLK_CLK0),
        .aresetn(proc_sys_reset_0_interconnect_aresetn));
  top_smartconnect_0_1 smc_mem_sg
       (.M00_AXI_araddr(smc_mem_sg_M00_AXI_ARADDR),
        .M00_AXI_arburst(smc_mem_sg_M00_AXI_ARBURST),
        .M00_AXI_arcache(smc_mem_sg_M00_AXI_ARCACHE),
        .M00_AXI_arlen(smc_mem_sg_M00_AXI_ARLEN),
        .M00_AXI_arlock(smc_mem_sg_M00_AXI_ARLOCK),
        .M00_AXI_arprot(smc_mem_sg_M00_AXI_ARPROT),
        .M00_AXI_arqos(smc_mem_sg_M00_AXI_ARQOS),
        .M00_AXI_arready(smc_mem_sg_M00_AXI_ARREADY),
        .M00_AXI_arsize(smc_mem_sg_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(smc_mem_sg_M00_AXI_ARVALID),
        .M00_AXI_awaddr(smc_mem_sg_M00_AXI_AWADDR),
        .M00_AXI_awburst(smc_mem_sg_M00_AXI_AWBURST),
        .M00_AXI_awcache(smc_mem_sg_M00_AXI_AWCACHE),
        .M00_AXI_awlen(smc_mem_sg_M00_AXI_AWLEN),
        .M00_AXI_awlock(smc_mem_sg_M00_AXI_AWLOCK),
        .M00_AXI_awprot(smc_mem_sg_M00_AXI_AWPROT),
        .M00_AXI_awqos(smc_mem_sg_M00_AXI_AWQOS),
        .M00_AXI_awready(smc_mem_sg_M00_AXI_AWREADY),
        .M00_AXI_awsize(smc_mem_sg_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(smc_mem_sg_M00_AXI_AWVALID),
        .M00_AXI_bready(smc_mem_sg_M00_AXI_BREADY),
        .M00_AXI_bresp(smc_mem_sg_M00_AXI_BRESP),
        .M00_AXI_bvalid(smc_mem_sg_M00_AXI_BVALID),
        .M00_AXI_rdata(smc_mem_sg_M00_AXI_RDATA),
        .M00_AXI_rlast(smc_mem_sg_M00_AXI_RLAST),
        .M00_AXI_rready(smc_mem_sg_M00_AXI_RREADY),
        .M00_AXI_rresp(smc_mem_sg_M00_AXI_RRESP),
        .M00_AXI_rvalid(smc_mem_sg_M00_AXI_RVALID),
        .M00_AXI_wdata(smc_mem_sg_M00_AXI_WDATA),
        .M00_AXI_wlast(smc_mem_sg_M00_AXI_WLAST),
        .M00_AXI_wready(smc_mem_sg_M00_AXI_WREADY),
        .M00_AXI_wstrb(smc_mem_sg_M00_AXI_WSTRB),
        .M00_AXI_wvalid(smc_mem_sg_M00_AXI_WVALID),
        .S00_AXI_araddr(axi_dma_0_M_AXI_SG_ARADDR),
        .S00_AXI_arburst(axi_dma_0_M_AXI_SG_ARBURST),
        .S00_AXI_arcache(axi_dma_0_M_AXI_SG_ARCACHE),
        .S00_AXI_arlen(axi_dma_0_M_AXI_SG_ARLEN),
        .S00_AXI_arlock(1'b0),
        .S00_AXI_arprot(axi_dma_0_M_AXI_SG_ARPROT),
        .S00_AXI_arqos({1'b0,1'b0,1'b0,1'b0}),
        .S00_AXI_arready(axi_dma_0_M_AXI_SG_ARREADY),
        .S00_AXI_arsize(axi_dma_0_M_AXI_SG_ARSIZE),
        .S00_AXI_arvalid(axi_dma_0_M_AXI_SG_ARVALID),
        .S00_AXI_awaddr(axi_dma_0_M_AXI_SG_AWADDR),
        .S00_AXI_awburst(axi_dma_0_M_AXI_SG_AWBURST),
        .S00_AXI_awcache(axi_dma_0_M_AXI_SG_AWCACHE),
        .S00_AXI_awlen(axi_dma_0_M_AXI_SG_AWLEN),
        .S00_AXI_awlock(1'b0),
        .S00_AXI_awprot(axi_dma_0_M_AXI_SG_AWPROT),
        .S00_AXI_awqos({1'b0,1'b0,1'b0,1'b0}),
        .S00_AXI_awready(axi_dma_0_M_AXI_SG_AWREADY),
        .S00_AXI_awsize(axi_dma_0_M_AXI_SG_AWSIZE),
        .S00_AXI_awvalid(axi_dma_0_M_AXI_SG_AWVALID),
        .S00_AXI_bready(axi_dma_0_M_AXI_SG_BREADY),
        .S00_AXI_bresp(axi_dma_0_M_AXI_SG_BRESP),
        .S00_AXI_bvalid(axi_dma_0_M_AXI_SG_BVALID),
        .S00_AXI_rdata(axi_dma_0_M_AXI_SG_RDATA),
        .S00_AXI_rlast(axi_dma_0_M_AXI_SG_RLAST),
        .S00_AXI_rready(axi_dma_0_M_AXI_SG_RREADY),
        .S00_AXI_rresp(axi_dma_0_M_AXI_SG_RRESP),
        .S00_AXI_rvalid(axi_dma_0_M_AXI_SG_RVALID),
        .S00_AXI_wdata(axi_dma_0_M_AXI_SG_WDATA),
        .S00_AXI_wlast(axi_dma_0_M_AXI_SG_WLAST),
        .S00_AXI_wready(axi_dma_0_M_AXI_SG_WREADY),
        .S00_AXI_wstrb(axi_dma_0_M_AXI_SG_WSTRB),
        .S00_AXI_wvalid(axi_dma_0_M_AXI_SG_WVALID),
        .aclk(processing_system7_0_FCLK_CLK0),
        .aresetn(proc_sys_reset_0_interconnect_aresetn));
  top_smartconnect_0_0 smc_periph
       (.M00_AXI_araddr(smc_periph_M00_AXI_ARADDR),
        .M00_AXI_arready(smc_periph_M00_AXI_ARREADY),
        .M00_AXI_arvalid(smc_periph_M00_AXI_ARVALID),
        .M00_AXI_awaddr(smc_periph_M00_AXI_AWADDR),
        .M00_AXI_awready(smc_periph_M00_AXI_AWREADY),
        .M00_AXI_awvalid(smc_periph_M00_AXI_AWVALID),
        .M00_AXI_bready(smc_periph_M00_AXI_BREADY),
        .M00_AXI_bresp(smc_periph_M00_AXI_BRESP),
        .M00_AXI_bvalid(smc_periph_M00_AXI_BVALID),
        .M00_AXI_rdata(smc_periph_M00_AXI_RDATA),
        .M00_AXI_rready(smc_periph_M00_AXI_RREADY),
        .M00_AXI_rresp(smc_periph_M00_AXI_RRESP),
        .M00_AXI_rvalid(smc_periph_M00_AXI_RVALID),
        .M00_AXI_wdata(smc_periph_M00_AXI_WDATA),
        .M00_AXI_wready(smc_periph_M00_AXI_WREADY),
        .M00_AXI_wvalid(smc_periph_M00_AXI_WVALID),
        .S00_AXI_araddr(processing_system7_0_M_AXI_GP0_ARADDR),
        .S00_AXI_arburst(processing_system7_0_M_AXI_GP0_ARBURST),
        .S00_AXI_arcache(processing_system7_0_M_AXI_GP0_ARCACHE),
        .S00_AXI_arid(processing_system7_0_M_AXI_GP0_ARID),
        .S00_AXI_arlen(processing_system7_0_M_AXI_GP0_ARLEN),
        .S00_AXI_arlock(processing_system7_0_M_AXI_GP0_ARLOCK),
        .S00_AXI_arprot(processing_system7_0_M_AXI_GP0_ARPROT),
        .S00_AXI_arqos(processing_system7_0_M_AXI_GP0_ARQOS),
        .S00_AXI_arready(processing_system7_0_M_AXI_GP0_ARREADY),
        .S00_AXI_arsize(processing_system7_0_M_AXI_GP0_ARSIZE),
        .S00_AXI_arvalid(processing_system7_0_M_AXI_GP0_ARVALID),
        .S00_AXI_awaddr(processing_system7_0_M_AXI_GP0_AWADDR),
        .S00_AXI_awburst(processing_system7_0_M_AXI_GP0_AWBURST),
        .S00_AXI_awcache(processing_system7_0_M_AXI_GP0_AWCACHE),
        .S00_AXI_awid(processing_system7_0_M_AXI_GP0_AWID),
        .S00_AXI_awlen(processing_system7_0_M_AXI_GP0_AWLEN),
        .S00_AXI_awlock(processing_system7_0_M_AXI_GP0_AWLOCK),
        .S00_AXI_awprot(processing_system7_0_M_AXI_GP0_AWPROT),
        .S00_AXI_awqos(processing_system7_0_M_AXI_GP0_AWQOS),
        .S00_AXI_awready(processing_system7_0_M_AXI_GP0_AWREADY),
        .S00_AXI_awsize(processing_system7_0_M_AXI_GP0_AWSIZE),
        .S00_AXI_awvalid(processing_system7_0_M_AXI_GP0_AWVALID),
        .S00_AXI_bid(processing_system7_0_M_AXI_GP0_BID),
        .S00_AXI_bready(processing_system7_0_M_AXI_GP0_BREADY),
        .S00_AXI_bresp(processing_system7_0_M_AXI_GP0_BRESP),
        .S00_AXI_bvalid(processing_system7_0_M_AXI_GP0_BVALID),
        .S00_AXI_rdata(processing_system7_0_M_AXI_GP0_RDATA),
        .S00_AXI_rid(processing_system7_0_M_AXI_GP0_RID),
        .S00_AXI_rlast(processing_system7_0_M_AXI_GP0_RLAST),
        .S00_AXI_rready(processing_system7_0_M_AXI_GP0_RREADY),
        .S00_AXI_rresp(processing_system7_0_M_AXI_GP0_RRESP),
        .S00_AXI_rvalid(processing_system7_0_M_AXI_GP0_RVALID),
        .S00_AXI_wdata(processing_system7_0_M_AXI_GP0_WDATA),
        .S00_AXI_wid(processing_system7_0_M_AXI_GP0_WID),
        .S00_AXI_wlast(processing_system7_0_M_AXI_GP0_WLAST),
        .S00_AXI_wready(processing_system7_0_M_AXI_GP0_WREADY),
        .S00_AXI_wstrb(processing_system7_0_M_AXI_GP0_WSTRB),
        .S00_AXI_wvalid(processing_system7_0_M_AXI_GP0_WVALID),
        .aclk(processing_system7_0_FCLK_CLK0),
        .aresetn(proc_sys_reset_0_interconnect_aresetn));
  top_system_ila_0_0 system_ila_0
       (.SLOT_0_AXIS_tdata(axi_dma_0_M_AXIS_CNTRL_TDATA),
        .SLOT_0_AXIS_tkeep(axi_dma_0_M_AXIS_CNTRL_TKEEP),
        .SLOT_0_AXIS_tlast(axi_dma_0_M_AXIS_CNTRL_TLAST),
        .SLOT_0_AXIS_tready(axi_dma_0_M_AXIS_CNTRL_TREADY),
        .SLOT_0_AXIS_tvalid(axi_dma_0_M_AXIS_CNTRL_TVALID),
        .SLOT_1_AXIS_tdata(mat_mul_0_stat_axis_TDATA),
        .SLOT_1_AXIS_tlast(mat_mul_0_stat_axis_TLAST),
        .SLOT_1_AXIS_tready(mat_mul_0_stat_axis_TREADY),
        .SLOT_1_AXIS_tvalid(mat_mul_0_stat_axis_TVALID),
        .SLOT_2_AXIS_tdata(axi_dma_0_M_AXIS_MM2S_TDATA),
        .SLOT_2_AXIS_tkeep(axi_dma_0_M_AXIS_MM2S_TKEEP),
        .SLOT_2_AXIS_tlast(axi_dma_0_M_AXIS_MM2S_TLAST),
        .SLOT_2_AXIS_tready(axi_dma_0_M_AXIS_MM2S_TREADY),
        .SLOT_2_AXIS_tvalid(axi_dma_0_M_AXIS_MM2S_TVALID),
        .SLOT_3_AXIS_tdata(mat_mul_0_out_axis_TDATA),
        .SLOT_3_AXIS_tlast(mat_mul_0_out_axis_TLAST),
        .SLOT_3_AXIS_tready(mat_mul_0_out_axis_TREADY),
        .SLOT_3_AXIS_tvalid(mat_mul_0_out_axis_TVALID),
        .clk(processing_system7_0_FCLK_CLK0),
        .probe0(1'b0),
        .probe1(1'b0),
        .resetn(proc_sys_reset_0_peripheral_aresetn));
  top_xlconcat_0_0 xlconcat_0
       (.In0(axi_dma_0_mm2s_introut),
        .In1(axi_dma_0_s2mm_introut),
        .dout(xlconcat_0_dout));
endmodule
