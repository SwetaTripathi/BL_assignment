#!/bin/bash -x

declare -A result



function dictionary {
randomRoll=$(( 1+RANDOM%6 ))

case $randomRoll in
                  "1") (( one++ ))
                      result[1]=$one;;
                  "2") (( two++ ))
                      result[2]=$two;;
                  "3") (( three ++ ))
                      result[3]=$three;;
                  "4") (( four++ ))
                       result[4]=$four;;
                  "5") (( five++ ))
                       result[5]=$five;;
                  "6") (( six++ ))
                       result[6]=$six;;
esac
}

while [[ $one -lt 10 && $two -lt 10 && $three -lt 10 && $four -lt 10 && $five -lt 10 && $six -lt 10 ]]
do
   dictionary
done

echo ${!result[@]}
echo ${result[@]}

max=${result[1]}
min=${result[1]}

for i in ${result[@]}
do
     if [[ $i -gt max ]]
      then
          max=$i
     fi
done

for i in ${result[@]}
do
     if [[ $i -lt min ]]
      then
          min=$i
     fi
done


echo $max
echo $min
