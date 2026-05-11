#!/bin/bash

# Kill existing rofi
killall rofi 2>/dev/null

# Command using Betterlockscreen as requested
lock_cmd="betterlockscreen -l blur"

# Icons
lock="󰘚"
logout="󰗽"
suspend="󰤄"
reboot="󰑐"
shutdown="󰐥"

options="$lock\n$logout\n$suspend\n$reboot\n$shutdown"

chosen=$(echo -e "$options" | rofi -dmenu -i -p "System" \
-theme-str '
window { location: west; anchor: west; height: 100%; width: 120px; background-color: #000000; border: 0px; }
mainbox { children: [ listview ]; background-color: #000000; }
listview { columns: 1; lines: 5; spacing: 50px; padding: 100px 0px; background-color: #000000; fixed-height: true; }
element { padding: 20px 0px; background-color: #000000; text-color: #ffffff; }
element-text { font: "JetBrainsMono Nerd Font 30"; horizontal-align: 0.5; text-color: inherit; }
element selected { background-color: #ffffff; text-color: #000000; }
')

case "$chosen" in
    "$lock") $lock_cmd ;;
    "$logout") i3-msg exit ;;
    "$suspend") systemctl suspend ;;
    "$reboot") reboot ;;
    "$shutdown") poweroff ;;
esac
