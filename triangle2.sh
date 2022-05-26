# 2) Shell script to read 3 numbers and test whether they can be sides of a triangle

echo "enter 3 sides of a triangle: "

read a b c

x=`expr $a + $b`
y=`expr $a + $c`
z=`expr $b + $c`

if [ $x -gt $c -a $y -gt $b -a $z -gt $a ]
then
	echo "it is a triangle"
else
	echo "it is not a triangle!!!"
fi

