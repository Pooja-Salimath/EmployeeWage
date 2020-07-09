#!/bin/bash -x

echo "------Welcome to EmployeeWageComputation-----" 

randomcheck=$((RANDOM%2))

IsFullTime=8
isPartTime=4
EmpRate=20
RatePerMonth=20

# Random Check Employee is Present or Absent

if [ $randomcheck == 0 ]
then
	echo "Employees is Absent"
else
	echo  "Employee is Present"

	# Calculating the Employee Wage
	DailyWage=$(($IsFullTime*$EmpRate))
	echo "Daily Wage for Full Time is:$DailyWage"

	# Calculating the Employee Wage for PartTime Employee

	PartTimeWage=$(($isPartTime*$EmpRate))
	echo "Daily Wage for Part Time Employee is: $PartTimeWage"


	# Solving using Switch Case Statement

	empcheck=$((RANDOM%3))

	case $empcheck in
		1)
			empHrs=$IsFullTime
			;;
		2)
			empHrs=$isPartTime
			;;
		*)empHrs=0
			;;
	esac

	Wage=$((empHrs*$EmpRate))
	echo "Total Wage is: $Wage"

	# Calculating Wages for a Month


	WagePerMonth=$(($Wage*$RatePerMonth))
	echo "Monthly Wage for Employee:$WagePerMonth"

	# Calculate Wages till a condition of totalWorking hours or	days is reached for a month - Assume 100 hours

	TotalWorkHours=0
	WorkingDays=0
	TotalMonthwage=0
	while [[ $TotalWorkHours -le 100 || $WorkingDays -le 20 ]]
	do
		 case $empcheck in
      1)
         empHrs=$IsFullTime
         ;;
      2)
         empHrs=$isPartTime
         ;;
      *)empHrs=0
         ;;
    esac

     Wage=$((empHrs*$EmpRate))
	  WagePerMonth=$(($Wage*$RatePerMonth))
	  TotalWorkHours=$((TotalWorkHours+empHrs))
	  WorkingDays=$((WorkingDays+1))
	  done
	  echo "Monthly Wage is:$WagePerMonth"
fi

# Refactor the Code to write a function to get work hours

function EmployeeHrs()
{
	randomcheck=$((RANDOM%2))
	if [ $randomcheck == 0 ]
	then
   	echo "Employees is Absent"
	else
   	echo  "Employee is Present"
	fi
}
EmpCheck="$(EmployeeHrs)"
echo "Employee Status:$EmpCheck"

# Store the Daily wage along Total Wage
	TotalWorkHours=0
   WorkingDays=0
   TotalMonthwage=0
   while [[ $TotalWorkHours -le 100 || $WorkingDays -le 20 ]]
   do
       case $empcheck in
      1)
         empHrs=$IsFullTime
         ;;
      2)
         empHrs=$isPartTime
         ;;
      *)empHrs=0
         ;;
    esac

     Wage=$((empHrs*$EmpRate))
     WagePerMonth=$(($Wage*$RatePerMonth))
     TotalWorkHours=$((TotalWorkHours+empHrs))
     WorkingDays=$((WorkingDays+1))
   done

echo "Total Wage is: $Wage"
echo "Monthly Wage is:$WagePerMonth"
