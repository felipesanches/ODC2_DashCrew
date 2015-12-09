ODC2_DashCrew
=============

ODC2 Demo released at Rewired 2010 demoparty by demo "group" DashCrew for the Odyssey²/Videopac videogame.

This code is the result of my ongoing experimentation with lowlevel programming 
for the Magnavox Odyssey² (a.k.a. VIDEOPAC G7000) video game.
It is written in 8048 assembly language.
You can learn more about it here: http://soeren.informationstheater.de/g7000/

---------------------------------
It has been awarded in 3rd place in the 
Rewired2010 demo party in Maaseik, Belgium.

Group: DashCrew

Code:
Felipe Sanches - Juca
Leandro Lameiro

Sound:
Niels van Dijkhuizen - (Nebulah)
---------------------------------

## Platform details
- First demo ever for the Phillips VIDEOPAC G7000 (Europe) / Magnavox Odyssey² (USA/Brazil)
- 8-bit video game console released in 1978

# cpu
- Intel 8048 at 5,37 MHz
- 64 bytes of RAM

# graphics
- 160x200 (without framebuffer), 16 colors
- max 12 single-color chars on screen at a given moment

# audio
1-bit sound output generated by shifting a 24-bit buffer + white noise channel

## GNU/Linux
You can build it by running "make rom"
By running "make" it will create a ROM file and load it into the o2em emulator

## Windows
Install o2em emulator and run the rom image in it.

## Dependencies
* asl (8048 assembler): http://john.ccac.rwth-aachen.de:8000/as/download.html
* python interpreter

## Emulator
You will need an Odyssey² emulator to run the compiled code.
Get it here: http://www.guttenbrunner.com/videopac/o2emPort.html

Obviously you can also write the ROM file to a real cartridge and use your old
Odyssey² console, but that's certainly harder.

## Licensing
This code is released under the terms of the GNU General Public License 
version 2 or later.
