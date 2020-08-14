#!/bin/bash -x

read -p "Enter a number : " n

for (( i=1; i<=n ; i++ ))
{
      expr=`echo 1 $i | awk '{print $1/$2}'`
         result=`echo $result $expr | awk '{print $1+$2}'`
              echo $result
}
