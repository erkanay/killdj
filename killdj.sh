#! /bin/bash

runs=$(ps aux | grep -i runserver)
arr=$(echo $runs | tr "\t" "\n")
regx='^[0-9]{5}$' # process ids matching


for x in $arr
do
	if [[ $x =~ $regx ]]; then
		kill -9 $x
	fi
done




