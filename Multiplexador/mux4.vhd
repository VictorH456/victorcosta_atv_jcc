--Porta and
--Bibliotecas e pacotes
LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

--Entidade
entity mux4 is
	port(
		a, b, c, d, s0, s1	: in std_logic;
		z		: out std_logic
	);
end entity;	

--Arquitetura
architecture main of mux4 is	
	
	component mux_2
	port (
		a, b, s	: in std_logic;
		z			: out std_logic
		);
	end component;
		

signal Smux1, Smux2: std_logic;

begin
		
	mux1: mux_2 
		port map(a => a, b => b, s => s0, z => Smux1);
	
	mux2: mux_2 	
		port map(a => c, b => d, s => s0, z => Smux2);
	
	mux3: mux_2 	
		port map(a => Smux1, b => Smux2, s => s1, z => z);
		
end architecture;