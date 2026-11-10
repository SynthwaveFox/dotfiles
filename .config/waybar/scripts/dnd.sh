#!/bin/sh
# Do Not Disturb for mako. "toggle" flips it; otherwise prints the waybar status.
[ "$1" = toggle ] && makoctl mode -t do-not-disturb >/dev/null
if makoctl mode | grep -qx do-not-disturb; then
  echo '{"text":"󰂛","tooltip":"Do Not Disturb is on: popups are hidden (click to turn off)","class":"on"}'
else
  echo '{"text":"󰂚","tooltip":"Notifications on (click for Do Not Disturb)","class":"off"}'
fi
