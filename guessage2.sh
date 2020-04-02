#!/bin/bash
#sestablishing the ranges
echo "Portfolio 2 : Age Guessing Game"
echo "Name: Sanoj Withanage"
echo "Task 1"
max=70
min=20
#Generating random numbers between maximum and the minimum
function real_number()
{
    ((diff=$max-$min+1))
    local real_nnumber="$(($min+$RANDOM%$diff))"
    echo "$real_nnumber"
}

#making the range of guess and setting up the error massege according to the results
function game_play()
{
    real_number="$(real_number)"
    while [ $guess==$real_number ]; do
        read -p "Enter your guess between 20 and 70: " guess
        if [ $guess -lt $real_number ]; then
            echo "Too low"
            echo "Try again"
        elif [ $guess -gt $real_number ]; then
            echo "Too high"
            echo "Try again"
        elif [ $guess -eq $real_number ]; then
        echo "you are correct"
        fi
    done
}
game_play