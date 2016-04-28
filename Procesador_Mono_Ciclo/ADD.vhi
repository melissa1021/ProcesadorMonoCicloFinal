
-- VHDL Instantiation Created from source file ADD.vhd -- 17:33:27 04/27/2016
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT ADD
	PORT(
		Adin1 : IN std_logic_vector(31 downto 0);
		Adin2 : IN std_logic_vector(31 downto 0);          
		Adout : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	Inst_ADD: ADD PORT MAP(
		Adin1 => ,
		Adin2 => ,
		Adout => 
	);


