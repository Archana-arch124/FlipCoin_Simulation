#Welcome to Flip Coin Simulation Problem

toss=$((RANDOM%2))
if [[ $toss -eq 0 ]]
   then
        echo "Head wins"
   else
        echo "Tail wins"
fi

