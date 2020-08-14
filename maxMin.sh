#!/bin/bash -x

n1=$(( 100+RANDOM%900 ));
n2=$(( 100+RANDOM%900 ));
n3=$(( 100+RANDOM%900 ));
n4=$(( 100+RANDOM%900 ));
n5=$(( 100+RANDOM%900 ));

max=$n1;
min=$n1;

if [[ n2 -gt max ]]
then
      max=$n2;
elif [[ n2 -lt min ]]
then
      min=$n2;
else
       max=$max;
       min=$min;
fi

if [[ n3 -gt max ]]
then
      max=$n3;
elif [[ n3 -lt min ]]
then
       min=$n3;
else
       max=$max;
       min=$min;
fi

if [[ n4 -gt max ]]
then
      max=$n4;
elif [[ n4 -lt min ]]
then
       min=$n4;
else
       max=$max;
       min=$min;
fi

if [[ n5 -gt max ]]
then
      max=$n5;
elif [[ n5 -lt min ]]
then
       min=$n5;
else
       max=$max;
       min=$min;
fi


echo $max;
echo $min;
