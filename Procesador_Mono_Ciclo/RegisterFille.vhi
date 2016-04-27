
-- VHDL Instantiation Created from source file RegisterFille.vhd -- 18:03:02 04/27/2016
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

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

	Inst_RegisterFille: RegisterFille PORT MAP(
		RS1 => ,
		RS2 => ,
		RD => ,
		RALU => ,
		CRS1 => ,
		CRS2 => ,
		RFreset => 
	);


