#! /bin/bash
# Find the largest file in a directory using a recrusive way.

FILEDIR=/usr/src/linux
TempFile=~/Documents/temp.txt

cd $FILEDIR

for file in *
do
 ls -l "$file" >> $TempFile
done

awk '{print $5, $9}' << $TempFile | sort -n -r | head -n 5

#rm -f temp.txt
