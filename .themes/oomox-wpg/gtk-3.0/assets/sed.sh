#!/bin/sh
sed -i \
         -e 's/#212121/rgb(0%,0%,0%)/g' \
         -e 's/#eeeeee/rgb(100%,100%,100%)/g' \
    -e 's/#212121/rgb(50%,0%,0%)/g' \
     -e 's/#ff0000/rgb(0%,50%,0%)/g' \
     -e 's/#424242/rgb(50%,0%,50%)/g' \
     -e 's/#eeeeee/rgb(0%,0%,50%)/g' \
	"$@"
