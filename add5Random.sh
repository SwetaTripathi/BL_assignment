#!/bin/bash -x

n1=$(( 10+RANDOM%90 ))
n2=$(( 10+RANDOM%90 ))
n3=$(( 10+RANDOM%90 ))
n4=$(( 10+RANDOM%90 ))
n5=$(( 10+RANDOM%90 ))

addition=$(( $n1 + $n2 + $n3 + $n4 + $n5 ))

average=`echo $addition 5 | awk '{print $1/$2}'`

echo "Sum is $addition";
echo "Average is $average";
