#! /bin/bash

echo "-------------------------------"
echo -n "1) Generate a random number: "
Rnum1=$RANDOM
echo "Rnum1: $Rnum1"

echo "----------------------------------"
echo "2) Generate 10 random numbers: "
TEN=10
count=1
while [ "$count" -le $TEN ]
do
 Rnum=$RANDOM
 echo "Rnum$count: $Rnum"
 let "count += 1"
done

echo "----------------------------------"
echo "3) Generate a random number within a certain range(100): "
RANGE=100
Rnum3=$RANDOM
let "Rnum3 %= $RANGE"
echo "Rnum3: $Rnum3"

echo "4) Generate a random number greater than a lower bound(100): "
BOUND=100
Rnum4=$RANDOM
while [ $Rnum4 -le $BOUND ]
do
 let "Rnum4 = $RANDOM"
done
echo "Rnum4: $Rnum4"

echo "5) Generate a random number between two limits:"
FLOOR=100
CEILING=500
Rnum5=$RANDOM
let "Rnum5 %= CEILING"
while [ $Rnum5 -le $FLOOR ]
do
 Rnum5=$RANDOM
 let "Rnum5 %= CEILING"
done

echo "Rnum5: $Rnum5"

