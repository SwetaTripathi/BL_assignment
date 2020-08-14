#!/bin/bash

read -p "Enter number to find its prime factors : " n

  	for (( i=2; i<=n; i++ ))
   	{
     	      if [[ $n%$i -eq 0 ]]
                 then
   			isPrime=1;

			for (( j=2; j<=i/2; j++ ))
			{
				if [[ $i%$j -eq 0 ]]
				then
					isPrime=0;
					break;
                                fi

			}

			if [[ $isPrime -eq 1 ]]
			then
		              echo $i is prime factor of $n
                        fi
              fi
          }
