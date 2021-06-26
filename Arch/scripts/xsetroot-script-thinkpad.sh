#!/bin/sh
# alternative storage icon
while true; do
	var1=$(pactl list sinks | grep -E "Sink " -A 8 | awk '/Mute: / {print $2}' | head -1)
	xsetroot -name " $(df /dev/sda3 -h | tail -1 | awk '{print $3}')/$(df /dev/sda3 -h | tail -1 | awk '{print $2}') |  1$(acpi | head -n 1 | cut -d ',' -f2) |  2$(acpi | tail -n 1 | cut -d ',' -f2) |  $(xbacklight -get | cut -d. -f1)% | $(if [[ "$var1" == 'yes' ]]; then echo 婢; else echo 墳; fi) $(pactl list sinks | grep '^[[:space:]]Volume:' | head -n 1 | tail -n 1 | sed -e 's,.* \([0-9][0-9]*\)%.*,\1,')% | $( date +"%F %R" )"
	sleep 0.5s
done
# set the first head value either to one or two, change the last word in line three either to head or tail respectively, can change depending on device order
