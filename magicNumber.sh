#!/bin/bash -x

echo "Think of a number between 0 to 100"

lower=0
higher=100
ans=$(( ($lower+$higher) / 2 ))
valid=true

while [ $valid ]

do
    read -p " Enter 1 if number is higher than $ans, enter 2 if number if lower than $ans or enter 3 if number is equal to $ans : " check

                 if [[ $check -eq 1 ]]
                     then 
                            higher=$ans
                            ans=$(( ($lower+$higher) / 2 ))
                 elif [[ $check -eq 2 ]]
                     then
                            lower=$ans
                            ans=$(( ($lower+$higher) / 2 ))
                 elif [[ $check -eq 3 ]]
                       then
                              echo "Your number was $ans"
                                   break;
                 else
                        echo "Invalid choice"
                 fi
done
