#shell script to dispaly message "good morning","good afternoon" and "good night" according to system time

if [ $# -ne 0 ]
then
	echo "syntax error"
	exit
fi


t=`date +%k`

if [ $t -gt 6 -a $t -lt 12 ]
then 
	echo "good morning"

elif [ $t -lt 16 ]
then
	echo "good afternoon"

elif [ $t -le 23 ]
then
	echo "good night"
fi
