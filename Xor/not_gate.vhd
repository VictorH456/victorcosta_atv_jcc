--Porta not
--Bibliotecas e pacotes 

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

--ENTITY 
ENTITY not_gate IS PORT( 
	A : IN  std_logic; 
	F : OUT std_logic 
); END not_gate;

--ARQUITETURA 
ARCHITECTURE logic OF not_gate IS 
BEGIN 
	F <= not A;
END logic;
