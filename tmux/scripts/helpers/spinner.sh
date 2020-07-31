#!/usr/local/bin/bash

if [ ! -v tmux_spinner_elements ]
then
  declare -xa tmux_spinner_elements=()
fi

__dotfiles::tmux::scripts::spinner () {
  local start_message="$1"
  local end_message="$2"
  local pid="$$"

  __dotfiles::tmux::scripts::spinner::on_finish $pid "$end_message"
  __dotfiles::tmux::scripts::spinner::start $pid "$start_message"
}

__dotfiles::tmux::scripts::spinner::on_finish () {
  local message="$2"
  local pid="$1"

  trap "__dotfiles::tmux::scripts::spinner::finish \"$pid\" \"$message\"" SIGINT SIGTERM
}

__dotfiles::tmux::scripts::spinner::finish () {
  local message="$2"
  local pid="$1"

  tmux display-message " ${tmux_spinner_elements[$pid]} $message"

  unset tmux_spinner_elements[$pid]
  exit
}

__dotfiles::tmux::scripts::spinner::start () {
  local pid="$1"
  local message="$2"
  local index=0

  while true
  do
    index=$(((index + 1) % ${#TMUX_SPINNER}))
    tmux_spinner_elements[$pid]="${TMUX_SPINNER:$index:1}"

    tmux display-message " ${tmux_spinner_elements[$pid]} $message"

    sleep 0.1
  done
}

__dotfiles::tmux::scripts::spinner "$@"
