#!/bin/bash -x

read -p "Enter first number: " a
read -p "Enter second number: " b
read -p "Enter third number: " c

eq1=$(( $a + $b * $c ));
eq2=$(( $a % $b + $c ));
eq3=$(( $c + $a / $b ));
eq4=$(( $a * $b + $c ));


max=$eq1;
min=$eq2;

if [[ eq2 -gt max ]]
then
      max=$eq2;
elif [[ eq2 -lt min ]]
then
      min=$eq2;
else
       max=$max;
       min=$min;
fi

if [[ eq3 -gt max ]]
then
      max=$eq3;
elif [[ eq3 -lt min ]]
then
       min=$eq3;
else
       max=$max;
       min=$min;
fi

if [[ eq4 -gt max ]]
then
      max=$n4;
elif [[ eq4 -lt min ]]
then
       min=$eq4;
else
       max=$max;
       min=$min;
fi

echo $max
echo $min
