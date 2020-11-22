
`timescale 1 ns / 1 ps

	module multi_oscillator_top #
	(
		// Users to add parameters here

		// User parameters ends
		// Do not modify the parameters beyond this line


		// Parameters of Axi Slave Bus Interface CTRL_AXI
		parameter integer C_CTRL_AXI_DATA_WIDTH	= 32,
		parameter integer C_CTRL_AXI_ADDR_WIDTH	= 7
	)
	(
		// Users to add ports here

		// User ports ends
		// Do not modify the ports beyond this line


		// Ports of Axi Slave Bus Interface CTRL_AXI
		input wire  ctrl_axi_aclk,
		input wire  ctrl_axi_aresetn,
		input wire [C_CTRL_AXI_ADDR_WIDTH-1 : 0] ctrl_axi_awaddr,
		input wire [2 : 0] ctrl_axi_awprot,
		input wire  ctrl_axi_awvalid,
		output wire  ctrl_axi_awready,
		input wire [C_CTRL_AXI_DATA_WIDTH-1 : 0] ctrl_axi_wdata,
		input wire [(C_CTRL_AXI_DATA_WIDTH/8)-1 : 0] ctrl_axi_wstrb,
		input wire  ctrl_axi_wvalid,
		output wire  ctrl_axi_wready,
		output wire [1 : 0] ctrl_axi_bresp,
		output wire  ctrl_axi_bvalid,
		input wire  ctrl_axi_bready,
		input wire [C_CTRL_AXI_ADDR_WIDTH-1 : 0] ctrl_axi_araddr,
		input wire [2 : 0] ctrl_axi_arprot,
		input wire  ctrl_axi_arvalid,
		output wire  ctrl_axi_arready,
		output wire [C_CTRL_AXI_DATA_WIDTH-1 : 0] ctrl_axi_rdata,
		output wire [1 : 0] ctrl_axi_rresp,
		output wire  ctrl_axi_rvalid,
		input wire  ctrl_axi_rready
	);
// Instantiation of Axi Bus Interface CTRL_AXI
	multi_oscillator_axi # ( 
		.C_S_AXI_DATA_WIDTH(C_CTRL_AXI_DATA_WIDTH),
		.C_S_AXI_ADDR_WIDTH(C_CTRL_AXI_ADDR_WIDTH)
	) multi_oscillator_axi_inst (
		.S_AXI_ACLK(ctrl_axi_aclk),
		.S_AXI_ARESETN(ctrl_axi_aresetn),
		.S_AXI_AWADDR(ctrl_axi_awaddr),
		.S_AXI_AWPROT(ctrl_axi_awprot),
		.S_AXI_AWVALID(ctrl_axi_awvalid),
		.S_AXI_AWREADY(ctrl_axi_awready),
		.S_AXI_WDATA(ctrl_axi_wdata),
		.S_AXI_WSTRB(ctrl_axi_wstrb),
		.S_AXI_WVALID(ctrl_axi_wvalid),
		.S_AXI_WREADY(ctrl_axi_wready),
		.S_AXI_BRESP(ctrl_axi_bresp),
		.S_AXI_BVALID(ctrl_axi_bvalid),
		.S_AXI_BREADY(ctrl_axi_bready),
		.S_AXI_ARADDR(ctrl_axi_araddr),
		.S_AXI_ARPROT(ctrl_axi_arprot),
		.S_AXI_ARVALID(ctrl_axi_arvalid),
		.S_AXI_ARREADY(ctrl_axi_arready),
		.S_AXI_RDATA(ctrl_axi_rdata),
		.S_AXI_RRESP(ctrl_axi_rresp),
		.S_AXI_RVALID(ctrl_axi_rvalid),
		.S_AXI_RREADY(ctrl_axi_rready)
	);

	// Add user logic here

	// User logic ends

	endmodule
