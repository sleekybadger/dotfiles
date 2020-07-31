# Split Horizontally
unbind \;
bind \\ split-window -h -c "#{pane_current_path}"


# Split Full Horizontally
unbind |
bind | split-window -fh -c "#{pane_current_path}"


# Split Vertically
unbind -
bind - split-window -v -c "#{pane_current_path}"


# Split Full Vertically
unbind _
bind _ split-window -fv -c "#{pane_current_path}"


# Kill Pane
unbind r
bind r kill-pane


# Swap Pane Right
unbind >
bind > swap-pane -D


# Swap Pane Left
unbind <
bind < swap-pane -U


# Select Left Pane
unbind h
bind -r h select-pane -L


# Select Bottom Pane
unbind j
bind -r j select-pane -D


# Select Upper Pane
unbind k
bind -r k select-pane -U


# Select Right Pane
unbind l
bind -r l select-pane -R


# Resize Pane Left
unbind H
bind -r H resize-pane -L 5


# Resize Pane Down
unbind J
bind -r J resize-pane -D 5


# Resize Pane Up
unbind K
bind -r K resize-pane -U 5


# Resize Pane Down
unbind L
bind -r L resize-pane -R 5
