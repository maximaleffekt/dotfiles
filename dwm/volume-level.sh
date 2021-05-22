while true; do
	xsetroot -name "Volume: $(pactl list sinks | grep '^[[:space:]]Volume:' | head -n 2 | tail -n 1 | sed -e 's,.* \([0-9][0-9]*\)%.*,\1,')% Muted: $(pactl list sinks | grep -E "Sink " -A 8 | awk '/Mute: / {print $2}' | tail -1)"
	sleep 0.5s
done
# set the first head value either to one or two, change the last word in line three either to head or tail respectively, can change depending on device order
