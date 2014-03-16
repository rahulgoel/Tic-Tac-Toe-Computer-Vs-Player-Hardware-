library IEEE;
use IEEE.std_logic_1164.all;
use work.definitions.all;

entity box is
	port(x,y : in Tmatrix;
		output1	: out Toutput);
		
end box;

architecture box_arch of box is

component box_1 port (x, y : in Tmatrix;
								output	: out std_logic_vector (3 downto 0) );
end component;

component box_2 port (x, y : in Tmatrix;
						win_output, blk_output : std_logic_vector (3 downto 0);
						output : out std_logic_vector (3 downto 0));
end component;

signal win, blck : std_logic_vector (3 downto 0);

begin
	
	U1 : box_1 port map (x, y, win);
	U2 : box_1 port map (y, x, blck);
	U3 : box_2 port map (x, y, win, blck, output1);
end box_arch ;	
