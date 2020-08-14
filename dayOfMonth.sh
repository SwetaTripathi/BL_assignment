#!/bin/bash -x

read -p "Enter day : " day;
read -p "Enter month :" month;

if [[ (day -ge 20 && day -le 31 && month -ge 3 && month -le 5) || (day -ge 1 && day -le 19 && month -ge 4 && month -le 4) ]]
then
 echo "true";
else
  echo "false";
fi
