#!/bin/sh
url="$(cut ~/.bookmarks -d ' ' -f 1 | sort | dmenu)"
if [ $url != '\n' ]; then
	firefox --new-tab "$(grep $url ~/.bookmarks | cut -d ' ' -f 2)"
fi
