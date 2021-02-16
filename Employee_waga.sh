#!/bin/bash

echo "Well Come to Employee Waga Computation"
ispresent=1

random=$((RANDOM%2))
if(($random==$ispresent))
then
        emprateperhr=20
        emphrs=8
        salary=$(($emprateperhr+$emphrs))
        echo "Employee is Present"
        echo "$salary"
else
        salary=0
        echo "Employee is Absent"
fi

