#!/bin/sh

ID=12
STATE=`xinput list-props $ID|grep 'Device Enabled'|awk '{print $4}'`
if [ $STATE -eq 1 ]
then
    echo "Enabled"
else
    echo "Disabled"
fi

case $BLOCK_BUTTON in
  1) keyboard_toggle ;;
  4) xinput enable $ID ;; # scroll up, increase
  5) xinput disable $ID ;; # scroll down, decrease
esac
