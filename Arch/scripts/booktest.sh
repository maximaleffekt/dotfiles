#!/bin/sh
url="$(cat ~/.bookmarks | dmenu -l 30 -fn 'fira code nerd font:size=16' | cut -d ' ' -f 2)"
url=$url | tr -d '\n' 
if [  1 -eq 1 ]; then
	printf "$url"
fi
