setopt extendedglob

unsetopt beep
unsetopt chase_dots
unsetopt chase_links

export HOMEBREW_PREFIX="/usr/local"
export ANDROID_SDK_PREFIX="$HOME/Library/Android/sdk"

export DOTFILES_DIR="$HOME/.dotfiles"
export PROJECTS_DIR="$HOME/code"

export XDG_CACHE_HOME="$HOME/.cache"
export XDG_CONFIG_HOME="$HOME/.config"

export ZSH_CACHE_DIR="$XDG_CACHE_HOME/zsh"
export TMUX_CACHE_DIR="$XDG_CACHE_HOME/tmux"

export LDFLAGS="-L$HOMEBREW_PREFIX/opt/zlib/lib"
export CPPFLAGS="-I$HOMEBREW_PREFIX/opt/zlib/include"
export PKG_CONFIG_PATH="$HOMEBREW_PREFIX/opt/zlib/lib/pkgconfig"

export SHELL="$HOMEBREW_PREFIX/bin/zsh"

export EDITOR="vim"
export LESS="--no-init"
export KEEP_BUILD_PATH=true

export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

typeset -gxU path PATH

path=(
  $HOME/bin
  $HOMEBREW_PREFIX/bin
  $HOMEBREW_PREFIX/sbin
  $ANDROID_SDK_PREFIX/tools
  $ANDROID_SDK_PREFIX/platform-tools
  $path
)

typeset -U autoload_dirs
typeset -Ugx fpath FPATH

autoload_dirs=(
  $DOTFILES_DIR/zsh/helpers
  $DOTFILES_DIR/zsh/functions
)

fpath=(
  $autoload_dirs
  $fpath
)

for dir in $autoload_dirs
do
  for file in $dir/*(.)
  do
    autoload -Uz "${file/$dir\//}"
  done
done

if ! is_interactive
then
  include "modules/nvm"
  include "modules/rvm"
  include "modules/pyenv"
  include "modules/goenv"
fi
