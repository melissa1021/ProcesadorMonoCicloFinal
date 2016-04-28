----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:48:12 04/19/2016 
-- Design Name: 
-- Module Name:    ALU - ArquitecturaALU 
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

entity ALU is
    Port ( EALU1 : in  STD_LOGIC_VECTOR (31 downto 0);
           EALU2 : in  STD_LOGIC_VECTOR (31 downto 0);
			  EALUOP : in STD_LOGIC_VECTOR (5 downto 0);
           SALU : out  STD_LOGIC_VECTOR (31 downto 0));
end ALU;

architecture ArquitecturaALU of ALU is

begin

process(EALU1,EALU2,EALUOP)

	begin

		case EALUOP is
		
			when "000000" => -- ADD
				SALU <= EALU1 + EALU2;
			
			when "000001" => -- AND
				SALU <= EALU1 AND EALU2;
			
			when "000101" => -- AND NEGADO
				SALU <= NOT(EALU1 AND EALU2);
				
			when "000100" => -- SUBB
				SALU <= EALU1 - EALU2;
			
			when "000010" => -- OR
				SALU <= EALU1 OR EALU2;
				
			when "000110" => -- OR NEGADO
				SALU <= NOT(EALU1 OR EALU2);
			
			when "000011" => -- XOR
				SALU <= EALU1 XOR EALU2;
			
			when "000111" => -- XOR NEGADO
				SALU <= NOT(EALU1 XOR EALU2);
			
			when others =>
				SALU <= "00000000000000000000000000000000";
				
		end case;

	end process;

end ArquitecturaALU;

