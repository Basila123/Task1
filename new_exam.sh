
sort ()
 {
    for ((i=0; i <= $((${#arr[@]} - 2)); ++i))
    do
        for ((j=((i + 1)); j <= ((${#arr[@]} - 1)); ++j))
        do
            if [[ ${arr[i]} -gt ${arr[j]} ]]
            then
                # echo $i $j ${arr[i]} ${arr[j]}
                tmp=${arr[i]}
                arr[i]=${arr[j]}
                arr[j]=$tmp         
            fi
        done
    done
}
echo "enter a limit"
read n
arr=()
i=0
for ((i=1;i<=n;i++))
do
	echo "enter the array $i"
	read io
	arr[$i+1]=${io}
done
echo "array:"
echo "${arr[*]}"
sort ${arr[*]}
