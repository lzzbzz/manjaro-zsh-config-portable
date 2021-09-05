# uncomment ↓ and at the bottom of the doc to track zsh startup
#zmodload zsh/zprof

# Use powerline
USE_POWERLINE="false"

# Source manjaro-zsh-configuration
if [[ -e $HOME/manjaro-zsh-config-portable/manjaro-zsh-config ]]; then
  source $HOME/manjaro-zsh-config-portable/manjaro-zsh-config
fi
# Use manjaro zsh prompt
if [[ -e $HOME/manjaro-zsh-config-portable/manjaro-zsh-prompt ]]; then
  source $HOME/manjaro-zsh-config-portable/manjaro-zsh-prompt
fi

# piping in aliases
if [ -f ~/.zsh_aliases ]; then
. ~/.zsh_aliases
fi

# open command in editor
# Enable Ctrl-x-e to edit command line
autoload -U edit-command-line
# Emacs style
zle -N edit-command-line
bindkey '^xe' edit-command-line
bindkey '^x^e' edit-command-line

# shell vim mode
source $HOME/.zsh/plugins/zsh-vim-mode/zsh-vim-mode.plugin.zsh
MODE_CURSOR_VIINS="#2A996C blinking bar"
MODE_CURSOR_REPLACE="$MODE_CURSOR_VIINS #ab4642"
MODE_CURSOR_VICMD="green block"
MODE_CURSOR_SEARCH="#ba8baf steady underline"
MODE_CURSOR_VISUAL="$MODE_CURSOR_VICMD steady bar"
MODE_CURSOR_VLINE="$MODE_CURSOR_VISUAL #1ABB9B"

# custom completions
fpath=(~/.zsh/completions $fpath)

#fzf keybinds and completion
source ~/.zsh/fzf/completion.zsh
source ~/.zsh/fzf/key-bindings.zsh

# disable gitstatusd (don't have permission to run)
POWERLEVEL9K_DISABLE_GITSTATUS=true

# uncomment ↓ and the line at the top to enable profiling
# zprof
