#!/bin/bash

mkdir ./imgexp

convert -coalesce ./giphy.gif ./imgexp/-.jpg
for FILE in `ls ./imgexp/ | sort -g`;do echo "$FILE"; done
for i in $( ls ./imgexp/ ); do img2txt.py ./imgexp/$i --maxLen=150 --fontSize=7; done > ./img.txt
links -dump ./img.txt > ./final.txt
python ./printascii.py


