#!/bin/bash

read -p "Enter the conversion to be taken place: for feet to inch enter 1, for feet to meter enter 2, for inch to feet enter 3, for meter to feet enter 4  " conv
read -p "Enter value to be converted :"  val

case $conv in

              "1")
                     result=$(( $val * 12 ))
                              echo "$val feet is equal to $result inches";;

               "2")
                     result=`echo $val 0.3048 | awk '{print $1*$2}'`
                          echo "$val feet is equal to $result meters";;

                "3")
                        result=`echo $val 0.0833 | awk '{print $1*$2}'`
                             echo "$val inches is equal to $result feet";;

                 "4")
                        result=`echo $val 3.281 | awk '{print $1*$2}'`
                               echo "$val meters is equal to $result feet";;

                   *)
                           echo "Invalid input" ;;
esac
