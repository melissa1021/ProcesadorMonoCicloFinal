----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:18:12 04/26/2016 
-- Design Name: 
-- Module Name:    PorcesadroMonoCiclo - ArquitecturaProcesadorMonoCiclo 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity PorcesadroMonoCiclo is
    Port ( PRESET : in  STD_LOGIC;
           PCLK : in  STD_LOGIC;
           POUT : out  STD_LOGIC_VECTOR (31 downto 0));
end PorcesadroMonoCiclo;

architecture ArquitecturaProcesadorMonoCiclo of PorcesadroMonoCiclo is

begin
		
		
		
end ArquitecturaProcesadorMonoCiclo;

