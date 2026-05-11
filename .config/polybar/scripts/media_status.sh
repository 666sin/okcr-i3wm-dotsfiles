#!/bin/bash
status=$(playerctl status 2>/dev/null)
if [ "$status" = "Playing" ] || [ "$status" = "Paused" ]; then
    title=$(playerctl metadata title)
    echo "󰎆 $title" | cut -c1-25
else
    echo ""
fi
