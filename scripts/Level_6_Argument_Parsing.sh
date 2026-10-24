#!/bin/bash

: 'Level 6: Argument Parsing

Mission: Write a script that accepts a filename as an argument and prints the number of lines in that file. If no filename is provided, display a message saying "No file provided".

'

if [[ -z "$1" ]]; then
    echo "No file provided"
else
    wc -l < "$1"
fi

#$1 is the first argument passed to the script. Running bash level6.sh notes.txt makes $1 equal to notes.txt.
#-z "$1" is true when the string is empty, so it catches the case where no argument was given.
#wc -l < "$1" counts the lines and prints only the number. Without the <, wc would print the filename after the number too.
#To confirm this script is running you can run the command : bash (name of this script) (filename you want this script to print the number of lines in the file)


