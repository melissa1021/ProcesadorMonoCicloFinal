----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:37:34 04/14/2016 
-- Design Name: 
-- Module Name:    ADD - AruitecturaSumador 
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
use IEEE.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ADD is
    Port ( 
           Adin1 : in  STD_LOGIC_VECTOR (31 downto 0);
           Adin2 : in  STD_LOGIC_VECTOR (31 downto 0);
           Adout : out  STD_LOGIC_VECTOR (31 downto 0));
end ADD;

architecture AruitecturaSumador of ADD is

begin

process (Adin1, Adin2)

begin

	Adout <=Adin1+Adin2;
	
end process;

end AruitecturaSumador;

