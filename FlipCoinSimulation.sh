#Welcome to Flip Coin Simulation Problem

#!/bin/bash
num0fHead=0
numOfTail=0
declare -A TossCoin
for ((i=0;i<20;i++))
do
   toss=$((RANDOM%2))
   if [[ $toss -eq 0 ]]
   then
       TossCoin[$i]="T"
       ((numOfTail++))
   else
       TossCoin[$i]="H"
       ((numOfHead++))
   fi
done

echo "Head won $numOfHead times"
echo "Tail won $numOfTail times"
echo ${TossCoin[@]}

while [[ $numOfHead -lt 21 && $numOfTail -lt 21 ]]
do
    toss=$((RANDOM%2))
   if [[ $toss -eq 0 ]]
   then
       ((numOfTail++))
   else
       ((numOfHead++))
   fi
done
echo "Head won $numOfHead times"
echo "Tail won $numOfTail times"

if [[$numOfHead -gt $numOfTail]]
then
    echo "Head wins by $(($numOfHead-$numOfTail))"
elif [[$numOfHead -lt $numOfTail]]
then
    echo "Head wins by $(($numOfTail-$numOfHead))"
else
echo "So the match is tied,to continue"
  diff1=$(($numOfHead-$numOfTail))
  diff2=$(($numOfTail-$numOfHead))
while [[ $diff1 -ne 2 && $diff2 -ne 2 ]]
do
   toss=$((RANDOM%2))
   if[[ $toss -eq 0 ]]
   then
       ((numOfTail++))
   else
       ((numOfHead++))
   fi

  diff1=$(($numOfHead-$numOfTail))
  diff2=$(($numOfTail-$numOfHead))

done
echo "Head won $numOfHead times"
echo "Tail won $numOfTail times"

if [[$numOfHead -gt $numOfTail]
then
    echo "Head wins by 2"
elif [[$numOfHead -lt $numOfTail]]
then
    echo "Tail wins by 2"
fi
fi

