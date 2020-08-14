#!/bin/bash -x

read -p "Enter a single digit number : " x;

case $x in
       "1")
           echo "ONE";;

       "2")
            echo "TWO";;

       "3")
            echo "Three";;

       "4")
            echo "FOUR";;

       "5")
            echo "FIVE";;

       "6")
            echo "SIX";;

       "7")
            echo "SEVEN";;

       "8")
            echo "EIGHT";;

       "9")
            echo "NINE";;

       "0")
            echo "ZERO";;

       *)
            echo "Number is not a single digit number";;

esac

