echo "enter the limit"
read n
arr=()
for ((i=1;i<=n;i++))
do
	echo "enter the array $i"
	read io
	arr[$i+1]=${io}
done
echo "array:"
echo "${arr[*]}"

  
# Performing Bubble sort 
for ((i = 0; i<n; i++))
do
      
    for((j = 0; j<n-i-1; j++))
    do
      
        if [ ${arr[j]} -gt ${arr[$((j+1))]} ]
        then
            # swap
            temp=${arr[j]}
            arr[$j]=${arr[$((j+1))]}  
            arr[$((j+1))]=$temp
        fi
    done
done
  
echo "Array in sorted order :"
echo ${arr[*]}