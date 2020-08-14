#!/bin/bash -x

for (( i=0; i<10; i++ ))
{
      j=$(( 100+RANDOM%900 ))
         Array[$i]=$j
}

echo ${Array[@]}


largest=${Array[0]}
secondLargest=''

for((i=1; i<10; i++))
{

  if [[ ${Array[i]} -gt $largest ]]
  then

    secondLargest=$largest
    largest=${Array[i]}

  elif [[ ${Array[i]} -ne $largest && $secondLargest -eq "" || ${Array[i]} -gt $secondLargest ]] 
  then
    secondLargest=${Array[i]}
  fi

}

echo "Second Largest number is $secondLargest"



smallest=${Array[0]}
secondSmallest=''

for((i=1; i<10; i++))
{

  if [[ ${Array[i]} -lt $smallest ]]
  then

    secondSmallest=$smallest
    smallest=${Array[i]}

  elif [[ ${Array[i]} -ne $smallest && $secondSmallest -eq "" || ${Array[i]} -lt $secondSmallest ]]
  then
    secondSmallest=${Array[i]}
  fi

}

echo "Second Smallest number is $secondSmallest"
