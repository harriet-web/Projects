#!/bin/bash
#
#

printf "Welcome To Sports Masters. PLease fill the registration form below to join.\n"
read -p "Please enter your name: " name
read -p "Enter your gender(M/F): " gender
read -p "Enter your email address: " email
read -p "Enter the type of sport activity you like: " sport

case $sport in
	"Football" | "basketball")
		printf "Thank you for your interest in the most popular sport.\n"
		;;
	"Cricket")
		printf "Not bad. Have fun\n"
		;;
	"Horse Racing")
		printf "You sure are very energetic.\n"
		;;
	"Esports")
		if [ "$gender" = "F" ];then
			printf "There are few females here.\n"
			read -p "Do you wish to continue with your selection? Y/N: " answer
			if [ "$answer" = "Y" ];then
			       printf "Welcome to the new world.\n"
		       else
		              printf "Sorry about that, see you some other time."
	                fi

                        fi
                           printf "Welcome to Espots activity $name. Let's have fun....\n"
                                ;;
                      *)
                          printf "Sorry, we don't offer your type of sport activity."
                               ;;
esac		

printf "You registered with the following details:\n\n"
sleep 2
printf "Name: $name\n"
printf "Gender: $gender\n"
printf "Email: $email\n"
printf "Type of sport: $sport\n"
sleep 2
printf "Thanks for joining Sports Masters. Let's have fun in the world of sports"
