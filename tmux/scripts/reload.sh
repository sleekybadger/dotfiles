#!/usr/local/bin/bash

__dotfiles::tmux::scripts::reload () {
  local start_message="Reloading configuration file..."
  local end_message="Configuration reloaded successfully!"

  $DOTFILES_DIR/tmux/scripts/helpers/spinner.sh "$start_message" "$end_message" &

  local spinner_pid="$!"

  tmux source-file "$HOME/.tmux.conf"
  sleep 2

  kill $spinner_pid
}

__dotfiles::tmux::scripts::reload "$@"
