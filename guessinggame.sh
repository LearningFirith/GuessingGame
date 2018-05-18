#!/usr/bin/env bash
# File: guessinggame.sh

function start_game {
	local number_of_files=$(ls | wc -l)
	local tries=0 number_guess
	while [[ $number_of_files -ne $number_guess ]]
	do
		if [[ $tries -eq 0 ]]
		then
			echo "How many files do you think are in this directory?"
		elif [[ $number_guess -lt $number_of_files ]]
		then
			echo "There are actually more files in here, try again: "
		else
			echo "A bit optimistic, try a lower number: "
		fi
		read number_guess
		let tries=$tries+1
	done
	echo "Congratulations! You were able to guess the number of files in $tries tries"
}

start_game
