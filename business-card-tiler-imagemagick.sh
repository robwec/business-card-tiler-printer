#!/bin/bash
##load 01-12.jpg, create cardsheet.jpg = 3x4 grid at 1050x600 pixels at 300 DPI = 3.5" x 2" standard business card size, with 4px black border = 2x2 border on imagemagick.
	##May need to print with "No fit/shrink" setting to get actual business card size.

montage in/*.png -units PixelsPerInch -density 300x300 -tile 3x4 -gravity center -extent 1050x600 -geometry 1050x600+0+0 -border 2x2 -bordercolor black -background white cardsheet.png
#can't add the frame without messing stuff up. Do in a separate step.
convert cardsheet.png -gravity center -extent 3300x2550 cardsheet.png
#make a PDF too for fast printing.
convert cardsheet.png -units PixelsPerInch -density 300x300 cardsheet.pdf
