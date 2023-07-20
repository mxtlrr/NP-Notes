#!/bin/bash

bash ./clean.sh
cd tex/
pdflatex physics.tex -o physics.pdf
cd .. # go back to original directory