library IEEE;
use IEEE.std_logic_1164.all;
use work.definitions.all;

entity box_2 is
	port (x, y : in Tmatrix;
		win_output, blk_output : in std_logic_vector (3 downto 0);
			output : out std_logic_vector (3 downto 0) ) ;
end box_2 ;

architecture box2_arch of box_2 is

function priority (x, y : Tmatrix; i, j : integer) return boolean is
begin
		return x(i)(j)='0' and y(i)(j)='0' ;
end priority;
	
begin
	process(x,y, win_output, blk_output)
	begin
		if win_output /= none 		then output <= win_output ;
		elsif blk_output /= none then output <= blk_output;
		elsif priority(x,y,2,2) 	then output <= output22;
		elsif priority(x,y,3,1)	then output <= output31;
		elsif priority(x,y,1,3)	then output <= output13;
		elsif priority(x,y,3,3)	then output <= output33;
		elsif priority(x,y,1,1)	then output <= output11;
		elsif priority(x,y,1,2)	then output <= output12;
		elsif priority(x,y,2,1)	then output <= output21;
		elsif priority(x,y,2,3)	then output <= output23;
		elsif priority(x,y,3,2)	then output <= output32;
		else							  	  output <= none ;
		end if;
	end process;
	
end box2_arch;
