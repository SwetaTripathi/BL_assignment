#!/bin/bash -x

feet1=60;
feet2=40;

area25Plots=$(( $feet1 * $feet2 *25 ))

conversion=`echo $area25Plots 43560 | awk '{print $1/$2}'`

echo "$area25Plots sq feet is equal to $conversion acres";
