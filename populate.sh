#!bin/bash

payroll='Finance'
read -p "PLease enter emplooyee's username: " name
read -p "Enter employee's email address: " email
read -p "Please enter employee's phone number: " phone_number
read -p "Enter employee's salary: " salary
printf "Saving details to the $payroll database....\n"
printf "$name\t$email\t$phone_number\t$salary\n" >> $payroll
sleep 2
printf "Data saved successfully"

