----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:47:00 04/25/2016 
-- Design Name: 
-- Module Name:    UnidadControl - ArquitecturaUnidadControl 
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

entity UnidadControl is
    Port ( EOP : in  STD_LOGIC_VECTOR (1 downto 0);
           EOP3 : in  STD_LOGIC_VECTOR (5 downto 0);
           ALUOP : out  STD_LOGIC_VECTOR (5 downto 0));
end UnidadControl;

architecture ArquitecturaUnidadControl of UnidadControl is

begin

process(EOP,EOP3)

	begin

		if (EOP = "10") then
		
			case EOP3 is
			
				when "000000" => -- ADD
					ALUOP <= "000000";
				
				when "000001" => -- AND
					ALUOP <= "000001";
				
				when "000101" => -- AND NEGADO
					ALUOP <= "000101";
					
				when "000100" => -- SUBB
					ALUOP <= "000100";
				
				when "000010" => -- OR
					ALUOP <= "000010";
					
				when "000110" => -- OR NEGADO
					ALUOP <= "000110";
				
				when "000011" => -- XOR
					ALUOP <= "000011";
				
				when "000111" => -- XOR NEGADO
					ALUOP <= "000111";
				
				when others =>
					ALUOP <= "111111";
					
			end case;
		
		end if;
		
	end process;

end ArquitecturaUnidadControl;

