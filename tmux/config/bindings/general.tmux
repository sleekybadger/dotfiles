# Prefix
unbind C-b
unbind `
bind ` send-prefix


# Reload Config
unbind C-r
bind C-r run "$DOTFILES_DIR/tmux/scripts/reload.sh"


bind E command-prompt -p "Command:" \
       "run \"tmux list-panes -a -F '##{session_name}:##{window_index}.##{pane_index}' \
              | xargs -I PANE tmux send-keys -t PANE '%1' Enter\""
