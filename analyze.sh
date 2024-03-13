#/bin/bash

if [ $# -eq 1 ]
then
    # Your code here. (1/4)
	grep -E "WARN|ERROR|INFO" $1 > my_bug.txt
	grep -E "WARN|ERROR" $1 > bug.txt
else
    case $2 in
    "--latest")
        # Your code here. (2/4)
	tail $1 -n 2 > 2.txt
	tail $1 -n 5 > 5.txt
    ;;
    "--find")
        # Your code here. (3/4)
	grep  $3 $1 >$3.txt
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
