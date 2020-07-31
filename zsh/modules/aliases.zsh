export ZSH_PLUGINS_ALIAS_TIPS_FORCE="0"
export ZSH_PLUGINS_ALIAS_TIPS_TEXT="Use an alias for this, fagot. "

zplug "djui/alias-tips"

# Navigation
alias back="cd -"
alias projects="cd $PROJECTS_DIR"
alias dotfiles="cd $PROJECTS_DIR/dotfiles"

# Overwrites
alias cat="bat"
alias vim="nvim"
