#!/bin/bash


guessing_game() {
    correct_guess=$(ls -1 | wc -l)  # Counts the number of files in the current directory
    guess=0

   
    while [ $guess -ne $correct_guess ]; do
        echo "How many files are in the current directory?"
        read guess

        
        if [ $guess -lt $correct_guess ]; then
            echo "Too low! Try again."
        elif [ $guess -gt $correct_guess ]; then
            echo "Too high! Try again."
        fi
    done

   
    echo "Congratulations! $guess is the correct number of files."
}


guessing_game
