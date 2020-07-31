#!/bin/bash -x

echo "WELCOME TO EMPLOYEE WAGE COMPUTATION PROGRAM"

is_full_time=1
is_part_time=2
is_absent=0
wage_per_hr=20
max_working_days=20
max_hrs=100

function getWorkHrs 
{
randomCheck=$(( RANDOM%3 ))
case $randomCheck in
                  $is_full_time)
                                empHrs=8;;

                  $is_part_time)
                                empHrs=4;;

                  $is_absent)
                               empHrs=0;;
esac
totalHrs=$(( $totalHrs+$empHrs ))
}

while [[ $totalWorkingDays -lt $max_working_days && $totalHrs -lt $max_hrs ]]
do
((totalWorkingDays++))
getWorkHrs;
dailyWage[$totalWorkingDays]=$(( $wage_per_hr*$empHrs ))
done

totalWage=$(( $totalHrs*$wage_per_hr ))

echo $totalWage;
echo ${!dailyWage[@]}
echo ${dailyWage[@]}
