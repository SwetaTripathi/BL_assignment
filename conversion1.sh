#!/bin/bash -x

inches=42;
oneFeet=12;

conversion=`echo $inches $oneFeet | awk '{print $1/$2}'`

echo "$inches inches is equal to $conversion feet";
