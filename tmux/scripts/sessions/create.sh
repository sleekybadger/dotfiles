#!/usr/local/bin/bash

__dotfiles::tmux::scripts::session::create () {
  local session_name="$1"

  if [[ -z "$session_name" ]]
  then
    TMUX="" tmux new-session -d
    tmux switch-client -t $(__dotfiles::tmux::scripts::session::last)
  elif __dotfiles::tmux::scripts::session::exists $session_name
  then
    tmux switch-client -t "$session_name"
  else
    TMUX="" tmux new-session -d -s "$session_name"
    tmux switch-client -t "$session_name"
  fi
}

__dotfiles::tmux::scripts::session::last () {
  local format="#{session_name}:#{session_created}"
  tmux ls -F "$format" | sort -t : -k 2n | tail -n1 | cut -d : -f1
}

__dotfiles::tmux::scripts::session::exists () {
  local session_name="$1"
  tmux has-session -t "$session_name" >/dev/null 2>&1
}

__dotfiles::tmux::scripts::session::create "$@"
