echo "enter a limit"
read n
sort ()
 {
   	 for ((i = 0; i<n; i++))
	do
      
   	 for((j = 0; j<n-i-1; j++))
   	 do
      
       		 if [ ${arr[j]} -gt ${arr[$((j+1))]} ]
       		 then
           	 
           	 	temp=${arr[j]}
            		arr[$j]=${arr[$((j+1))]}  
            		arr[$((j+1))]=$temp
       		 fi
    	done
	done
  
	echo "Array in sorted order :"
	#echo ${arr[*]}
}



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
