#!/bin/bash

swap=$( free -m | grep 'Swap:' | awk '{print $3}' )

# if [ $(free -m | grep 'Swap:' | awk '{print $3}') -gt "100" ]
if [ ${swap} -gt "100" ]
then
	echo "${swap}"
fi
