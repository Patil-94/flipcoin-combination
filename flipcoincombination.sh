#!/bin/bash
count=0
HHH=0
TTT=0
while [ $count -lt 10 ]
do 
     coin=$((RANDOM%2))
      if [ $coin -eq 1 ]
      then
	      	HHH=$(($HHH+1))
            dict[$count]="HHH"
      else
	       	TTT=$(($TTT+1))
            dict[$count]="TTT"
       fi
         ((count++))
done
echo ${dict[@]}
echo "total heads are: " $HHH
echo "total tails are: " $TTT
percentageHHH=$((100*$HHH/10))
percentageTTT=$((100*$TTT/10))
echo "percentage of Heads is: " $percentageHHH
echo "percentage of Tails is: " $percentageTTT
