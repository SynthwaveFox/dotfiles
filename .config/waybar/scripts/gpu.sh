#!/bin/sh
# GPU usage for waybar: "<util>% <temp>°" with VRAM and power in the tooltip.
nvidia-smi --query-gpu=utilization.gpu,temperature.gpu,memory.used,memory.total,power.draw \
  --format=csv,noheader,nounits | awk -F', *' '{
  class = ($2 >= 80) ? "hot" : (($1 >= 90) ? "busy" : "normal")
  printf "{\"text\":\"%s%%  %s°\",\"tooltip\":\"RTX 4080 SUPER\\nLoad %s%%  ·  %s°C\\nVRAM %.1f / %.1f GB\\nPower %.0f W\",\"class\":\"%s\"}\n",
    $1, $2, $1, $2, $3/1024, $4/1024, $5, class }'
