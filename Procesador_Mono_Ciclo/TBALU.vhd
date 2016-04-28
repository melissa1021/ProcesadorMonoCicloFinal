--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:09:20 04/26/2016
-- Design Name:   
-- Module Name:   C:/Users/Melissa/Documents/Arquitectura/Ejercicios_Xilinx/Procesador_Mono_Ciclo/TBALU.vhd
-- Project Name:  Procesador_Mono_Ciclo
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ALU
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
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.all;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY TBALU IS
END TBALU;
 
ARCHITECTURE behavior OF TBALU IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ALU
    PORT(
         EALU1 : IN  std_logic_vector(31 downto 0);
         EALU2 : IN  std_logic_vector(31 downto 0);
         EALUOP : IN  std_logic_vector(5 downto 0);
         SALU : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal EALU1 : std_logic_vector(31 downto 0) := (others => '0');
   signal EALU2 : std_logic_vector(31 downto 0) := (others => '0');
   signal EALUOP : std_logic_vector(5 downto 0) := (others => '0');

 	--Outputs
   signal SALU : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ALU PORT MAP (
          EALU1 => EALU1,
          EALU2 => EALU2,
          EALUOP => EALUOP,
          SALU => SALU
        );

   -- Clock process definitions
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
			
			EALU1 <= "00000000000000000000000000000001";
         EALU2 <= "00000000000000000000000000010001";
         EALUOP <= "000000";
		
   end process;

END;
