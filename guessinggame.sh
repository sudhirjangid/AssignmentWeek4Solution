#!/usr/bin/env bash
#guessinggame.sh
echo "Ask a user to guess the number of lines present in current working directory?"
input=$(ls | wc -l)

function input_number {
echo "Enter a number:"
read input_number
}

input_number

while :
do
  
  if [[ $input_number -gt $input ]]; then
    echo "Number entered was too high!"
    input_number
  elif [[ $input_number -eq $input ]]; then
    echo "Cheers ,the number is $input_number."
    break
else 
    echo "Number entered was too low!"
    input_number
   
    
  fi
done