#! bin/bash

read -p "How many fibonacci numbers would you like to generate? " num

array=(1 1)
if [[ $num -eq 1 ]]
then 
  echo "["${array[0]}"]"
elif [[ $num -eq 2 ]]
then 
  echo "[${array[@]}]"
else
  for ((i=2; i < $num; i++))
  do
    x=$((${array[$((i-2))]}+${array[$((i-1))]}))
    array+=($x)
  done
  echo "[${array[@]}]"
fi 