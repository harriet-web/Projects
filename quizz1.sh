#!/bin/bash
#


printf "Welcome to our company.........\n"
read -p  "Enter the domain name you want to use: " name
printf "Choose any of the tools to use\n"
printf "1.sublist3r\n2.theHarvester\n" 
read -p "Enter 1 or 2 to select the tool you want to use: " tool
toolname=""
sublist3r=`sublist3r -v -d $name`
theHarvester=`theHarvester -d $name -l '20' -b bing`
if [ $tool -eq 1 ] 
then
	toolname="sublist3r"
	##printf "The tool name has been saved\n"
elif [ $tool -eq 2 ] 
then
	toolname="theHarvester"
fi
while [ $tool -ne 1 ] && [ $tool -ne 2 ];
do
	read -p "Enter 1 or 2: " tool

done

printf "You've entered a valid tool name\n"

if [ $tool = 1 ]
then
	printf "$name"
        "$sublist3r"
sleep 2
read -p "Enter a name to save your file: " respons
##"$sublist3r" | grep -i "*google*" >> $respons
printf "Saving result in the file $respons\n"
printf "Result can be found in $PWD/$respons\n"
fi
sleep 2
 if [ $tool = 2 ]
 then
	 printf "$name"
	 "$theHarvester"
 
read -p "Enter the file name to save your file: " input
printf "Saving result in the file $input\n"
printf "Results can be found in $PWD/$input"
 fi
