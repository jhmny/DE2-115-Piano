	component nios_system is
		port (
			audio_BCLK                    : in    std_logic                     := 'X';             -- BCLK
			audio_DACDAT                  : out   std_logic;                                        -- DACDAT
			audio_DACLRCK                 : in    std_logic                     := 'X';             -- DACLRCK
			audio_and_video_config_0_SDAT : inout std_logic                     := 'X';             -- SDAT
			audio_and_video_config_0_SCLK : out   std_logic;                                        -- SCLK
			audio_pll_clk_clk             : out   std_logic;                                        -- clk
			audio_pll_ref_reset_reset     : in    std_logic                     := 'X';             -- reset
			audio_pll_ref_clk_clk         : in    std_logic                     := 'X';             -- clk
			clk_clk                       : in    std_logic                     := 'X';             -- clk
			hex_0_export                  : out   std_logic_vector(7 downto 0);                     -- export
			hex_1_export                  : out   std_logic_vector(7 downto 0);                     -- export
			hex_2_export                  : out   std_logic_vector(7 downto 0);                     -- export
			hex_3_export                  : out   std_logic_vector(7 downto 0);                     -- export
			hex_4_export                  : out   std_logic_vector(7 downto 0);                     -- export
			hex_5_export                  : out   std_logic_vector(7 downto 0);                     -- export
			hex_6_export                  : out   std_logic_vector(7 downto 0);                     -- export
			hex_7_export                  : out   std_logic_vector(7 downto 0);                     -- export
			keys_export                   : in    std_logic_vector(3 downto 0)  := (others => 'X'); -- export
			ledg_export                   : out   std_logic_vector(7 downto 0);                     -- export
			ledr_export                   : out   std_logic_vector(17 downto 0);                    -- export
			ps2_0_CLK                     : inout std_logic                     := 'X';             -- CLK
			ps2_0_DAT                     : inout std_logic                     := 'X';             -- DAT
			reset_reset_n                 : in    std_logic                     := 'X';             -- reset_n
			sdram_clk_clk                 : out   std_logic;                                        -- clk
			sdram_wire_addr               : out   std_logic_vector(12 downto 0);                    -- addr
			sdram_wire_ba                 : out   std_logic_vector(1 downto 0);                     -- ba
			sdram_wire_cas_n              : out   std_logic;                                        -- cas_n
			sdram_wire_cke                : out   std_logic;                                        -- cke
			sdram_wire_cs_n               : out   std_logic;                                        -- cs_n
			sdram_wire_dq                 : inout std_logic_vector(31 downto 0) := (others => 'X'); -- dq
			sdram_wire_dqm                : out   std_logic_vector(3 downto 0);                     -- dqm
			sdram_wire_ras_n              : out   std_logic;                                        -- ras_n
			sdram_wire_we_n               : out   std_logic;                                        -- we_n
			sram_DQ                       : inout std_logic_vector(15 downto 0) := (others => 'X'); -- DQ
			sram_ADDR                     : out   std_logic_vector(19 downto 0);                    -- ADDR
			sram_LB_N                     : out   std_logic;                                        -- LB_N
			sram_UB_N                     : out   std_logic;                                        -- UB_N
			sram_CE_N                     : out   std_logic;                                        -- CE_N
			sram_OE_N                     : out   std_logic;                                        -- OE_N
			sram_WE_N                     : out   std_logic;                                        -- WE_N
			switches_export               : in    std_logic_vector(17 downto 0) := (others => 'X'); -- export
			usb_0_INT1                    : in    std_logic                     := 'X';             -- INT1
			usb_0_DATA                    : inout std_logic_vector(15 downto 0) := (others => 'X'); -- DATA
			usb_0_RST_N                   : out   std_logic;                                        -- RST_N
			usb_0_ADDR                    : out   std_logic_vector(1 downto 0);                     -- ADDR
			usb_0_CS_N                    : out   std_logic;                                        -- CS_N
			usb_0_RD_N                    : out   std_logic;                                        -- RD_N
			usb_0_WR_N                    : out   std_logic;                                        -- WR_N
			usb_0_INT0                    : in    std_logic                     := 'X'              -- INT0
		);
	end component nios_system;

	u0 : component nios_system
		port map (
			audio_BCLK                    => CONNECTED_TO_audio_BCLK,                    --                    audio.BCLK
			audio_DACDAT                  => CONNECTED_TO_audio_DACDAT,                  --                         .DACDAT
			audio_DACLRCK                 => CONNECTED_TO_audio_DACLRCK,                 --                         .DACLRCK
			audio_and_video_config_0_SDAT => CONNECTED_TO_audio_and_video_config_0_SDAT, -- audio_and_video_config_0.SDAT
			audio_and_video_config_0_SCLK => CONNECTED_TO_audio_and_video_config_0_SCLK, --                         .SCLK
			audio_pll_clk_clk             => CONNECTED_TO_audio_pll_clk_clk,             --            audio_pll_clk.clk
			audio_pll_ref_reset_reset     => CONNECTED_TO_audio_pll_ref_reset_reset,     --      audio_pll_ref_reset.reset
			audio_pll_ref_clk_clk         => CONNECTED_TO_audio_pll_ref_clk_clk,         --        audio_pll_ref_clk.clk
			clk_clk                       => CONNECTED_TO_clk_clk,                       --                      clk.clk
			hex_0_export                  => CONNECTED_TO_hex_0_export,                  --                    hex_0.export
			hex_1_export                  => CONNECTED_TO_hex_1_export,                  --                    hex_1.export
			hex_2_export                  => CONNECTED_TO_hex_2_export,                  --                    hex_2.export
			hex_3_export                  => CONNECTED_TO_hex_3_export,                  --                    hex_3.export
			hex_4_export                  => CONNECTED_TO_hex_4_export,                  --                    hex_4.export
			hex_5_export                  => CONNECTED_TO_hex_5_export,                  --                    hex_5.export
			hex_6_export                  => CONNECTED_TO_hex_6_export,                  --                    hex_6.export
			hex_7_export                  => CONNECTED_TO_hex_7_export,                  --                    hex_7.export
			keys_export                   => CONNECTED_TO_keys_export,                   --                     keys.export
			ledg_export                   => CONNECTED_TO_ledg_export,                   --                     ledg.export
			ledr_export                   => CONNECTED_TO_ledr_export,                   --                     ledr.export
			ps2_0_CLK                     => CONNECTED_TO_ps2_0_CLK,                     --                    ps2_0.CLK
			ps2_0_DAT                     => CONNECTED_TO_ps2_0_DAT,                     --                         .DAT
			reset_reset_n                 => CONNECTED_TO_reset_reset_n,                 --                    reset.reset_n
			sdram_clk_clk                 => CONNECTED_TO_sdram_clk_clk,                 --                sdram_clk.clk
			sdram_wire_addr               => CONNECTED_TO_sdram_wire_addr,               --               sdram_wire.addr
			sdram_wire_ba                 => CONNECTED_TO_sdram_wire_ba,                 --                         .ba
			sdram_wire_cas_n              => CONNECTED_TO_sdram_wire_cas_n,              --                         .cas_n
			sdram_wire_cke                => CONNECTED_TO_sdram_wire_cke,                --                         .cke
			sdram_wire_cs_n               => CONNECTED_TO_sdram_wire_cs_n,               --                         .cs_n
			sdram_wire_dq                 => CONNECTED_TO_sdram_wire_dq,                 --                         .dq
			sdram_wire_dqm                => CONNECTED_TO_sdram_wire_dqm,                --                         .dqm
			sdram_wire_ras_n              => CONNECTED_TO_sdram_wire_ras_n,              --                         .ras_n
			sdram_wire_we_n               => CONNECTED_TO_sdram_wire_we_n,               --                         .we_n
			sram_DQ                       => CONNECTED_TO_sram_DQ,                       --                     sram.DQ
			sram_ADDR                     => CONNECTED_TO_sram_ADDR,                     --                         .ADDR
			sram_LB_N                     => CONNECTED_TO_sram_LB_N,                     --                         .LB_N
			sram_UB_N                     => CONNECTED_TO_sram_UB_N,                     --                         .UB_N
			sram_CE_N                     => CONNECTED_TO_sram_CE_N,                     --                         .CE_N
			sram_OE_N                     => CONNECTED_TO_sram_OE_N,                     --                         .OE_N
			sram_WE_N                     => CONNECTED_TO_sram_WE_N,                     --                         .WE_N
			switches_export               => CONNECTED_TO_switches_export,               --                 switches.export
			usb_0_INT1                    => CONNECTED_TO_usb_0_INT1,                    --                    usb_0.INT1
			usb_0_DATA                    => CONNECTED_TO_usb_0_DATA,                    --                         .DATA
			usb_0_RST_N                   => CONNECTED_TO_usb_0_RST_N,                   --                         .RST_N
			usb_0_ADDR                    => CONNECTED_TO_usb_0_ADDR,                    --                         .ADDR
			usb_0_CS_N                    => CONNECTED_TO_usb_0_CS_N,                    --                         .CS_N
			usb_0_RD_N                    => CONNECTED_TO_usb_0_RD_N,                    --                         .RD_N
			usb_0_WR_N                    => CONNECTED_TO_usb_0_WR_N,                    --                         .WR_N
			usb_0_INT0                    => CONNECTED_TO_usb_0_INT0                     --                         .INT0
		);

