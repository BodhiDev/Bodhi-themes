#!/bin/sh
for file in *.svg
do 
  inkscape $file -o ${file%svg}png
done
printf "\nYou probably want to rm *.svg now...\n\n"
