set -g default-shell $SHELL
set -g default-command "reattach-to-user-namespace -l $SHELL"

set -g default-terminal "xterm-256color"
set -ga terminal-overrides ",xterm-256color:Tc"

set -g prefix `

set -g history-limit 10000

set -g base-index 1

set -g display-panes-time 2000
set -g display-time 2000
set -g status-interval 15
set -g repeat-time 750

set -g mouse on
set -g set-titles on
set -g renumber-windows on

set -g visual-bell off
set -g visual-activity off
set -g monitor-activity off
set -g detach-on-destroy off
set -g allow-rename off
