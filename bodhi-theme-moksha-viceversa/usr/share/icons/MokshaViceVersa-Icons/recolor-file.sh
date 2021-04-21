#!/bin/sh
COLOR="D4B262"
if ! mogrify -fill "#""$COLOR" -colorize 100 $1; then
	echo "edit file first to set color.  usage: filecolor.sh filename"
else
	echo Changed "$1" to "$COLOR"...
fi
