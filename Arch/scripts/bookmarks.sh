#!/bin/sh
url="$(cat ~/.bookmarks | cut -d ' ' -f 1 | sort | dmenu -l 30 -fn 'fira code nerd font:size=16')"
if [ $url != '\n' ]; then
	firefox --new-tab "$(grep $url ~/.bookmarks | cut -d ' ' -f 2)"
fi
