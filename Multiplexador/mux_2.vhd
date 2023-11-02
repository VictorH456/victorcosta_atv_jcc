--Porta and
--Bibliotecas e pacotes
LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
--Entidade
entity mux_2 is
	port(
		a, b, s	: in std_logic;
		z			: out std_logic
	);
end entity;	

--Arquitetura
architecture main of mux_2 is
begin
	z <=	a when s = '0'
	else b;
end architecture;