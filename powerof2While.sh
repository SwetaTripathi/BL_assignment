#!/bin/bash -x

read -p "Enter a number : " n
i=1;
while [[ i -le n && result -lt 256 ]]
do
       result=$(( 2**i ))
           echo $result;
              ((i++)) ;
done

