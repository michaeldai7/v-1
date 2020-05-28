#!/bin/bash

n="0"

while [ $n -lt 350 ]
do
	sleep 60
	n=$[$n + 1]
	echo $n
done
