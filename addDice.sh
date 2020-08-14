#!/bin/bash -x

diceNumber1=$(( 1+RANDOM%6 ))
diceNumber2=$(( 1+RANDOM%6 ))

addition=$(( $diceNumber1 + $diceNumber2 ))

echo $addition;
