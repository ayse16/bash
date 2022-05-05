#! bin/bash

read -p "Enter the number: " num
#echo $num
rev=0
#get abs(num)
x=${num#-}

while [[ $x -ne 0 ]]
do 
  let "rev = $(( rev * 10 )) + $(( x % 10 ))"
  x=$((x/10))
done

if [[ $num -lt 0 ]]
then 
  let rev=rev\*-1
  echo "Reverse of the number is $rev"
else
  echo "Reverse of the number is $rev"
fi