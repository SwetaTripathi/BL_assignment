#!/bin/bash -x

read -p "Enter no. to be converted : " num
read -p "For degC to degF press 1 and for degF to degc press 2 : " choice

function conversion()
{
      case $choice in
                        "1")
                                   expr1=`echo 9 5 | awk '{print $1/$2}'`
                                   expr2=`echo $num $expr1 | awk '{print $1*$2}'`
                                   expr3=`echo $expr2 32 | awk '{print $1+$2}'`
                                                  return $expr3 ;;
                        "2")
                                   expr1=`echo 5 9 | awk '{print $1/$2}'`
                                   expr2=`echo $num 32 | awk '{print $1-$2}'`
                                   expr3=`echo $expr2 $expr1 | awk '{print $1*$2}'`
                                                   return $expr3 ;;

                          *)
                                   echo "Invalid Input" ;;
      esac
}

   if [[ $choice -eq 1 && $num -ge 0 && $num -le 100 ]]
          then
                   conversion
                       echo "$num degC equals to $? degF"
          elif [[ $choice -eq 2 && $num -ge 32 && $num -le 212 ]]
               then
                       conversion
                          echo "$num degF equals to $? degC"
           else
                   echo "Invalid input"
  fi
