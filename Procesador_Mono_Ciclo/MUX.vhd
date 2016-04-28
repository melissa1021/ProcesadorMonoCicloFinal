----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:51:02 04/19/2016 
-- Design Name: 
-- Module Name:    MUX - ArquitecturaMUX 
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

entity MUX is
    Port ( EMUX : in  STD_LOGIC_VECTOR (31 downto 0);
			  CRS : in STD_LOGIC_VECTOR (31 downto 0);
           IMM : in  STD_LOGIC;
           SMUX : out  STD_LOGIC_VECTOR (31 downto 0));
end MUX;

architecture ArquitecturaMUX of MUX is

begin

process(EMUX,CRS,IMM)

	begin
		
		if (IMM = '1') then
			SMUX <= EMUX;
		else
			SMUX <= CRS;
		end if;

	end process;

end ArquitecturaMUX;

