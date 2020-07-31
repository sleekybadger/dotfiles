# TODO:
# select-window

# Create Window
unbind w
bind w new-window -c "#{pane_current_path}"


# Create Window With Name
unbind W
bind W command -p " Window Name:" "new-window -c '#{pane_current_path}' -n %1"


# Rename Window
unbind C-w
bind C-w command -p " Window Name:" -I "#W" "rename-window %1"


# Create Window From Current Pane
unbind b
bind b break-pane


# Create Window With Name From Current Pane
unbind B
bind B command -p " Window Name:" "break-pane -n %1"


# Close Current Window
unbind x
bind x kill-window


# Close Window By Index
unbind X
bind X command -p " Window Number:" "kill-window -t %1"


# Close All Windows Except Current
unbind C-x
bind C-x kill-window -a


# Close All Windows Except Index
unbind M-x
bind M-x command -p " Window Number:" "kill-window -a -t %1"


# Swap Window Left
unbind C-<
bind C-< swap-window -t -1


# Swap Window Right
unbind C->
bind C-> swap-window -t +1


# Select Next Window
unbind n
bind -r n next-window


# Select Previus Window
unbind p
bind -r p previous-window


# Select Last Window
unbind Tab
bind -r Tab last-window

# Select 1 Window
unbind 1
bind 1 select-window -t :=1

# Select 2 Window
unbind 2
bind 2 select-window -t :=2

# Select 3 Window
unbind 3
bind 3 select-window -t :=3

# Select 4 Window
unbind 4
bind 4 select-window -t :=4

# Select 5 Window
unbind 5
bind 5 select-window -t :=5

# Select 6 Window
unbind 6
bind 6 select-window -t :=6

# Select 7 Window
unbind 7
bind 7 select-window -t :=7

# Select 8 Window
unbind 8
bind 8 select-window -t :=8

# Select 9 Window
unbind 9
bind 9 select-window -t :=9

# Select 0 Window
unbind 0
bind 0 select-window -t :=10
