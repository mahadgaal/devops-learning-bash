#!/bin/bash


: '
Level 5: The Boss Battle - Combining Basics
Mission: Combine what youve learned! Write a script that:

1. Creates a directory names 'Battlefield'
2. Inside Battlefield, create files named knight.txt, sorcerer.txt, and rogue.txt.
3. Check if knight.txt exists; if it does, move it to a new directory called Archive.
4. List the contents of both Battlefield and Archive.
'

mkdir -p Battlefield
mkdir -p Archive 
cd Battlefield

touch knight.txt
touch sorcerer.txt
touch rogue.txt


if [ -f knight.txt ]; then
cd ..
mv Battlefield/knight.txt Archive 
fi

ls -l Battlefield Archive 
