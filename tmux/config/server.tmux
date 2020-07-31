set -sg focus-events on

set -sg escape-time 1
set -sg buffer-limit 20

set -sg history-file "$TMUX_CACHE_DIR/history"
set -g @resurrect-dir "$TMUX_CACHE_DIR/resurrect"
