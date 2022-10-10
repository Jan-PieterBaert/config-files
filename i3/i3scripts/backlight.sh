#!/bin/bash

current_brightness=$(light -G)

case $BLOCK_BUTTON in
  4) ~/git_repos/custum_scripts/changebacklight.sh up ;;
  5) ~/git_repos/custum_scripts/changebacklight.sh down ;;
esac

echo "$current_brightness%"

# cat /sys/class/backlight/intel_backlight/actual_brightness | sed 's/^/100*/' | sed 's/$/\/937/' | bc | sed 's/$/%/'
