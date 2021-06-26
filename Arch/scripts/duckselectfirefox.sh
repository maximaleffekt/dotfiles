#!/bin/sh
# This script uses firefox and ddg to search for your currently highlighted words in the web
# Inspired by a live coding session from Kalle Halden, where he took an hour to do what I did here in 5 min of ducking
# If you leave the 6th line commented out, it wont even copy your selection to the clipboard, nice!
# Make sure to install xclip before trying to use this ofc

#xclip -out -selection primary | xclip -in -selection clipboard
firefox --new-tab "https://duckduckgo.com/?q=$(xclip -o -selection primary)"
