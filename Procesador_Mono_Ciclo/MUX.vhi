
-- VHDL Instantiation Created from source file MUX.vhd -- 18:08:27 04/27/2016
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT MUX
	PORT(
		EMUX : IN std_logic_vector(31 downto 0);
		CRS : IN std_logic_vector(31 downto 0);
		IMM : IN std_logic;          
		SMUX : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	Inst_MUX: MUX PORT MAP(
		EMUX => ,
		CRS => ,
		IMM => ,
		SMUX => 
	);


