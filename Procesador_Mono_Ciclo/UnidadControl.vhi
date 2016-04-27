
-- VHDL Instantiation Created from source file UnidadControl.vhd -- 17:56:10 04/27/2016
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT UnidadControl
	PORT(
		EOP : IN std_logic_vector(1 downto 0);
		EOP3 : IN std_logic_vector(5 downto 0);          
		ALUOP : OUT std_logic_vector(5 downto 0)
		);
	END COMPONENT;

	Inst_UnidadControl: UnidadControl PORT MAP(
		EOP => ,
		EOP3 => ,
		ALUOP => 
	);


