#!/bin/bash

swap=$( free -m | grep 'Swap:' | awk '{print $3}' )

if [ ${swap} -gt "1024" ]
then
	echo "${swap}"
fi
