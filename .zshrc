# history (autosuggestions read from this)
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt inc_append_history share_history

# tab completion
autoload -Uz compinit && compinit

# plugins — order matters, highlighting sourced LAST
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

eval "$(starship init zsh)"

# Created by `pipx` on 2026-09-15 20:34:19
export PATH="$PATH:/home/phoenix/.local/bin"
export JAVA_HOME=/usr/lib/jvm/default
export EDITOR="nano"

# Make the Delete key delete the character under the cursor
bindkey "^[[3~" delete-char

# FX-2 terminal header (~/.config/zsh/header.zsh); NO_HEADER=1 skips it
# [[ -o interactive && -t 1 && -z $NO_HEADER && -z $CLAUDECODE ]] && source ~/.config/zsh/header.zsh
