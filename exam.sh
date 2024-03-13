#!/bin/bash

mkdir mydir

chmod 777 ./mydir

echo 2023 >myfile

mv ./moveme ./mydir

cp ./copyme ./mydir
mv ./mydir/copyme ./mydir/copied

cat ./readme
: '
 The only obescure knowledge in lab0-exam, gcc xxx.c 2> output.txt
'
gcc bad.c 2>err.txt

mkdir ./gen
n=10

if [ $# -ge 1 ]
then
	n=$1
fi

i=1
while [ $i -le $n ]
do
	touch gen/$i.txt
	i=$[$i+1]
done




