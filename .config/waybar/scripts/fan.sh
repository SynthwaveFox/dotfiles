#!/usr/bin/env bash
# Print fan RPM as waybar JSON. Looks the sensor up by name since hwmon numbers can change between boots.
for h in /sys/class/hwmon/hwmon*; do
  [ "$(cat "$h/name" 2>/dev/null)" = "cros_ec" ] || continue
  rpm=$(cat "$h/fan1_input" 2>/dev/null) || break
  class="normal"
  [ "$rpm" -ge 4000 ] && class="high"
  [ "$rpm" -eq 0 ] && class="off"
  printf '{"text":"%s","tooltip":"Fan: %s RPM","class":"%s"}\n' "$rpm" "$rpm" "$class"
  exit 0
done
echo '{"text":"n/a","tooltip":"No fan sensor found","class":"off"}'
