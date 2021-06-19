#!/bin/bash
#Generate random numbers to output to a file

echo "Enter Number to generate Sequence: "
read var1
i=0

touch inputFile
cat /dev/null > inputFile

echo "Writing to file "

if [ $var1 -gt 10000 ]
then
  echo "Value too large."
  exit
fi


while [ $i -lt $var1 ]
do
  echo "$i , $RANDOM" >> inputFile
  i=`expr $i + 1`
done

echo "Finish! "
