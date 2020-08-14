#!/bin/bash

Integers=(1 -2 -1 3 0 4 2 0 -4 -3)

   for (( i=0; i<${#Integers[@]}-2; i++ ))
     {
         for (( j=i+1; j<${#Integers[@]}-1; j++ ))
           {
               for (( k=j+1; k<${#Integers[@]}; k++ ))
                 {
                      if [[ ${Integers[i]}+${Integers[j]}+${Integers[k]} -eq 0 ]]
                         then
                              echo "${Integers[i]}+${Integers[j]}+${Integers[k]} = 0"
                       fi
                 }
            }
     }
