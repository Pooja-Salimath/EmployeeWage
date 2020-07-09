#!/bin/bash -x


echo "------Welcome to EmployeeWageComputation-----" 

randomcheck=$((RANDOM%2))

if [ $randomcheck == 0 ]
then
	echo "Employees is Absent"
else
	echo  "Employee is Present"
fi
