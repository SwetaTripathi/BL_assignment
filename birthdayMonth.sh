#!/bin/bash

declare -A Birthday

for (( i=1; i<=50; i++ ))
{  
     randomBdayMonth=$(( 1+RANDOM%12 ))
       case $randomBdayMonth in

               "1") (( jan++ ))
                     Birthday[January]=$jan
                      jan[count++]=$i;;
               "2") (( feb++ ))
                     Birthday[February]=$feb
                      feb[count++]=$i;;
               "3") (( mar++ ))
                     Birthday[March]=$mar
                       mar[count++]=$i;;
               "4") (( apr++ ))
                     Birthday[April]=$apr
                      apr[count++]=$i;;
               "5") (( may++ ))
                     Birthday[May]=$may
                      may[count++]=$i;;
               "6") (( jun++ ))
                     Birthday[June]=$jun
                      jun[count++]=$i;;
               "7") (( jul++ ))
                     Birthday[July]=$jul
                      jul[count++]=$i;;
               "8") (( aug++ ))
                     Birthday[August]=$aug
                      aug[count++]=$i;;
               "9") (( sep++ ))
                     Birthday[September]=$sep
                      sep[count++]=$i;;
               "10") (( oct++ ))
                      Birthday[October]=$oct
                        oct[count++]=$i;;
               "11") (( nov++ ))
                      Birthday[November]=$nov
                        nov[count++]=$i;;
               "12") (( dec++ ))
                      Birthday[December]=$dec
                       dec[count++]=$i;;
       esac
}

echo ${!Birthday[@]}
echo ${Birthday[@]}

echo "People who's birthday is in January ${jan[@]}"
echo "People who's birthday is in February ${feb[@]}"
echo "People who's birthday is in March ${mar[@]}"
echo "People who's birthday is in April ${apr[@]}"
echo "People who's birthday is in May ${may[@]}"
echo "People who's birthday is in June ${jun[@]}"
echo "People who's birthday is in July ${jul[@]}"
echo "People who's birthday is in August ${aug[@]}"
echo "People who's birthday is in September ${sep[@]}"
echo "People who's birthday is in October ${oct[@]}"
echo "People who's birthday is in November ${nov[@]}"
echo "People who's birthday is in December ${dec[@]}"



