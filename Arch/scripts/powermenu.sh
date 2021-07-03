#!/bin/dash
selection=$(echo "Sleep\nShutdown\nLock\nRestart" | sort | dmenu -i)
if [ -n $selection ]; then
	if [ "$selection" = 'Lock' ]; then
		slock
	fi
	if [ "$selection" = 'Sleep' ]; then
		systemctl suspend
	fi
fi
