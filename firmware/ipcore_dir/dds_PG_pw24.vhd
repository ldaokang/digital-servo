--------------------------------------------------------------------------------
--    This file is owned and controlled by Xilinx and must be used solely     --
--    for design, simulation, implementation and creation of design files     --
--    limited to Xilinx devices or technologies. Use with non-Xilinx          --
--    devices or technologies is expressly prohibited and immediately         --
--    terminates your license.                                                --
--                                                                            --
--    XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" SOLELY    --
--    FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR XILINX DEVICES.  BY    --
--    PROVIDING THIS DESIGN, CODE, OR INFORMATION AS ONE POSSIBLE             --
--    IMPLEMENTATION OF THIS FEATURE, APPLICATION OR STANDARD, XILINX IS      --
--    MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION IS FREE FROM ANY      --
--    CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE FOR OBTAINING ANY       --
--    RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY       --
--    DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE   --
--    IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR          --
--    REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF         --
--    INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A   --
--    PARTICULAR PURPOSE.                                                     --
--                                                                            --
--    Xilinx products are not intended for use in life support appliances,    --
--    devices, or systems.  Use in such applications are expressly            --
--    prohibited.                                                             --
--                                                                            --
--    (c) Copyright 1995-2021 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file dds_PG_pw24.vhd when simulating
-- the core, dds_PG_pw24. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
LIBRARY XilinxCoreLib;
-- synthesis translate_on
ENTITY dds_PG_pw24 IS
  PORT (
    clk : IN STD_LOGIC;
    pinc_in : IN STD_LOGIC_VECTOR(23 DOWNTO 0);
    phase_out : OUT STD_LOGIC_VECTOR(23 DOWNTO 0)
  );
END dds_PG_pw24;

ARCHITECTURE dds_PG_pw24_a OF dds_PG_pw24 IS
-- synthesis translate_off
COMPONENT wrapped_dds_PG_pw24
  PORT (
    clk : IN STD_LOGIC;
    pinc_in : IN STD_LOGIC_VECTOR(23 DOWNTO 0);
    phase_out : OUT STD_LOGIC_VECTOR(23 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_dds_PG_pw24 USE ENTITY XilinxCoreLib.dds_compiler_v4_0(behavioral)
    GENERIC MAP (
      c_accumulator_width => 24,
      c_amplitude => 0,
      c_channels => 1,
      c_has_ce => 0,
      c_has_channel_index => 0,
      c_has_phase_out => 1,
      c_has_phasegen => 1,
      c_has_rdy => 0,
      c_has_rfd => 0,
      c_has_sclr => 0,
      c_has_sincos => 0,
      c_latency => -1,
      c_mem_type => 2,
      c_negative_cosine => 0,
      c_negative_sine => 1,
      c_noise_shaping => 0,
      c_optimise_goal => 0,
      c_output_width => 3,
      c_outputs_required => 2,
      c_phase_angle_width => 3,
      c_phase_increment => 3,
      c_phase_increment_value => "0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0",
      c_phase_offset => 0,
      c_phase_offset_value => "0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0",
      c_por_mode => 0,
      c_use_dsp48 => 0,
      c_xdevicefamily => "spartan6"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_dds_PG_pw24
  PORT MAP (
    clk => clk,
    pinc_in => pinc_in,
    phase_out => phase_out
  );
-- synthesis translate_on

END dds_PG_pw24_a;
