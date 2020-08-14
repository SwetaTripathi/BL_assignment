#!/bin/bash -x

heads=1;
tails=0;
headWins=0;
tailWins=0;

while [[ headWins -lt 11 && tailWins -lt 11 ]]

do
     check=$(( $RANDOM%2 ))

     if [[ check -eq heads ]]
        then
             (( headWins++ ))
     else
          (( tailWins++ ))
     fi

done

echo "No. heads is $headWins"
echo "No. of tails is $tailWins"
