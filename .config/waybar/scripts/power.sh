#!/bin/sh
# Power menu in fuzzel. Nothing happens unless an entry is picked.
choice=$(printf '󰌾  Lock\n󰍃  Log out\n󰜉  Reboot\n󰐥  Shut down\n' |
  fuzzel --dmenu --prompt '⏻  ' --lines 4 --width 18) || exit 0
case "$choice" in
  *Lock)       swaylock ;;
  *"Log out")  niri msg action quit --skip-confirmation ;;
  *Reboot)     systemctl reboot ;;
  *"Shut down") systemctl poweroff ;;
esac
