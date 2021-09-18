
for((i=1;i<=5;i++))
do
	Flip=$((RANDOM%2))
	if [[ $Flip -eq 0 ]]; then
    	echo "HEADS"
	elif [[ $Flip -eq 1 ]]; then
    	echo "TAILS"
	fi
done