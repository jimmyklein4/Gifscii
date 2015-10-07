#!/bin/bash

mkdir ./imgexp

python ./randomGiphy.py
convert -coalesce ./giphy.gif ./imgexp/img.jpg
mv ./imgexp/img-1.jpg ./imgexp/img-01.jpg
mv ./imgexp/img-2.jpg ./imgexp/img-02.jpg
mv ./imgexp/img-3.jpg ./imgexp/img-03.jpg
mv ./imgexp/img-4.jpg ./imgexp/img-04.jpg
mv ./imgexp/img-5.jpg ./imgexp/img-05.jpg
mv ./imgexp/img-6.jpg ./imgexp/img-06.jpg
mv ./imgexp/img-7.jpg ./imgexp/img-07.jpg
mv ./imgexp/img-8.jpg ./imgexp/img-08.jpg
mv ./imgexp/img-9.jpg ./imgexp/img-09.jpg

#THIS DOESNT WORK BECAUSE IMG.TXT IS HTML AND FINAL ISNT
#WRITE REGEX TO JUST PUT A BREAK AFTER EACH FRAME
for i in $( ls ./imgexp/ ); do img2txt.py ./imgexp/$i --maxLen=200 --fontSize=9;  done > ./img.txt
python ./space.py
python ./printascii.py

rm -r ./imgexp

