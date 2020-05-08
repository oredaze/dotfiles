#!/bin/bash

source "${HOME}/.cache/wal/colors.sh"
yellow=$color3

URL="https://www.reddit.com/message/unread/.json?feed=14a356b522f655a4f3e5b5f2f8b3b038e38060af&user=oredaze"
USERAGENT="polybar-scripts/notification-reddit:v1.0 u/oredaze"

notifications=$(curl -sf --user-agent "$USERAGENT" "$URL" | jq '.["data"]["children"] | length')

if [ -n "$notifications" ] && [ "$notifications" -gt 0 ]; then
	echo " %{F$yellow}ꔁ%{F-} $notifications"
else
	echo ""
fi
