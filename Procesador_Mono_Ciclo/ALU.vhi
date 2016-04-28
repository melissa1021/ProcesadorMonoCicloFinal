
-- VHDL Instantiation Created from source file ALU.vhd -- 18:13:34 04/27/2016
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT ALU
	PORT(
		EALU1 : IN std_logic_vector(31 downto 0);
		EALU2 : IN std_logic_vector(31 downto 0);
		EALUOP : IN std_logic_vector(5 downto 0);          
		SALU : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	Inst_ALU: ALU PORT MAP(
		EALU1 => ,
		EALU2 => ,
		EALUOP => ,
		SALU => 
	);


