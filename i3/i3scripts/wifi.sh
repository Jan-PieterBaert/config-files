#!/bin/bash
interface=wlo1
eth_interface=enp6s0f4u1u2


# If click, open xterm to restart NetworkManager
#if [ $BLOCK_BUTTON -eq 1 ]
#then
#	uxterm -T "Restarting NetworkManager..." -e ~/.config/i3/scripts/restart_network.sh
#fi

# Get the essid (or other name)
#essid="$(nmcli -t con | grep 'wireless.*wlp2s0' | sed 's/:.*//')"
# In case wifi is not connected
#if [ "$essid" == "" ]; then exit; return; fi
# In case essid is longer than 20 characters,
# truncate to 19 characters + ellipsis
#if [ "${#essid}" -gt "15" ]; then essid="$(expr substr $essid 1 14)…"; fi
#
# Get the signal strength
#strength=$( grep '^wlp2s0' /proc/net/wireless | awk '{print $3}' | sed 's/\..*$/%/' )
#
#echo "$essid ($strength)"

if [ $(systemctl is-active wpa_supplicant@$interface.service | rg '^inactive$') ];then
  echo '✈️'
  exit
fi

name=$(wpa_cli status -i $interface | grep "^ssid" | grep -oi "[^=]*$")
ip_a=$(wpa_cli -i $interface status | grep "^ip_add" | grep -o "[^=]*$")
id_s=$(wpa_cli -i $interface status | grep "^id_str" | grep -o "[^=]*$")
freq=$(wpa_cli -i $interface status | grep "^freq" | sed 's/^[^0-9]*\([0-9]\)\([0-9]\{3\}\)$/\1.\2/g' | sed 's/0*$//g')
perc=$(grep $interface /proc/net/wireless | awk '{ print int($3 * 100/70)}')

ip_eth=$(ifconfig $eth_interface | grep "inet [0-9.]*" -o | grep "[0-9.]*" -o || echo "")

if [ "$ip_eth" == "" ];
then
    echo "$id_s($freq|$ip_a|$perc%|$name)"
    echo "$id_s($ip_a|$name)"
else
    echo "$id_s($freq|$ip_a|$perc%|$name)|$ip_eth"
    echo "$id_s($ip_a|$name)|$ip_eth"
fi

