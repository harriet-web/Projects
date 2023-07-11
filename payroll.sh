#!/bin/bash
#

printf "Welcome to A&B Company Limited...\n"
read -p "Please enter the name of the database you want to create: " payroll
create='touch'
if [ ! -f $payroll ];then 
	printf "Checking for database with name $payroll\n"
	sleep 2
	printf "Database does not exist\n"
	read -p "Do you want to create it?(yes/no): " answer
	case $answer in
		"yes" | "Yes" | "y")
			printf "Creating database....\n"
			sleep 2
			$create $payroll
			printf "Database created successfully with name $payroll\n"
			;;
		"no" | "No" | "n")
			printf "Aborting program....\nThe program will exit in 3s\n"
			for num in 1 2 3;
			do printf "$num\n"
				sleep 1
			done
			exit 1
			;;
		*)
			printf "You entered an invalid input! The program will exit in 3s\n"
			for num2 in 1 2 3;
			do printf "num2\n"
				sleep 1
			done
			exit 1
			;;
	esac
else
	printf "Database exist\n"
fi


