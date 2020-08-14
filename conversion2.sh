#!/bin/bash -x

feet1=60;
feet2=40;

area=$(( $feet1 * $feet2 ))

conversion=`echo $multiplication 0.0929 | awk '{print $1*$2}'`

echo "$area sq feet is equal to $conversion sq meters";
