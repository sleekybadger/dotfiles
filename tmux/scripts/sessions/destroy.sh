#!/usr/local/bin/bash

__dotfiles::tmux::scripts::session::destroy () {
  local session_name="$1"

  if [[ -z "$session_name" ]]
  then
    tmux confirm -p "Are you sure you want to close current session? (y/n)" "kill-session"
  else
    tmux confirm -p "Are you sure you want to close \"$session_name\" session? (y/n)" "kill-session -t $session_name"
  fi
}

__dotfiles::tmux::scripts::session::destroy "$@"
