#!/bin/bash

if [ "$1" -eq "1" ]
then
load=$(cut -f 1 -d ' ' /proc/loadavg)
else
load=$(cut -f 2 -d ' ' /proc/loadavg)
fi

if [ "$(echo $load | sed 's/[^0-9].*//')" -gt "16" ]
then
    echo "<span color='red'>$load</span>"
elif [ "$(echo $load | sed 's/[^0-9].*//')" -lt "6" ]
then
    echo "<span color='lime'>$load</span>"
    echo ""
else
    echo "<span color='yellow'>$load</span>"
fi
