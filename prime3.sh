

#Shell script using command line to test whether given number is prime or not


if [ $# -ne 1 ] 
then 
echo "syntax error"
exit
fi

p=$1
if [ $p -eq 1 ]
then
	echo "not prime"
	exit
fi

i=2
while [ $i -le `expr $p / 2` ]
do
	if [ `expr $p % $i` -eq 0 ]
	then
		echo "the number $p is not prime"
		exit
	fi

i=`expr $i + 1`
done
echo "number $p is prime"

