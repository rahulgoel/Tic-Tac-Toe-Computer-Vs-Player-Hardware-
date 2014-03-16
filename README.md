Tic-Tac-Toe-Computer-Vs-Player-Hardware-
========================================

Simple tictac toe game , which can be played on hardware
Description:
The project involves designing a Standard Tic Tac Toe , where a player can play vs computer on a Spartan 3E kit. The design will consist of a sequential block and a combinational block to predict the next move of the computer, different colored LEDs will be used for output display, while buttons would be used to take the input. The coding would be done in VHDL and Xilinx 9.2 will be used to design the machine

Software and Hardware Used:
The project will be implemented on SPARTAN 3E  kit and will be designed in Xilinx v9.2 using
VHDL   (Very High Speed Integrated Circuits Hardware Description Language).

An FPGA (Field Programmable Gate Array) – SPARTAN 3 Kit. LED’s and Breadboard

1)Input and output Specifications
Input is taken through 8 slider switches present on board and one press switch , each of these 9 switches are assigned to one of the 9 blocks on tic tac toe
One of the switches is used for reset
Output- 
We connect 9 green and 9 red LEDs in a pair on a breadboard and connect them to our kit using an expansion cable. At a time both LEDs may be off showing that the block is empty , green may be on showing  computers turn there or red may be on showing players turn.
There is a win Led which glows when player wins and a lose LED which glows when player loses

A player can play perfect tic-tac-toe if they choose the move with the highest priority in the following 
1) Win: If you have two in a row, play the third to get three in a row.
2) Block: If the opponent has two in a row, play the third to block them.
5) Center: Play the center.
6) Opposite Corner: If the opponent is in the corner, play the opposite corner.
7) Empty Corner: Play an empty corner.
8) Empty Side: Play an empty side.

3)Repeat till a win -draw –or- lose

If you win the win Led glows , if you lose lose Led glows
