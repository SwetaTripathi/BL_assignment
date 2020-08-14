#!/bin/bash -x

read -p "Enter number who's factorial is to be found : " n

factorial=1;

for (( i=1 ; i<=n ; i++ ))
{
        factorial=$(( $factorial * i ))
}
     echo Factorial of $n is $factorial;
