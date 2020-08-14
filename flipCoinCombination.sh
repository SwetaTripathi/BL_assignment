#!/bin/bash 


IS_HEAD=1;
declare -A dict1
for (( i=1; i<=5; i++ ))
{
   coinFlip=$(( RANDOM%2 ))
     if [[ coinFlip -eq IS_HEAD ]]
      then
          dict1[$i]="Head"
          (( heads++ ))
      else
          dict1[$i]="Tail"
          (( tails++ ))
     fi
}

echo ${dict1[@]}

expr=`echo $heads 5 | awk '{print $1/$2}'`
percent=`echo $expr 100 | awk '{print $1*$2}'`
echo "$percent% is heads"
expr=`echo $tails 5 | awk '{print $1/$2}'`
percent=`echo $expr 100 | awk '{print $1*$2}'`
echo "$percent% is tails"

declare -A dict2

for(( i=1; i<=5; i++ ))
{  
   
         coinFlip=$(( RANDOM%2 ))
          if [[ coinFlip -eq IS_HEAD ]]
             then
               (( heads1++ ))
                coinFlip=$(( RANDOM%2 ))
                   if [[ coinFlip -eq IS_HEAD ]]
                      then 
                           (( heads1++ ))
                            dict2[$i]="HEADHEAD"
                      else
                           (( tails1++ ))
                            dict2[$i]="HEADTAIL"
                  fi
             else
                     (( tails1++ ))
                  coinFlip=$(( RANDOM%2 ))
                   if [[ coinFlip -eq IS_HEAD ]]
                      then
                           (( heads1++ ))
                            dict2[$i]="TAILHEAD"
                      else
                           (( tails1++ ))
                            dict2[$i]="TAILTAIL"
           fi      fi
}

echo ${dict2[@]}

expr=`echo $heads1 10 | awk '{print $1/$2}'`
percent=`echo $expr 100 | awk '{print $1*$2}'`
echo "$percent% is heads"
expr=`echo $tails1 10 | awk '{print $1/$2}'`
percent=`echo $expr 100 | awk '{print $1*$2}'`
echo "$percent% is tails"


declare -A dict3

for(( i=1; i<=5; i++ ))
{
      coinFlip=$(( RANDOM%2 ))
        if [[ coinFlip -eq IS_HEAD ]]
             then
               (( heads2++ ))
                coinFlip=$(( RANDOM%2 ))
                   if [[ coinFlip -eq IS_HEAD ]]
                      then
                           (( heads2++ ))
                           coinFlip=$(( RANDOM%2 ))
                            if [[ coinFlip -eq IS_HEAD ]]
                              then
                                   (( heads2++ ))
                                  dict3[$i]="HEADHEADHEAD"
                            else
                                  (( tails2++ ))
                                  dict3[$i]="HEADHEADTAIL"
                            fi
                      else
                           (( tails2++ ))
                               coinFlip=$(( RANDOM%2 ))
                                 if [[ coinFlip -eq IS_HEAD ]]
                                 then
                                    (( heads2++ ))
                                      dict3[$i]="HEADTAILHEAD"
                                 else
                                    (( tails2++ ))
                                     dict3[$i]="HEADTAILTAIL"
                                 fi

                   fi
            else
                 (( tails2++))
                 coinFlip=$(( RANDOM%2 ))
                    if [[ coinFlip -eq IS_HEAD ]]
                     then
                          (( heads2++ ))
                      coinFlip=$(( RANDOM%2 ))
                      if [[ coinFlip -eq IS_HEAD ]]
                              then
                                   (( heads2++ ))
                                  dict3[$i]="TAILHEADHEAD"
                            else
                                  (( tails2++ ))
                                  dict3[$i]="TAILHEADTAIL"
                            fi
                      else
                           (( tails2++ ))
                               coinFlip=$(( RANDOM%2 ))
                                 if [[ coinFlip -eq IS_HEAD ]]
                                 then
                                    (( heads2++ ))
                                      dict3[$i]="TAILTAILHEAD"
                                 else
                                    (( tails2++ ))
                                     dict3[$i]="TAILTAILTAIL"
                                 fi
                    fi
           fi
}

echo ${dict3[@]}

expr=`echo $heads2 15 | awk '{print $1/$2}'`
percent=`echo $expr 100 | awk '{print $1*$2}'`
echo "$percent% is heads"
expr=`echo $tails2 15 | awk '{print $1/$2}'`
percent=`echo $expr 100 | awk '{print $1*$2}'`
echo "$percent% is tails"

totalHeads=$(( $heads+$heads1+$heads2 ))
totalTails=$(( $tails+$tails1+$tails2 ))

expr=`echo $totalHeads 30 | awk '{print $1/$2}'`
percent1=`echo $expr 100 | awk '{print $1*$2}'`

expr=`echo $totalTails 30 | awk '{print $1/$2}'`
percent2=`echo $expr 100 | awk '{print $1*$2}'`

echo "$percent1% of total outcomes is Heads"
echo "$percent2% of total outcomes is Tails"













