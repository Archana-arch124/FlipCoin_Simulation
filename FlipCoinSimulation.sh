#Welcome to Flip Coin Simulation Problem

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

