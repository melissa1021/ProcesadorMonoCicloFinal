--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:14:18 04/25/2016
-- Design Name:   
-- Module Name:   C:/Users/Melissa/Documents/Arquitectura/Ejercicios_Xilinx/Procesador_Mono_Ciclo/TBNPC.vhd
-- Project Name:  Procesador_Mono_Ciclo
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: NPC
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
 
ENTITY TBNPC IS
END TBNPC;
 
ARCHITECTURE behavior OF TBNPC IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT NPC
    PORT(
         Vreset : IN  std_logic;
         Vdin : IN  std_logic_vector(31 downto 0);
         Vclk : IN  std_logic;
         Vdout : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Vreset : std_logic := '0';
   signal Vdin : std_logic_vector(31 downto 0) := (others => '0');
   signal Vclk : std_logic := '0';

 	--Outputs
   signal Vdout : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant Vclk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: NPC PORT MAP (
          Vreset => Vreset,
          Vdin => Vdin,
          Vclk => Vclk,
          Vdout => Vdout
        );

   -- Clock process definitions
   Vclk_process :process
   begin
		Vclk <= '0';
		wait for Vclk_period/2;
		Vclk <= '1';
		wait for Vclk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      Vreset <='1';
      -- hold reset state for 100 ns.
      wait for 30 ns;	
			Vreset <='0';
			Vdin <= "00000000000000000000000000000001";
			
		wait for 30 ns;	
			Vdin <= "00000000000000000000000000000000";
			
		wait for 30 ns;	
			Vdin <= "00000000000000000000000000000001";
			
		wait for 30 ns;
			Vdin <= "00000000000000000000000000000000";

      -- insert stimulus here 

      wait;
   end process;

END;
