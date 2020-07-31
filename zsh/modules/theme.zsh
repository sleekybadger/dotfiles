export TERM=xterm-256color

export CLICOLOR=1
export LSCOLORS=Exfxcxdxbxegedabagacad

if is_native
then
  include "themes/powerlevel9k/config"
else
  include "themes/spaceship/config"
fi

zplug "lib/theme-and-appearance", from:oh-my-zsh
zplug "plugins/colored-man-pages", from:oh-my-zsh
