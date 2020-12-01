
module quartusProjv3 (
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
	switches_export,
	ps2_CLK,
	ps2_DAT,
	audio_ADCDAT,
	audio_ADCLRCK,
	audio_BCLK,
	audio_DACDAT,
	audio_DACLRCK,
	audio_and_video_config_SDAT,
	audio_and_video_config_SCLK);	

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
	inout		ps2_CLK;
	inout		ps2_DAT;
	input		audio_ADCDAT;
	input		audio_ADCLRCK;
	input		audio_BCLK;
	output		audio_DACDAT;
	input		audio_DACLRCK;
	inout		audio_and_video_config_SDAT;
	output		audio_and_video_config_SCLK;
	
nios_system NiosII (
		.clk_clk                     (clk_clk),                     //                    clk.clk
		.hex_0_export                (hex_0_export),                //                  hex_0.export
		.hex_1_export                (hex_1_export),                //                  hex_1.export
		.hex_2_export                (hex_2_export),                //                  hex_2.export
		.hex_3_export                (hex_3_export),                //                  hex_3.export
		.hex_4_export                (hex_4_export),                //                  hex_4.export
		.hex_5_export                (hex_5_export),                //                  hex_5.export
		.hex_6_export                (hex_6_export),                //                  hex_6.export
		.hex_7_export                (hex_7_export),                //                  hex_7.export
		.keys_export                 (keys_export),                 //                   keys.export
		.ledg_export                 (ledg_export),                 //                   ledg.export
		.ledr_export                 (ledr_export),                 //                   ledr.export
		.reset_reset_n               (reset_reset_n),               //                  reset.reset_n
		.sdram_clk_clk               (sdram_clk_clk),               //              sdram_clk.clk
		.sdram_wire_addr             (sdram_wire_addr),             //             sdram_wire.addr
		.sdram_wire_ba               (sdram_wire_ba),               //                       .ba
		.sdram_wire_cas_n            (sdram_wire_cas_n),            //                       .cas_n
		.sdram_wire_cke              (sdram_wire_cke),              //                       .cke
		.sdram_wire_cs_n             (sdram_wire_cs_n),             //                       .cs_n
		.sdram_wire_dq               (sdram_wire_dq),               //                       .dq
		.sdram_wire_dqm              (sdram_wire_dqm),              //                       .dqm
		.sdram_wire_ras_n            (sdram_wire_ras_n),            //                       .ras_n
		.sdram_wire_we_n             (sdram_wire_we_n),             //                       .we_n
		.sram_DQ                     (sram_DQ),                     //                   sram.DQ
		.sram_ADDR                   (sram_ADDR),                   //                       .ADDR
		.sram_LB_N                   (sram_LB_N),                   //                       .LB_N
		.sram_UB_N                   (sram_UB_N),                   //                       .UB_N
		.sram_CE_N                   (sram_CE_N),                   //                       .CE_N
		.sram_OE_N                   (sram_OE_N),                   //                       .OE_N
		.sram_WE_N                   (sram_WE_N),                   //                       .WE_N
		.switches_export             (switches_export),             //               switches.export
		.ps2_CLK                     (ps2_CLK),                     //                    ps2.CLK
		.ps2_DAT                     (ps2_DAT),                     //                       .DAT
		.audio_ADCDAT                (audio_ADCDAT),                //                  audio.ADCDAT
		.audio_ADCLRCK               (audio_ADCLRCK),               //                       .ADCLRCK
		.audio_BCLK                  (audio_BCLK),                  //                       .BCLK
		.audio_DACDAT                (audio_DACDAT),                //                       .DACDAT
		.audio_DACLRCK               (audio_DACLRCK),               //                       .DACLRCK
		.audio_and_video_config_SDAT (audio_and_video_config_SDAT), // audio_and_video_config.SDAT
		.audio_and_video_config_SCLK (audio_and_video_config_SCLK)  //                       .SCLK
	);
endmodule
