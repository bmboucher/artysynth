// (c) Copyright 1995-2020 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:module_ref:multi_oscillator_top:1.0
// IP Revision: 1

(* X_CORE_INFO = "multi_oscillator_top,Vivado 2020.1" *)
(* CHECK_LICENSE_TYPE = "top_multi_oscillator_top_0_0,multi_oscillator_top,{}" *)
(* CORE_GENERATION_INFO = "top_multi_oscillator_top_0_0,multi_oscillator_top,{x_ipProduct=Vivado 2020.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=multi_oscillator_top,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_CTRL_AXI_DATA_WIDTH=32,C_CTRL_AXI_ADDR_WIDTH=7}" *)
(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module top_multi_oscillator_top_0_0 (
  ctrl_axi_aclk,
  ctrl_axi_aresetn,
  ctrl_axi_awaddr,
  ctrl_axi_awprot,
  ctrl_axi_awvalid,
  ctrl_axi_awready,
  ctrl_axi_wdata,
  ctrl_axi_wstrb,
  ctrl_axi_wvalid,
  ctrl_axi_wready,
  ctrl_axi_bresp,
  ctrl_axi_bvalid,
  ctrl_axi_bready,
  ctrl_axi_araddr,
  ctrl_axi_arprot,
  ctrl_axi_arvalid,
  ctrl_axi_arready,
  ctrl_axi_rdata,
  ctrl_axi_rresp,
  ctrl_axi_rvalid,
  ctrl_axi_rready
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ctrl_axi_aclk, ASSOCIATED_BUSIF ctrl_axi, ASSOCIATED_RESET ctrl_axi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_clk_out1, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ctrl_axi_aclk CLK" *)
input wire ctrl_axi_aclk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ctrl_axi_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ctrl_axi_aresetn RST" *)
input wire ctrl_axi_aresetn;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ctrl_axi AWADDR" *)
input wire [6 : 0] ctrl_axi_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ctrl_axi AWPROT" *)
input wire [2 : 0] ctrl_axi_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ctrl_axi AWVALID" *)
input wire ctrl_axi_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ctrl_axi AWREADY" *)
output wire ctrl_axi_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ctrl_axi WDATA" *)
input wire [31 : 0] ctrl_axi_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ctrl_axi WSTRB" *)
input wire [3 : 0] ctrl_axi_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ctrl_axi WVALID" *)
input wire ctrl_axi_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ctrl_axi WREADY" *)
output wire ctrl_axi_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ctrl_axi BRESP" *)
output wire [1 : 0] ctrl_axi_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ctrl_axi BVALID" *)
output wire ctrl_axi_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ctrl_axi BREADY" *)
input wire ctrl_axi_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ctrl_axi ARADDR" *)
input wire [6 : 0] ctrl_axi_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ctrl_axi ARPROT" *)
input wire [2 : 0] ctrl_axi_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ctrl_axi ARVALID" *)
input wire ctrl_axi_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ctrl_axi ARREADY" *)
output wire ctrl_axi_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ctrl_axi RDATA" *)
output wire [31 : 0] ctrl_axi_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ctrl_axi RRESP" *)
output wire [1 : 0] ctrl_axi_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ctrl_axi RVALID" *)
output wire ctrl_axi_rvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ctrl_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 7, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /clk_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RU\
SER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ctrl_axi RREADY" *)
input wire ctrl_axi_rready;

  multi_oscillator_top #(
    .C_CTRL_AXI_DATA_WIDTH(32),
    .C_CTRL_AXI_ADDR_WIDTH(7)
  ) inst (
    .ctrl_axi_aclk(ctrl_axi_aclk),
    .ctrl_axi_aresetn(ctrl_axi_aresetn),
    .ctrl_axi_awaddr(ctrl_axi_awaddr),
    .ctrl_axi_awprot(ctrl_axi_awprot),
    .ctrl_axi_awvalid(ctrl_axi_awvalid),
    .ctrl_axi_awready(ctrl_axi_awready),
    .ctrl_axi_wdata(ctrl_axi_wdata),
    .ctrl_axi_wstrb(ctrl_axi_wstrb),
    .ctrl_axi_wvalid(ctrl_axi_wvalid),
    .ctrl_axi_wready(ctrl_axi_wready),
    .ctrl_axi_bresp(ctrl_axi_bresp),
    .ctrl_axi_bvalid(ctrl_axi_bvalid),
    .ctrl_axi_bready(ctrl_axi_bready),
    .ctrl_axi_araddr(ctrl_axi_araddr),
    .ctrl_axi_arprot(ctrl_axi_arprot),
    .ctrl_axi_arvalid(ctrl_axi_arvalid),
    .ctrl_axi_arready(ctrl_axi_arready),
    .ctrl_axi_rdata(ctrl_axi_rdata),
    .ctrl_axi_rresp(ctrl_axi_rresp),
    .ctrl_axi_rvalid(ctrl_axi_rvalid),
    .ctrl_axi_rready(ctrl_axi_rready)
  );
endmodule
