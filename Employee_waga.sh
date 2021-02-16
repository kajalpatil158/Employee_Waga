#!/bin/bash 

isPartTime=1
isFullTime=2
empRatePerHr=12
randomCheck=$((RANDOM%3))

case $randomCheck in
 $isFullTime) 
     empHrs=8
     ;;
 $isPartTime) 
     empHrs=8
     ;;
 *)
     empHrs=0
     ;;
esac

salary=$(($empHrs*$empRatePerHr))
echo "salary: "
echo $salary
