echo "The single digit numbers are:"
echo $(( $RANDOM % 10))
echo "================"
echo ""


echo "program 2,3"
echo "sum of 2 random number in a dice is:"
d1=$((RANDOM%6))
d2=$((RANDOM%6))
echo "$d1,$d2"
sum=$((d1+d2))
echo "$sum";
echo "============"
echo ""


echo "Sum and average of 5 numbers:"
echo "Please enter your first number: "
read a
echo "Second number: "
read b
echo "Third number: "
read c
echo "Fourth number: "
read d
echo "Fifth number: "
read e

sum=$(($a + $b + $c + $d + $e))
avg=$(echo $sum / 5 | bc -l ) 
echo "The sum of these numbers is: " $sum
echo "The average of these numbers is: " $avg
