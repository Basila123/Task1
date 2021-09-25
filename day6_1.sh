echo "harmonic number"
echo ""
echo Enter a number
read n
i=1
sum=0
while [ $i -le $n ]
do
sum=\`expr $sum + \\( 10000 / $i \\)\`
i=\`expr $i + 1\`
done
echo Sum n series is
i=1
while [ $i -le 5 ]
do
a=\`echo $sum | cut -c $i\`
echo -e \"$a\\c\"
if [ $i -eq 1 ]
then
echo -e \".\\c\"
fi
i=\`expr $i + 1\`
done
echo ""
echo ""
echo "2"
echo "prime number"
low=1
count=0

while [ $low -eq 1 ]
do
echo "Enter the lower limit,greater than 1"
read low
done

echo "Enter the upper limit"
read upper


for mun in `seq $low $upper`
do
ret=$(factor $mun | grep $mun | cut -d ":" -f 2 | cut -d " " -f 2)

if [ "$ret" -eq "$mun" ] 
then 
echo "$mun is prime" 
((count++))
fi 
done

echo -e "\n There are $count number of prime numbers"



echo ""
echo "3"
echo "Write a program that computes a factorial of a number taken as input.

5 Factorial – 5! = 1 * 2 * 3 *"
echo "Enter a number"

# Read the number
read num                     

fact=1                    

for((i=2;i<=num;i++))
{
  fact=$((fact * i)) 
}

echo $fact
