# uncomment ↓ and at the bottom of the doc to track zsh startup
#zmodload zsh/zprof

# Use powerline
USE_POWERLINE="true"

# Source manjaro-zsh-configuration
if [[ -e $HOME/manjaro-zsh-config-portable/manjaro-zsh-config ]]; then
  source $HOME/manjaro-zsh-config-portable/manjaro-zsh-config
fi
# Use herschenglime-zsh-config/ zsh prompt
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

# z.lua for faster directory jumping
eval "$(lua ~/manjaro-zsh-config-portable/plugins/z.lua/z.lua --init zsh enhanced)"
# useful related aliases, I generally place them in .zsh_aliases though
alias zz='z -c'      # restrict matches to subdirs of $PWD
alias zi='z -i'      # cd with interactive selection
alias zf='z -I'      # use fzf to select in multiple matches
alias zb='z -b'      # quickly cd to the parent directory
alias zh='z -I -t .' # fzf recent directories

# shell vim mode
source $HOME/manjaro-zsh-config-portable/plugins/zsh-vim-mode/zsh-vim-mode.plugin.zsh
MODE_CURSOR_VIINS="#2A996C blinking bar"
MODE_CURSOR_REPLACE="$MODE_CURSOR_VIINS #ab4642"
MODE_CURSOR_VICMD="green block"
MODE_CURSOR_SEARCH="#ba8baf steady underline"
MODE_CURSOR_VISUAL="$MODE_CURSOR_VICMD steady bar"
MODE_CURSOR_VLINE="$MODE_CURSOR_VISUAL #1ABB9B"

# custom completions
fpath=(~/.zsh/completions $fpath)

#fzf keybinds and completion
source ~/manjaro-zsh-config-portable/fzf/completion.zsh
source ~/manjaro-zsh-config-portable/fzf/key-bindings.zsh

# uncomment ↓ and the line at the top to enable profiling
# zprof
