#!/bin/bash
#
#

read -p "Please enter the name or email of the user you want to search: " search
payroll='Finance'
printf "Searching through database....\nPlease wait...\n"
sleep 2
egrep -i "$search" $payroll >> search_results.txt
printf "Search executed successfully!\n"
printf "Found a match: " 
egrep -i "$search" $payroll
printf "Results can be found in $PWD/search_results.txt"

