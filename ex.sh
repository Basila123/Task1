a=()
i=0
for ((i=1;i<=5;i++))
do
	echo "enter the array $i"
	read io
	a[$i]=${io}
done
echo "a:"
echo "${a[@]}"
