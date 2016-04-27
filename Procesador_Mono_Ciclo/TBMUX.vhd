--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:49:56 04/26/2016
-- Design Name:   
-- Module Name:   C:/Users/Melissa/Documents/Arquitectura/Ejercicios_Xilinx/Procesador_Mono_Ciclo/TBMUX.vhd
-- Project Name:  Procesador_Mono_Ciclo
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: MUX
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY TBMUX IS
END TBMUX;
 
ARCHITECTURE behavior OF TBMUX IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MUX
    PORT(
         EMUX : IN  std_logic_vector(31 downto 0);
         CRS : IN  std_logic_vector(31 downto 0);
         IMM : IN  std_logic;
         SMUX : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal EMUX : std_logic_vector(31 downto 0) := (others => '0');
   signal CRS : std_logic_vector(31 downto 0) := (others => '0');
   signal IMM : std_logic := '0';

 	--Outputs
   signal SMUX : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
  --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MUX PORT MAP (
          EMUX => EMUX,
          CRS => CRS,
          IMM => IMM,
          SMUX => SMUX
        );

--   -- Clock process definitions
--   <clock>_process :process
--   begin
--		<clock> <= '0';
--		wait for <clock>_period/2;
--		<clock> <= '1';
--		wait for <clock>_period/2;
--   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 30 ns;	
		
		IMM <= '0';
		EMUX <= "00000000000000000000000000000001";
		CRS <= "00000000000000000000000000000011";

   end process;

END;
