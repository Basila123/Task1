sort () {
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

arr=($(for i in {0..9}; do echo $((RANDOM%100)); done))
echo ${arr[@]}
sort ${arr[@]}
echo ${arr[@]}
echo "second smallest number:"
echo ${arr[1]}
echo "secon largest number is :"
echo ${arr[$n-1]}
