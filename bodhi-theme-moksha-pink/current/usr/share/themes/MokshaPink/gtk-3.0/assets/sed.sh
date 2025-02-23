#!/bin/sh
sed -i \
         -e 's/#cecfc2/rgb(0%,0%,0%)/g' \
         -e 's/#1a1a1a/rgb(100%,100%,100%)/g' \
    -e 's/#bbbcaf/rgb(50%,0%,0%)/g' \
     -e 's/#1a1a1a/rgb(0%,50%,0%)/g' \
     -e 's/#dee0d3/rgb(50%,0%,50%)/g' \
     -e 's/#000000/rgb(0%,0%,50%)/g' \
	"$@"
