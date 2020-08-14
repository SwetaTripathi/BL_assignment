#!/bin/bash -x


function prime {


for (( i=2; i<num ; i++ ))
 {
    if [[ $num%$i -eq 0 ]]
         then
                count=$(( $count+1 ))
         else
                count=$count
    fi
}

 if [[ $count -eq 0 ]]
    then
          echo "$num is a prime number"
    else
          echo "$num is not a prime number"
fi
}

function palindrome {

rem=0;

temp=$num
while [ $num -gt 0 ]
do

    rem=$(( $num % 10 ))

    num=$(( $num / 10 ))

    rev=$( echo ${rev}${rem} )
done

if [ $temp -eq $rev ];
then
   echo "Number is palindrome"
else
   echo "Number is not palindrome"
fi

}

read -p  "Enter no. to be checked : " num

prime
palindrome

num=$rev #checking if palindrome is also a prime.

prime


