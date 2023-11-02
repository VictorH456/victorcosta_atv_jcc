--Porta mux
--Bibliotecas e pacotes
LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
--Entidade
entity mux2 is
	port(
		a, b, c	: in std_logic;
		z			: out std_logic
	);
end entity;
--Arquitetura
architecture main of mux2 is
begin 
	z <=	a when c = '0'
	else b;
end architecture;