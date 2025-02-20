#!/bin/sh
sed -i \
         -e 's/#aaaaaa/rgb(0%,0%,0%)/g' \
         -e 's/#000000/rgb(100%,100%,100%)/g' \
    -e 's/#aaaaaa/rgb(50%,0%,0%)/g' \
     -e 's/#790000/rgb(0%,50%,0%)/g' \
     -e 's/#ffffff/rgb(50%,0%,50%)/g' \
     -e 's/#1a1a1a/rgb(0%,0%,50%)/g' \
	$@
