#!/bin/bash -x

read -p "Enter three numbers" a b c

declare -A result

result[first]=$(( $a+$b*$c ))
result[second]=$(( $a*$b+$c ))
result[third]=$(( $c+$a/$b ))
result[fourth]=$(( $a%$b+$c ))
echo ${result[@]}


arr[counter++]=${result[first]}
arr[counter++]=${result[second]}
arr[counter++]=${result[third]}
arr[counter++]=${result[fourth]}

echo ${arr[@]} | tr " " "\n" | sort -nr
echo ${arr[@]} | tr " " "\n" | sort -n

