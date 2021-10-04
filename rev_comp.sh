#!/bin/sh

# help comment

if [ $# -lt 1 ] || [ $# -gt 1 ];
then
echo "Please provide a fasta file in the input"
exit
fi

#initialize variable
reverse=""

#read in data
name=`grep ">" $1`
sequence=`grep -v ">" $1`

echo "Name: $name"
echo "sequence: $sequence"
#calculate length of sequence
len=${#sequence}

echo "Length: $len"

#loop through sequence in reverse
for ((i=$len; i>=0; i--))
do
    reverse="$reverse${$sequence:$i:1}"
done

echo "$sequence
$reverse
"

#complement sequence
rc=`echo $reverse | tr 'atcg' 'tagc'`

echo $name >$1.rc.txt
echo $rc >>$1.rc.txt
