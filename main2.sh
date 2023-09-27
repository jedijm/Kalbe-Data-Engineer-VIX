
#Variables
path="/hdfs/data/data1"
name_of_directory="data1"
filename_excel="daily_market_price.xlsx"
source_dir="/local/data/market"
target_dir="$path/$name_of_directory"
logfile="$target_dir/mylog.txt"

#Conditions
if [ -d "$path/$name_of_directory" ];
then
	#Copy File
	cp $source_dir/$filename_excel $target_dir/
	#Create Logfile
	echo "File Moved Successfully" >> "$logfile"
else
	echo "$name_of_directory Directory Not Exists!"
	#Create Directory in the path
	mkdir -p "$target_dir"
	echo "Directory $name_of_directory Created"
fi
