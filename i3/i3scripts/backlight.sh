#!/bin/bash

current_brightness=$(xbacklight -get | grep -o "^.*\." | grep -o "[0-9]*")

case $BLOCK_BUTTON in
  4) /fast_files/git_repos/custum_scripts/changebacklight.sh up ;;
  5) /fast_files/git_repos/custum_scripts/changebacklight.sh down ;;
esac

echo "$current_brightness%"

# cat /sys/class/backlight/intel_backlight/actual_brightness | sed 's/^/100*/' | sed 's/$/\/937/' | bc | sed 's/$/%/'
