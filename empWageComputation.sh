#!/bin/bash -x


echo "------Welcome to EmployeeWageComputation-----" 

randomcheck=$((RANDOM%2))


IsFullTime=8
EmpRate=20

# Random Chec Employee is Present or Absent

if [ $randomcheck == 0 ]
then
	echo "Employees is Absent"
else
	echo  "Employee is Present"
fi

# Calulating the Employee Wage

DailyWage=$(($IsFullTime*$EmpRate))
echo "Employee Daily Wage is:$DailyWage"
