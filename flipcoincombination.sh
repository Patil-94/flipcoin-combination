#!/bin/bash
count=0
H=0
T=0
while [ $count -lt 10 ]
do 
     coin=$((RANDOM%2))
      if [ $coin -eq 1 ]
      then
	      	H=$(($H+1))
            dict[$count]="HEADS"
      else
	       	T=$(($T+1))
            dict[$count]="TAILS"
       fi
         ((count++))
done
echo ${dict[@]}
echo "total heads are: " $H
echo "total tails are: " $T
percentageH=$((100*$H/10))
percentageT=$((100*$T/10))
echo "percentage of Heads is: " $percentageH
echo "percentage of Tails is: " $percentageT
