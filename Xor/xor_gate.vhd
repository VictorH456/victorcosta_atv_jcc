--Porta and
--Bibliotecas e pacotes
LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

--Entidade
entity xor_gate is
	port(
		a, b	: in std_logic;
		z		: out std_logic
	);
end entity;	

--Arquitetura
architecture main of xor_gate is	

	component and_gate
	port (
		a, b: in std_logic;
		z : out std_logic);
	end component;
	
	component or_gate
	port (
		a, b: in std_logic;
		z : out std_logic);
	end component;
		
	component not_gate
	port (
		A : IN  std_logic;
		F : OUT std_logic);
	end component;
		

signal SnotA, SnotB: std_logic;
signal Sand1, Sand2: std_logic;

begin
		
	notA: not_gate 
		port map(A => a,F => SnotA);
	notB: not_gate 
		port map(A => b,F => SnotB);
	and1: and_gate 
		port map(a => SnotA,b => b,z => Sand1);
	and2: and_gate 
		port map(b => SnotB,a => a,z => Sand2);
	orfinal: or_gate 
		port map(a => Sand1, b => Sand2, z => z);
		
end architecture;