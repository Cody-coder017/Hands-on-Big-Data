
	#echo -ne 'basename $year .gz'"\t"
	#gunzip /home/hdoop/weather/dataset/*.gz
	awk '{temp=substr($0,88,5) +0;
	q = substr($0,93,1)
	if (temp !=9999 && q ~/[01459]/ && temp>max) max=temp}
	END{print max}'
	
	#temp = 9999 represents the missing value 
	# we measure the quality q and temperature of the year
	# We validate the when done we will note the max temperature
	
	
