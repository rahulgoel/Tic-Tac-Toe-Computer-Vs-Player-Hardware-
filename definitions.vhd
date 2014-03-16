library IEEE ;
use IEEE.std_logic_1164.all;

package definitions is

type Tmatrix is array (1 to 3) of std_logic_vector(1 to 3) ;
subtype Toutput is std_logic_vector(3 downto 0);

constant output11 : Toutput := "1000" ;
constant output12 : Toutput := "0100" ;
constant output13 : Toutput := "0010" ;
constant output21 : Toutput := "0001" ;
constant output22 : Toutput := "1100" ;
constant output23 : Toutput := "0111" ;
constant output31 : Toutput := "1011" ;
constant output32 : Toutput := "1101" ;
constant output33 : Toutput := "1110" ;
constant none	 : Toutput := "0000" ;

end definitions ;
