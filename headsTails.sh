#!/bin/bash -x

randomOutcome=$(( RANDOM%2 ));

heads=1;

if [[ randomOutcome -eq heads ]]
then
      echo "The outcome is Heads";
else
       echo "The otcome is Tails";
fi
