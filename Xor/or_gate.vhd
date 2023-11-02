--Porta or
--Bibliotecas e pacotes
LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

--Entidade
entity or_gate is
	port(
		a, b	: in std_logic;
		z		: out std_logic
	);
end entity;	

--Arquitetura
architecture main of or_gate is
begin
	z <= a or b;
end architecture;