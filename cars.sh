#! /bin/bash
#cars.sh
#Nate Bernstein

num="0"

while [[ "$num" -lt "3" ]]
do
	echo -n "Type 1 to enter a new car, 2 to list the cars, or 3 to quit: "
	read -r num
	case "$num" in
		"1" )
			echo -n "Enter the year the car was made: "; read -r year
			echo -n "Enter the make of car: "; read -r make
			echo -n "Enter the model of car: "; read -r model
			string="$year:$make:$model"
			echo "$string" >> My_old_cars;;
		"2" )
			sort My_old_cars;;
		"3" )
			echo "Goodbye";;
	esac 
done
