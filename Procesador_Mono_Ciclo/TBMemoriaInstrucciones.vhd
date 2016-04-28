--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:59:29 04/19/2016
-- Design Name:   
-- Module Name:   C:/Users/Melissa/Documents/Arquitectura/Ejercicios_Xilinx/Procesador_Mono_Ciclo/TBMemoriaInstrucciones.vhd
-- Project Name:  Procesador_Mono_Ciclo
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: MeomoriaInstrucciones
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
 
ENTITY TBMemoriaInstrucciones IS
END TBMemoriaInstrucciones;
 
ARCHITECTURE behavior OF TBMemoriaInstrucciones IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MeomoriaInstrucciones
    PORT(
         IMreset : IN  std_logic;
         IMdireccion : IN  std_logic_vector(31 downto 0);
         IMinstruccion : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal IMreset : std_logic := '0';
   signal IMdireccion : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal IMinstruccion : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   ---constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MeomoriaInstrucciones PORT MAP (
          IMreset => IMreset,
          IMdireccion => IMdireccion,
          IMinstruccion => IMinstruccion
        );

   -- Clock process definitions
   --<clock>_process :process
--   begin
--		<clock> <= '0';
--		wait for <clock>_period/2;
--		<clock> <= '1';
--		wait for <clock>_period/2;
--   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
		IMReset <= '1';
		
      -- hold reset state for 100 ns.
      wait for 30 ns;	
			IMReset <='0';
			IMdireccion <= "00000000000000000000000000000001";

     -- wait for <clock>_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
