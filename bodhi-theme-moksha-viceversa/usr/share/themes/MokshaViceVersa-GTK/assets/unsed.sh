#!/bin/sh
sed -i \
         -e 's/rgb(0%,0%,0%)/#46341e/g' \
         -e 's/rgb(100%,100%,100%)/#e6e6fa/g' \
    -e 's/rgb(50%,0%,0%)/#332512/g' \
     -e 's/rgb(0%,50%,0%)/#1a1a1a/g' \
 -e 's/rgb(0%,50.196078%,0%)/#1a1a1a/g' \
     -e 's/rgb(50%,0%,50%)/#e2d4b6/g' \
 -e 's/rgb(50.196078%,0%,50.196078%)/#e2d4b6/g' \
     -e 's/rgb(0%,0%,50%)/#1a1a1a/g' \
	"$@"