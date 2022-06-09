#shell script to compare two files are identical and delete one


if [ $# -ne 0 ]
then
	echo "syntax error <$0>"
	exit
fi

echo "enter filename 1: "
read f1

echo "enter filename 2: "
read f2

cmp $f1 $f2 > /dev/null
if [ $? -eq 0 ]
then
	rm $f2
	 
	echo "$f1 and $f2 are identical"
	echo "file $f2 removal"
	exit
fi

	echo "file are not identical"
exit 
	
