#! /bin/bash

if [ $# -eq 0 ] 
    then echo "Please enter at least 1 argument!"
exit 0
fi

read string

for i in $*
do 
    count=$(grep "string" $i | wc -l)
    echo "In file $i you have the string \" $string \" $count times"
done

exit 0
