cat diagnosis.txt | while read i
do
	f0=`echo $i | cut -d"," -f1`
	f1=`echo $i | cut -d"," -f2`
	f2=`echo $i | cut -d"," -f3`
	f3=`echo $i | cut -d"," -f4`
	f4=`echo $i | cut -d"," -f5`
	f5=`echo $i | cut -d"," -f6`
	f6=`echo $i | cut -d"," -f7`
	f7=`echo $i | cut -d"," -f8`
	if [[ "$f1" = "yes" ]]
	then
		f1=1
	else
		f1=0
	fi
	if [[ "$f2" = "yes" ]]
	then
		f2=1
	else
		f2=0
	fi
	if [[ "$f3" = "yes" ]]
	then
		f3=1
	else
		f3=0
	fi
	if [[ "$f4" = "yes" ]]
	then
		f4=1
	else
		f4=0
	fi
	if [[ "$f5" = "yes" ]]
	then
		f5=1
	else
		f5=0
	fi
	if [[ "$f6" = "yes" ]]
	then
		f6=1
	else
		f6=0
	fi
	if [[ "$f7" = "yes" ]]
	then
		f7=1
	else
		f7=0
	fi
	echo "$f0,$f1,$f2,$f3,$f4,$f5,$f6,$f7"
done