--Porta and
--Bibliotecas e pacotes
LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
--Entidade
entity and_gate is
	port(
		a, b	: in std_logic;
		z		: out std_logic
	);
end entity;	

--Arquitetura
architecture main of and_gate is
begin
	z <= a and b;
end architecture;