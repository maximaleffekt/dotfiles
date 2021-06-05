# .xinitrc file for my Thinkpad X260
nitrogen --restore
setxkbmap -option caps:escape
picom -b
~/dwmscripts/xsetroot-script-thinkpad.sh & disown
#xinput set-prop "Your Device Name" "Option Name" "Value", used xinput-gui to determine optimal values
xinput set-prop "SynPS/2 Synaptics TouchPad" "libinput Accel Speed" "0.2"
xinput set-prop "SynPS/2 Synaptics TouchPad" "libinput Natural Scrolling Enabled" "1"
xinput set-prop "SynPS/2 Synaptics TouchPad" "libinput Tapping Enabled" "1"
exec dwm
