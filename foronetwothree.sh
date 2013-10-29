#! /bin/bash

List="one two three"

#Spilits the variable in parts at whitespace
for a in $List
do
 echo "$a"
done

echo "----------------"

#Preserves whitespace in a single variable
for a in "$List"
do
 echo "$a"
done
