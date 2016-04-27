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

COMPONENT ADD
	PORT(
		Adin1 : IN std_logic_vector(31 downto 0);
		Adin2 : IN std_logic_vector(31 downto 0);          
		Adout : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;
	
COMPONENT NPC
	PORT(
		Vreset : IN std_logic;
		Vdin : IN std_logic_vector(31 downto 0);
		Vclk : IN std_logic;          
		Vdout : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;
	
COMPONENT MeomoriaInstrucciones
	PORT(
		IMreset : IN std_logic;
		IMdireccion : IN std_logic_vector(31 downto 0);          
		IMinstruccion : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;
	
COMPONENT UnidadControl
	PORT(
		EOP : IN std_logic_vector(1 downto 0);
		EOP3 : IN std_logic_vector(5 downto 0);          
		ALUOP : OUT std_logic_vector(5 downto 0)
		);
	END COMPONENT;
	
COMPONENT RegisterFille
	PORT(
		RS1 : IN std_logic_vector(4 downto 0);
		RS2 : IN std_logic_vector(4 downto 0);
		RD : IN std_logic_vector(4 downto 0);
		RALU : IN std_logic_vector(31 downto 0);
		RFreset : IN std_logic;          
		CRS1 : OUT std_logic_vector(31 downto 0);
		CRS2 : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;
	
COMPONENT MUX
	PORT(
		EMUX : IN std_logic_vector(31 downto 0);
		CRS : IN std_logic_vector(31 downto 0);
		IMM : IN std_logic;          
		SMUX : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;
	
COMPONENT SEU
	PORT(
		EIMM : IN std_logic_vector(12 downto 0);          
		SIMM : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

COMPONENT ALU
	PORT(
		EALU1 : IN std_logic_vector(31 downto 0);
		EALU2 : IN std_logic_vector(31 downto 0);
		EALUOP : IN std_logic_vector(5 downto 0);          
		SALU : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;
	
signal AddToNPC, NPCTOPC, PCToIM, IMToURS, ALUResult, RFToALU1, RFToMUX, SEUToMUX, MUXToALU : STD_LOGIC_VECTOR (31 downto 0);
signal UCToALU : STD_LOGIC_VECTOR (5 downto 0);


begin

Inst_ADD: ADD PORT MAP(
		Adin1 => x"00000001",
		Adin2 => NPCTOPC,
		Adout => AddToNPC
	);
		
Inst_NPC: NPC PORT MAP(
		Vreset => PRESET,
		Vdin => AddToNPC,
		Vclk => PCLK,
		Vdout => NPCTOPC
	);

Inst_PC: NPC PORT MAP(
		Vreset => PRESET,
		Vdin => NPCTOPC,
		Vclk => PCLK,
		Vdout => PCToIM
	);	

Inst_MeomoriaInstrucciones: MeomoriaInstrucciones PORT MAP(
		IMreset => PRESET,
		IMdireccion => PCToIM,
		IMinstruccion => IMToURS
	);

Inst_UnidadControl: UnidadControl PORT MAP(
		EOP => IMToURS (31 DOWNTO 30),
		EOP3 => IMToURS (24 DOWNTO 19),
		ALUOP => UCToALU
	);

Inst_RegisterFille: RegisterFille PORT MAP(
		RS1 => IMToURS (18 DOWNTO 14),
		RS2 => IMToURS (4 DOWNTO 0),
		RD => IMToURS (29 DOWNTO 25),
		RALU => ALUResult,
		CRS1 => RFToALU1,
		CRS2 => RFToMUX,
		RFreset => PRESET
	);

Inst_MUX: MUX PORT MAP(
		EMUX => SEUToMUX,
		CRS => RFToMUX,
		IMM => IMToURS (13),
		SMUX => MUXToALU
	);

Inst_SEU: SEU PORT MAP(
		EIMM => IMToURS (12 DOWNTO 0),
		SIMM => SEUToMUX
	);

Inst_ALU: ALU PORT MAP(
		EALU1 => RFToALU1,
		EALU2 => MUXToALU,
		EALUOP => UCToALU,
		SALU => ALUResult
	);

	POUT <= ALUResult;
	
end ArquitecturaProcesadorMonoCiclo;

