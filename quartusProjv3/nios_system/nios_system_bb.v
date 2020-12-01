
module nios_system (
	clk_clk,
	hex_0_export,
	hex_1_export,
	hex_2_export,
	hex_3_export,
	hex_4_export,
	hex_5_export,
	hex_6_export,
	hex_7_export,
	keys_export,
	ledg_export,
	ledr_export,
	reset_reset_n,
	sdram_clk_clk,
	sdram_wire_addr,
	sdram_wire_ba,
	sdram_wire_cas_n,
	sdram_wire_cke,
	sdram_wire_cs_n,
	sdram_wire_dq,
	sdram_wire_dqm,
	sdram_wire_ras_n,
	sdram_wire_we_n,
	sram_DQ,
	sram_ADDR,
	sram_LB_N,
	sram_UB_N,
	sram_CE_N,
	sram_OE_N,
	sram_WE_N,
	switches_export);	

	input		clk_clk;
	output	[7:0]	hex_0_export;
	output	[7:0]	hex_1_export;
	output	[7:0]	hex_2_export;
	output	[7:0]	hex_3_export;
	output	[7:0]	hex_4_export;
	output	[7:0]	hex_5_export;
	output	[7:0]	hex_6_export;
	output	[7:0]	hex_7_export;
	input	[3:0]	keys_export;
	output	[7:0]	ledg_export;
	output	[17:0]	ledr_export;
	input		reset_reset_n;
	output		sdram_clk_clk;
	output	[12:0]	sdram_wire_addr;
	output	[1:0]	sdram_wire_ba;
	output		sdram_wire_cas_n;
	output		sdram_wire_cke;
	output		sdram_wire_cs_n;
	inout	[31:0]	sdram_wire_dq;
	output	[3:0]	sdram_wire_dqm;
	output		sdram_wire_ras_n;
	output		sdram_wire_we_n;
	inout	[15:0]	sram_DQ;
	output	[19:0]	sram_ADDR;
	output		sram_LB_N;
	output		sram_UB_N;
	output		sram_CE_N;
	output		sram_OE_N;
	output		sram_WE_N;
	input	[17:0]	switches_export;
endmodule
