
-- VHDL Instantiation Created from source file MeomoriaInstrucciones.vhd -- 17:52:54 04/27/2016
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT MeomoriaInstrucciones
	PORT(
		IMreset : IN std_logic;
		IMdireccion : IN std_logic_vector(31 downto 0);          
		IMinstruccion : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	Inst_MeomoriaInstrucciones: MeomoriaInstrucciones PORT MAP(
		IMreset => ,
		IMdireccion => ,
		IMinstruccion => 
	);


