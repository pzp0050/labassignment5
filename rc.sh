#! /bin/sh

#initialize variable
reverse=""

#read in data
name=`grep ">" $1`
sequence=`grep -v ">" $1`

echo "Name: $name"

#calculate length of sequence
len=${#sequence}

echo "Length: $len"

echo $sequence >seq.txt
rc=`rev seq.txt | tr 'ATCGatcg' 'TAGCtagc'`

echo "$sequence
$reverse
"

echo "$rc
"

echo $name >$1.rc.txt
echo $rc >>$1.rc.txt
