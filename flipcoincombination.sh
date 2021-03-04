#!/bin/bash
count=0
H=0
T=0
HH=0
TT=0
HHH=0
TTT=0
while [ $count -lt 20 ]
do 
     coin=$((RANDOM%6))
          if [ $coin -eq 1 ]
          then
              H=$(($H+1))
              dict[$count]="H"
          elif [ $coin -eq 2 ]
          then    
                 T=$(($T+1))
                 dict[$count]="T"
           fi

      if [ $coin -eq 3 ]
      then
	      	HH=$(($HH+1))
            dict[$count]="HH"
      elif  [ $coin -eq 4 ]
      then
	       	TT=$(($TT+1))
            dict[$count]="TT"
       fi
 
      if [ $coin -eq 5 ]
      then
            HHH=$(($HHH+1))
            dict[$count]="HHH"
      elif  [ $coin -eq 6 ]
      then
            TTT=$(($TTT+1))
            dict[$count]="TTT"
       fi
    
       ((count++))
done
echo ${dict[@]}
echo "total heads are: " $H
echo "total tails are: " $T
echo "total heads are: " $HH
echo "total tails are: " $TT
echo "total heads are: " $HHH
echo "total tails are: " $TTT

percentageH=$((100*$H/20))
percentageT=$((100*$T/20))
percentageHH=$((100*$HH/20))
percentageTT=$((100*$TT/20))
percentageHHH=$((100*$HHH/20))
percentageTTT=$((100*$TTT/20))

echo "percentage of single Heads is: " $percentageH
echo "percentage of single Tails is: " $percentageT

echo "percentage of double Heads is: " $percentageHH
echo "percentage of double Tails is: " $percentageTT

echo "percentage of triple Heads is: " $percentageHHH
echo "percentage of triple Tails is: " $percentageTTT




if  [ $percentageH -gt $percentageT ] && [ $percentageH -gt $percentageHH ] && [ $percentageH -gt $percentageTT ] && [ $percentageH -gt $percentageHHH ] && [ $percentageH -gt $percentageTTT ]
then
         echo Winning is single Head
   elif  [ $percentageT -gt $percentageH ] && [ $percentageT -gt $percentageHH ] && [ $percentageT -gt $percentageTT ] && [ $percentageT -gt $percentageHHH ] && [ $percentageT -gt $percentageTTT]
   then
         echo winning is single Tail
   elif  [ $percentageHH -gt $percentageH ] && [ $percentageHH -gt $percentageT ] && [ $percentageHH -gt $percentageTT ] && [ $percentageHH -gt $percentageHHH ] && [ $percentageHH -gt $percentageTTT ]
   then
         echo winning is double Head
   elif  [ $percentageTT -gt $percentageH ] && [ $percentageTT -gt $percentageT ] && [ $percentageTT -gt $percentageHH ] && [ $percentageTT -gt $percentageHHH ] && [ $percentageTT -gt $percentageTTT ]
   then
         echo winning is  double Tail
   elif [ $percentageHHH -gt $percentageH ] && [ $percentageHHH -gt $percentageT ] && [ $percentageHHH -gt $percentageHH ] && [ $percentageHHH -gt $percentageTT ] && [ $percentageHHH -gt $percentageTTT ]
   then
          echo winning is Triple Head
else
        echo winning is Triple Tail
fi


