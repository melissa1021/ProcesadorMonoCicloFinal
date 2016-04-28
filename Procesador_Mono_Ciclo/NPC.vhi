
-- VHDL Instantiation Created from source file NPC.vhd -- 17:47:13 04/27/2016
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT NPC
	PORT(
		Vreset : IN std_logic;
		Vdin : IN std_logic_vector(31 downto 0);
		Vclk : IN std_logic;          
		Vdout : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	Inst_NPC: NPC PORT MAP(
		Vreset => ,
		Vdin => ,
		Vclk => ,
		Vdout => 
	);


