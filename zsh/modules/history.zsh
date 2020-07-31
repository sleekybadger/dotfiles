export SAVEHIST=16384
export HISTSIZE=16384
export HISTFILE="$ZSH_CACHE_DIR/history"

setopt share_history
setopt inc_append_history

setopt hist_verify
setopt hist_ignore_space
setopt hist_reduce_blanks
setopt hist_ignore_all_dups
setopt hist_expire_dups_first

HISTORY_SUBSTRING_SEARCH_FUZZY="true"
HISTORY_SUBSTRING_SEARCH_GLOBBING_FLAGS="i"
HISTORY_SUBSTRING_SEARCH_HIGHLIGHT_FOUND="bg=magenta,fg=white,bold"
HISTORY_SUBSTRING_SEARCH_HIGHLIGHT_NOT_FOUND="bg=red,fg=white,bold"

zplug "zsh-users/zsh-history-substring-search", defer:3

bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
