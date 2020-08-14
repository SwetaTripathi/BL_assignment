#!/bin/bash -x

isHead=1
isTail=0
function coinFlip {
     coinFlip=$(( RANDOM%2 ))
       if [[ $coinFlip -eq $isHead ]]
        then
              (( heads++ ))
        else
              (( tails++ ))
       fi
}

 while [[ $heads -lt 21 && $tails -lt 21 ]]
   do
      coinFlip;
   done

if [[ heads -eq tails ]]
   then
       while [[ $heads-$tails -lt 2 && $tails-$heads -lt 2 ]]
          do
             coinFlip;
          done
fi

if [[ heads -gt tails ]]
   then
     echo "Heads won by $(( $heads-$tails )) points"
else
     echo "Tails won by $(( $tails-$heads )) points"
fi

