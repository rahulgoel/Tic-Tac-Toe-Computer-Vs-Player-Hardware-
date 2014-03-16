----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:28:35 04/15/2012 
-- Design Name: 
-- Module Name:    comb1 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;
use work.definitions.all;

entity sche1 is
   port (XLXN_8 : in    std_logic; 
				x11 : in  STD_LOGIC;
				x12 : in  STD_LOGIC;
           x13 : in  STD_LOGIC;
           x21 : in  STD_LOGIC;
           x22 : in  STD_LOGIC;
           x23 : in  STD_LOGIC;
           x31 : in  STD_LOGIC;
           x32 : in  STD_LOGIC;
           x33 : in  STD_LOGIC;
           reset: in STD_LOGIC;
          XLXN_6 : out   std_logic_vector (3 downto 0);
			 xarrout : out std_logic_vector(8 downto 0);
			 yarrout : out std_logic_vector(8 downto 0);
			 winnerx, winnery : out std_logic);
end sche1;

architecture BEHAVIORAL of sche1 is
   signal XLXN_1       : Tmatrix;
   signal XLXN_2       : Tmatrix;
   signal XLXN_6_DUMMY : std_logic_vector (3 downto 0);
   component box
      port ( x       : in    Tmatrix; 
             y       : in    Tmatrix; 
             output1 : out   std_logic_vector (3 downto 0));
   end component;
   
   component inp1
      port ( clk    : in    std_logic; 
				reset1: in std_logic;
             usrinp : in    std_logic_vector (3 downto 0); 
             comp   : in    std_logic_vector (3 downto 0); 
             x1     : out   Tmatrix; 
             y1     : out   Tmatrix;
				 xout	:out    std_logic_vector (8 downto 0); 
				yout	:out    std_logic_vector (8 downto 0);
			winx,winy	: out std_logic);
   end component;
	component ucf1
	   Port ( x11 : in  STD_LOGIC;
           x12 : in  STD_LOGIC;
           x13 : in  STD_LOGIC;
           x21 : in  STD_LOGIC;
           x22 : in  STD_LOGIC;
           x23 : in  STD_LOGIC;
           x31 : in  STD_LOGIC;
           x32 : in  STD_LOGIC;
           x33 : in  STD_LOGIC;
           user : out  STD_LOGIC_VECTOR (03 downto 0));
			  end component;
  signal c,d :Tmatrix; 
  signal output1,user1: std_logic_vector(3 downto 0);
 -- signal p1,p2: std_logic_vector(8 downto 0);
begin
  -- XLXN_6(3 downto 0) <= XLXN_6_DUMMY(3 downto 0);
	XLXN_6 <=output1;
--	winnerx <= winx;
--	winnery <= winy;
--	xarrout(8 downto 0)<= p1(8 downto 0);
--	yarrout(8 downto 0)<= p2(8 downto 0);
   XLXN_3 : box
      port map (c,d,output1);
   
   XLXN_4 : inp1
      port map (XLXN_8,reset,user1,output1,c,d,xarrout,yarrout,winnerx,winnery);
		
   g1: ucf1
	port map(x11,x12,x13,x21,x22,x23,x31,x32,x33,user1);
	
end BEHAVIORAL;
