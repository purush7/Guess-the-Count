#!/usr/bin/env bash

## Name  :  Purushotham
## Title :  Guess the Count
## To get list all files including hidden ones the use -a flag eg ls -a

echo "How many files are in the current directory ?"

x=$(ls | wc -l)

function check {
    while [[ true ]]
    do
        read guess
        if [[ ! $guess =~ ^[0-9]+$ ]]  
        then
            echo "Enter a Whole Number"
        elif [[ $((10#$guess)) -eq $x ]]    # here $((10#$guess)) is use instead of $guess cause for inputs like "09" which starts with  '0', it interpret as octal base
        then
            echo "Congrats , your guess is correct :)"
            break
        elif [[ $((10#$guess)) -lt $x ]]
        then
            echo "Your guess was too low"
        else
            echo "Your guess was too high"
        fi
    done
}

check
