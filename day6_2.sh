echo " palindrome or not"
echo "Enter the number"
read n
function pal
{
number=$n
reverse=0
while [ $n -gt 0 ]
do
a=`expr $n % 10 `
n=`expr $n / 10 `
reverse=`expr $reverse \* 10 + $a`
done
echo $reverse
if [ $number -eq $reverse ]
then
    echo "Number is palindrome"
else
    echo "Number is not palindrome"
fi
}
r=`pal $n`
echo "$r"

echo ""
echo ""
echo "1. while loop flipcoin"

#!/bin/bash
i=0

while [ $i -lt 12 ]
do
FLIP=$(($RANDOM%2))
if [ $FLIP -eq 1 ];then
    echo "heads"
else
    echo "tails"

fi
done