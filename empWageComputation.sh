#!/bin/bash -x


echo "------Welcome to EmployeeWageComputation-----" 

randomcheck=$((RANDOM%2))


IsFullTime=8
isPartTime=4
EmpRate=20

# Random Chec Employee is Present or Absent

if [ $randomcheck == 0 ]
then
	echo "Employees is Absent"
else
	echo  "Employee is Present"
fi

# Calculating the Employee Wage

DailyWage=$(($IsFullTime*$EmpRate))
echo "Employee Daily Wage is:$DailyWage"

# Calculating the Employee Wage for PartTime Employee

PartTimeWage=$(($isPartTime*$EmpRate))
echo "Employee Daily Wage for part time employee is: $PartTimeWage"


# Solving using Switch Case Statement

empcheck=$((RANDOM%3))

case $empcheck in
	1)
		empHrs=$IsFullTime
		;;
	2)
		empHrs=$isPartTime
		;;
	*)
		empHrs=0
		;;
esac

Wage=$((empHrs*$EmpRate))
echo "Total Wage is: $Wage"

