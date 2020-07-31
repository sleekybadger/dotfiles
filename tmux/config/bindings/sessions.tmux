create_script_path="$DOTFILES_DIR/tmux/scripts/sessions/create.sh"
destroy_script_path="$DOTFILES_DIR/tmux/scripts/sessions/destroy.sh"

# Create Session
unbind s
bind s run "${create_script_path}"


# Create Session With Name
unbind S
bind S command -p " Session Name:" "run '${create_script_path} %1'"


# Rename Session
unbind C-s
bind C-S command -p " Session Name:" -I "#S" "rename-session %1"


# Switch Session
unbind M-s
bind M-s choose-session


# Destroy Current Session
unbind q
bind q run "${destroy_script_path}"


# Destroy Session By Name
unbind Q
bind Q command -p " Session Name:" "run '${destroy_script_path} %1'"


# Detach Client
unbind M-q
bind M-q detach-client


# Dump session
unbind M-d
set -g @resurrect-save 'M-d'


# Restore session
unbind M-l;
set -g @resurrect-restore 'M-l'
