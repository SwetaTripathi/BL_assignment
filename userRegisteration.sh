#!/bin/bash

shopt -s extglob

pattern=1


while [[ $pattern -eq 1 ]]
do
echo "Please enter your first name"
read word1
pat="^[[:upper:]]{1}[a-z]{2,}$"

    if [[ $word1 =~ $pat ]]
    then
        pattern=0
    else
       echo "Invalid entry. Enter name again"
    fi
done


pattern=1
while [[ $pattern -eq 1 ]]
do
echo "Please enter your last name"

read word2

pat="^[[:upper:]]{1}[a-z]{2,}$"

    if [[ $word2 =~ $pat ]]
    then
           pattern=0
    else
        echo "Invalid entry. Enter name again"
    fi
done


pattern=1
while [[ $pattern -eq 1 ]]
do
echo "Please enter your email id"

read word3

pat="^[a-zA-Z]+([._+#][a-zA-Z0-9]+)*@[a-zA-Z]+.[a-zA-Z]{2,4}(.[a-zA-Z]{2,2})?$"


    if [[ $word3 =~ $pat ]]
    then
           pattern=0
    else
        echo "Invalid entry. Enter name again"
    fi
done



pattern=1
while [[ $pattern -eq 1 ]]
do
echo "Please enter your Phone number"

read word4

pat="^(91)[ ][6-9]{1,1}[0-9]{9}$"


    if [[ $word4 =~ $pat ]]
    then
           pattern=0
    else
        echo "Invalid entry. Enter name again"
    fi
done


echo "First name - $word1"
echo "Last name - $word2"
echo "Email id - $word3"
echo "Phone Number - $word4"

