#!/bin/sh
# This script will recolor all icons except those in colorful folder.
if [ $# -eq 0 ]; then
	if [ -f hexcolor ]; then
		COLOR=`cat hexcolor` # use previous color
	else
		COLOR="E8B66B" # default color same as text
	fi
elif [ "$1" = "help" ] || [ "$1" = "-help" ] || [ "$1" = "--help" ]; then
   echo "usage: ./recolor.sh 00AAFF"
   echo "If no color code specified it will be read from text file named hexcolor."
   echo "If no hexcolor file, then FFFFFF white will be used."
   exit
else
   COLOR="$1"
fi

echo Recoloring icons to "$COLOR" in the following folders...
for folder in apps categories devices emblems mimetypes places status stock
do
	pushd $folder >/dev/null
	echo $folder
	mogrify -fill "#""$COLOR" -colorize 100 *.png
	rm *.png~ *.png~~ 2>/dev/null
	popd >/dev/null
done
echo "$COLOR" >hexcolor
