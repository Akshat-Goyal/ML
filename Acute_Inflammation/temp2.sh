cat d.data | while read i
do
	f0=`echo $i | cut -d"," -f1`
	f1=`echo $i | cut -d"," -f2`
	f2=`echo $i | cut -d"," -f3`
	f3=`echo $i | cut -d"," -f4`
	f4=`echo $i | cut -d"," -f5`
	f5=`echo $i | cut -d"," -f6`
	f6=`echo $i | cut -d"," -f7`
	f7=`echo $i | cut -d"," -f8`
	f0=`echo "$f0" | bc` 
	f1=`echo "$f1" | bc`
	f2=`echo "$f2" | bc`
	f3=`echo "$f3" | bc`
	f4=`echo "$f4" | bc`
	f5=`echo "$f5" | bc`
	f6=`echo "$f6" | bc`
	f7=`echo "$f7" | bc`
	echo $f0,$f1,$f2,$f3,$f4,$f5,$f6,$f7 >> diagnosis.data
done