#/bin/bash
touch input.txt
echo -e "a\nb\nc\nd\ne\na\nb\nc\nd\ne\n" > input.txt

:'
if [ $# -eq 1]
then 
elif
then
else
fi
'

if [ $# -eq 1 ]
then
    # Your code here. (1/4)
	grep -n "a" input.txt > output.txt
	grep -E "WARN|ERROR|INFO" $1 > my_bug.txt
	grep -E "WARN|ERROR" $1 > bug.txt
else
    case $2 in
    "--latest")
	#test git push origin
        # Your code here. (2/4)
	tail $1 -c 10 > output.txt
	echo -e "\n" >> output.txt
	tail $1 -n 10 >> output.txt
	tail $1 -n 2 > 2.txt
	tail $1 -n 5 > 5.txt
    ;;
    "--find")
        # Your code here. (3/4)
		# grep -c 仅仅返回匹配的行数量 -n 返回拥有字符串的行以及行数
	grep -n $3 $1 > $3.txt
	#rm -f $3.txt
	#for file in `find ./ -type f`
	#do
		#result=`expr $file == $3`	
		#if [ $((result)) -eq 1 ]
		#then
		#	continue
		#fi
	#	grep $3 $file >>$3.txt	
	#done
    ;;
    "--diff")
        # Your code here. (4/4)
	#diff 在命令最后加上-q表示不显示具体的比较信息，即-q表示quiet安静模型，sed 中的安静模式为-i， -y表示逐行比较文件的不同， -W表示输出的不同信息所占的列数
	diff $1 $3 -y -W 200
	result=`diff $1 $3 -q`
	#这里必须用 $? 因为 $? 获取的是命令的返回状态，我们这里比较的是diff命令的返回状态而不是 result的值
	if [ $? -eq 0 ]
	then
		echo same
	else
		echo different
	fi
    ;;
    esac
fi
