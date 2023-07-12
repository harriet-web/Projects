#!/bin/bash
#


printf "Hello! Welcome to Rose's Pentest company.\n"
read -p "Please enter the domain name you would like to use: " name
printf "Choose any the tools to use\n"
printf "1.sublist3r\n2.theHarvester\n"
read -p "Enter 1 or 2 to select the tool you want to use: " input
response=""
sublist3r=`sublist3r -v -d $name`
theHarvester=`theHarvester -d $name -l 20 -b bing`
if [ $input -eq 1 ]
then
	response="sublist3r"
elif [ $input  -eq 2 ]
then
	response="theHarvester"
fi

while [ $input -ne 1 ] && [ $input -ne 2 ];
do
	read -p "Enter 1 or 2: " input
done

printf "You have entered a valid toolname\n"

if [ $input = 1 ]
then
	printf "$name"
	"$sublist3r"
read -p "Please type in a name to save your file: " outcome 
sleep 2
printf "Saving results in the file $outcome\n"
printf "Results can be found in $PWD/$outcome\n"
fi

if [ $input = 2 ]
then
	printf "$name"
	 "$theHarvester"
read -p "Enter a name to save your file: " filename
sleep 2
printf "Saving results in the file $filename\n"
printf "Results can be found in $PWD/$filename"
fi

