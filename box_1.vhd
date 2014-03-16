library IEEE;
use IEEE.std_logic_1164.all;
use work.definitions.all;

entity box_1 is
	port (x, y : in Tmatrix;
			output : out Toutput) ;
end box_1 ;

architecture box1_arch of box_1 is

function Row (x, y : Tmatrix; i, j : integer) return boolean is
	variable flag : boolean;
	begin
		flag := true;
		for jj in 1 to 3 loop
			if jj = j then flag := flag and x(i)(jj)='0' and y(i)(jj)='0' ;
			else flag := flag and x(i)(jj)='1' ;
			end if;
		end loop;
	return flag;
end Row;

function Column (x, y : Tmatrix; i, j : integer) return boolean is
	variable flag : boolean;
	begin
		flag := true;
		for ii in 1 to 3 loop
			if ii = i then flag := flag and x(ii)(j)='0' and y(ii)(j)='0' ;
			else flag := flag and x(ii)(j)='1' ;
			end if;
		end loop;
	return flag;
end Column;

function Diagonal_1 (x, y : Tmatrix; i, j : integer) return boolean is
	variable flag : boolean;
	begin
		flag := true;
		for ii in 1 to 3 loop
			if ii = i then flag := flag and x(ii)(ii)='0' and y(ii)(ii)='0' ;
			else flag := flag and x(ii)(ii)='1' ;
			end if;
		end loop;
	return flag;
end Diagonal_1;

function Diagonal_2 (x, y : Tmatrix; i, j : integer) return boolean is
	variable flag : boolean;
	begin
		flag := true;
		for ii in 1 to 3 loop
			if ii = i then flag := flag and x(ii)(4-ii)='0' and y(ii)(4-ii)='0' ;
			else flag := flag and x(ii)(4-ii)='1' ;
			end if;
		end loop;
	return flag;
end Diagonal_2;

begin

	process(x, y)
--	'0'=>x(1)(1);
--	x(1)(1):='0';
--	x(1)(1):='0';
--	x(1)(1):='0';
--	x(1)(1):='0';
--	x(1)(1):='0';
--	x(1)(1):='0';
--	x(1)(1):='0';
--	x(1)(1):='0';
--	y(1)(1):='0';
--	y(1)(1):='0';
--	y(1)(1):='0';
--	y(1)(1):='0';
--	y(1)(1):='0';
--	y(1)(1):='0';
--	y(1)(1):='0';
--	y(1)(1):='0';
--	y(1)(1):='0';
	variable g11, g12, g13, g21, g22, g23, g31, g32, g33 : boolean;
	

	begin
		g11 := Column(x,y,1,1) or Row(x,y,1,1) or Diagonal_1(x,y,1,1);
		g12 := Column(x,y,1,2) or Row(x,y,1,2);
		g13 := Column(x,y,1,3) or Row(x,y,1,3) or Diagonal_2(x,y,1,3);
		g21 := Column(x,y,2,1) or Row(x,y,2,1);
		g22 := Column(x,y,2,2) or Row(x,y,2,2) or Diagonal_1(x,y,2,2) or Diagonal_2(x,y,2,2);
		g23 := Column(x,y,2,3) or Row(x,y,2,3);
		g31 := Column(x,y,3,1) or Row(x,y,3,1) or Diagonal_2(x,y,3,1);
		g32 := Column(x,y,3,2) or Row(x,y,3,2);
		g33 := Column(x,y,3,3) or Row(x,y,3,3) or Diagonal_1(x,y,3,3);
		
		if		g22 then output <= output22 ;			
		elsif g21 then output <= output21 ;
		elsif	g31 then output <= output31 ;
		elsif	g33 then output <= output33 ;
		elsif	g13 then output <= output13 ;
		elsif	g11 then output <= output11 ;
		elsif	g12 then output <= output12 ;
		elsif	g23 then output <= output23 ;
		elsif	g32 then output <= output32 ;
		else				output <= none ;
		end if;
	end process;
end box1_arch;
