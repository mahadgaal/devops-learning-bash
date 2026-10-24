#!/bin/bash
#Mission: Create a directory named Arena and then inside it,
# create three files: warrior.txt, mage.txt, and archer.txt. 
# List the contents of the Arena directory. 




dir="Arena"

file1="warrior.txt"
file2="mage.txt"
file3="archer.txt"

mkdir -p "$dir"
touch "$dir/$file1" "$dir/$file2" "$dir/$file3"
ls "$dir"
