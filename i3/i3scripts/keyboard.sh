#!/bin/bash

file=$HOME/.keyboard-mode

case $BLOCK_BUTTON in
  4) greek-switch.sh gr ;; # scroll up, greek
  5) greek-switch.sh us ;; # scroll down, us
esac

lang=$(cat $file)
if [ "$lang" == "gr" ]; then
    echo "⌨️ 🇬🇷"
else
    echo "⌨️ 🇺🇸"
fi
