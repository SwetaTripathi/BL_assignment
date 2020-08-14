#!/bin/bash -x

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
rev="";
}




for (( i=1 ; i<=2 ; i++ ))
{
     read -p " Enter a number : " num
           palindrome;
}
