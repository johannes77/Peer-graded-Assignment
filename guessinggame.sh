#!/usr/bin/env bash
# File: guessinggame.sh

clear
echo "Please try the number of files in PWD!"
pwd
echo "Your try: "
read try

function getfilenumber {
	local number_of_file=$(ls -l | wc -l)-1
	echo $number_of_file
}

number_of_files_in_pdw=$(getfilenumber)

while [[ $try -ne $number_of_files_in_pdw ]]
do
	if [[ $try -gt $number_of_files_in_pdw ]]
	then
		echo "Sorry, please try again was too high..."
	else 
		echo "Sorry, please try again was too low..."
	fi
	echo
	echo "try again please: "
	read try
done

echo "You got the right number!"