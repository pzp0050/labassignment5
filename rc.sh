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

<<<<<<< HEAD
#loop through sequence in reverse
for ((i=$len; i>=0; i--))
do
    reverse="$reverse${$sequence:$i:1}"
done
=======
echo $sequence >seq.txt
rc=`rev seq.txt | tr 'ATCGatcg' 'TAGCtagc'`
>>>>>>> 53324e7901a738f7118ee827c8de9a0b723901c8

echo "$sequence
$reverse
"


<<<<<<< HEAD
#complement sequence
rc=`echo $reverse | tr 'atcg' 'tagc'`
=======
echo "$rc
"
>>>>>>> 53324e7901a738f7118ee827c8de9a0b723901c8

echo $name >$1.rc.txt
echo $rc >>$1.rc.txt
