# FX-2 terminal header (sourced from ~/.zshrc). Pure zsh, reads /proc only.
# Skip it for one shell with: NO_HEADER=1 zsh

() {
  local o=$'\e[38;2;255;138;0m' b=$'\e[1m' d=$'\e[38;2;140;80;0m' r=$'\e[0m'
  local W=52   # inner width of the box

  # Terminal number: counts up per boot (reset on reboot, lives in /run/user)
  local cf=${XDG_RUNTIME_DIR:-/tmp}/fx2-term-count n=0
  [[ -r $cf ]] && n=$(<$cf)
  print -r -- $(( ++n )) >| $cf

  local up=${$(</proc/uptime)[1]%.*}
  local upt=$(printf '%02d:%02d' $(( up / 3600 )) $(( up % 3600 / 60 )))
  local -A mem; local k v rest
  while read -r k v rest; do mem[${k%:}]=$v; done < /proc/meminfo
  local memp=$(( 100 - mem[MemAvailable] * 100 / mem[MemTotal] ))
  local load=${$(</proc/loadavg)[1]}

  local title=" FX-2 SQUADRON ═ ${HOST:u} " tag=" TERM $(printf '%02d' $n) "
  local fill=${(l:$(( W - ${#title} - ${#tag} - 1 ))::═:)}
  local stats=" $(print -P '%D{%H:%M}') ▪ UP ${upt} ▪ MEM ${memp}% ▪ LOAD ${load} ▪ READY"

  print -r -- "${o}╔═${b}${title}${r}${o}${fill}${b}${tag}${r}${o}╗${r}"
  print -r -- "${o}║${stats}${(l:$(( W - ${#stats} )):: :)}║${r}"
  print -r -- "${o}╚${(l:$W::═:)}╝${r}"
}
