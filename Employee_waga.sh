#!/bin/bash

isPartTime=1
isFullTime=2
noOfDays=20
empRatePerHr=12
empTotalFullTimeHr=0
empTotalPartTimeHr=0
salary=0
for((i=1;i<$noOfDays;i++))
do
	randomCheck=$((RANDOM%3))
	case $randomCheck in
 		$isFullTime)
			
     			empHrs=8
			empTotalFullTimeHr=$(($empTotalFullTimeHr+$empHrs))
     			;;
		$isPartTime)
     			empHrs=8
			empTotalPartTimeHr=$(($empTotalPartTimeHr+$empHrs))
   	  		;;
 		*)
     			empHrs=0
			;;
	esac

	salary=$(($empHrs*$empRatePerHr+$salary))
done
echo "salary: "
echo $salary
echo "Employee full time hour:" $empTotalFullTimeHr
echo "Employee Part time hour is:" $empTotalPartTimeHr
