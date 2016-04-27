--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:23:47 04/27/2016
-- Design Name:   
-- Module Name:   C:/Users/Melissa/Documents/Arquitectura/Ejercicios_Xilinx/Procesador_Mono_Ciclo/TBProcesadorMonoCiclo.vhd
-- Project Name:  Procesador_Mono_Ciclo
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: PorcesadroMonoCiclo
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
 
ENTITY TBProcesadorMonoCiclo IS
END TBProcesadorMonoCiclo;
 
ARCHITECTURE behavior OF TBProcesadorMonoCiclo IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT PorcesadroMonoCiclo
    PORT(
         PRESET : IN  std_logic;
         PCLK : IN  std_logic;
         POUT : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal PRESET : std_logic := '0';
   signal PCLK : std_logic := '0';

 	--Outputs
   signal POUT : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant PCLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: PorcesadroMonoCiclo PORT MAP (
          PRESET => PRESET,
          PCLK => PCLK,
          POUT => POUT
        );

   -- Clock process definitions
   PCLK_process :process
   begin
		PCLK <= '0';
		wait for PCLK_period/2;
		PCLK <= '1';
		wait for PCLK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
		
		PRESET <= '1';
      -- hold reset state for 100 ns.
      wait for 100 ns;	

		PRESET <= '0';

      wait;
   end process;

END;
