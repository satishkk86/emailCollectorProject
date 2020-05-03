#!/bin/bash
#below loop to check whether link file is accessible in the while loop
echo "======start reading links from input file======"
path=$(pwd)
#dateVar=$(date "+%Y-%m-%d")
echo $path
while read gitLink
do
	#cd $path	
	echo $gitLink
	echo "start downloading project from Github: $gitLink"
	arr=(` echo $gitLink | tr '/' ' ' `)  #to get the project path which was just downloaded
	appPath="${path}/${arr[3]}"				#to get the project path which was just downloaded
	echo $appPath
	git clone $gitLink
	cd $appPath
	git log > ../${arr[3]}_log.txt
	rm -rf $appPath
	
	cd $path
while read line
do
if [[ $line = "Author: "* ]]; then	#capture the line which has string "Author: "
if [[ $(grep "$line" "developerEmail.txt") ]];then
	echo "Developer informartion already exists in the file."
else
	echo "write developer informartion to the file."
	echo $line >> developerEmail.txt
fi

fi

done < ${arr[3]}_log.txt
done < link.txt