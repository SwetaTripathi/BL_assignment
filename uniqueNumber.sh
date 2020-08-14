#!/bin/bash -x



for(( i=0 ; i<=100; i++ ))

{
    rem=0;

    num=$i
      while [ $num -gt 0 ]
      do

        rem=$(( $num % 10 ))

        num=$(( $num / 10 ))

        rev=$( echo ${rev}${rem} )
      done

      if [[ $i -eq $rev && $i -gt 9 ]]
      then
           UniqueNo[counter++]=$i
      fi
      rev="";


}

echo "Unique nos. are ${UniqueNo[@]}"

