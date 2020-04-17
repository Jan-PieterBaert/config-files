#!/bin/sh

ID=`xinput list | egrep -io "AT Translated.*\s*id\=[0-9]{1,2}" | egrep -o '\=[0-9]{1,2}' | egrep -o '[0-9]{1,2}'`
STATE=`xinput list-props $ID|grep 'Device Enabled'|awk '{print $4}'`

case $BLOCK_BUTTON in
  1) keyboard_toggle ;;
  4) xinput enable $ID ;; # scroll up, increase
  5) xinput disable $ID ;; # scroll down, decrease
esac

if [ $STATE -eq 1 ]
then
    echo "<span color=\"cyan\">Keyboard enabled</span>"
else
    echo "<span color=\"blue\">Keyboard disabled</span>"
fi
