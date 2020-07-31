typeset -gA ZSH_HIGHLIGHT_STYLES

ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets)

ZSH_HIGHLIGHT_STYLES[bracket-error]="fg=red,bold"
ZSH_HIGHLIGHT_STYLES[bracket-level-1]="fg=blue,bold"
ZSH_HIGHLIGHT_STYLES[bracket-level-2]="fg=yellow,bold"
ZSH_HIGHLIGHT_STYLES[bracket-level-3]="fg=magenta,bold"

zplug "zdharma/fast-syntax-highlighting", defer:2
zplug "zsh-users/zsh-syntax-highlighting", defer:2
