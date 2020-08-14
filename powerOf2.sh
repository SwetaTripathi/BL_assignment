#!/bin/bash -x

read -p "Enter a number : " n

for(( i=1; i<=n ; i++ ))
{
       result=$(( 2**i ))
           echo $result;
}
