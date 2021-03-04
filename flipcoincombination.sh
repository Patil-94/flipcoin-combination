#!/bin/bash
count=0
HH=0
TT=0
while [ $count -lt 10 ]
do 
     coin=$((RANDOM%2))
      if [ $coin -eq 1 ]
      then
	      	HH=$(($HH+1))
            dict[$count]="HH"
      else
	       	TT=$(($TT+1))
            dict[$count]="TT"
       fi
         ((count++))
done
echo ${dict[@]}
echo "total heads are: " $HH
echo "total tails are: " $TT
percentageHH=$((100*$HH/10))
percentageTT=$((100*$TT/10))
echo "percentage of Heads is: " $percentageHH
echo "percentage of Tails is: " $percentageTT
