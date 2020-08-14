#!/bin/bash -x


for (( i=0; i<10; i++ ))
{
      j=$(( 100+RANDOM%900 ))
         Array[$i]=$j
}

echo ${Array[@]}
Array2=($(echo ${Array[@]} | tr " " "\n" | sort -nr))
echo ${Array2[@]}


#as the Array2 is sorted we know that the second largest is the second number in the array and second smallest is the second last number in the array

secondLargest=${Array2[1]}
echo "Second largest number is $secondLargest"

secondSmallest=${Array2[8]}
echo "Second smallesr number is $secondSmallest"
