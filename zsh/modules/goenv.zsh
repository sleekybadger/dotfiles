export GOENV_GOPATH_PREFIX="$HOME/.go"
export GOENV_ROOT="$HOME/.goenv"
export GOENV_SHELL="zsh"

path=(
  $GOENV_ROOT/bin
  $GOENV_ROOT/shims
  $path
)

if [[ -d "$HOMEBREW_PREFIX/opt/goenv" ]]
then
  source "$HOMEBREW_PREFIX/opt/goenv/completions/goenv.zsh"
  command goenv rehash 2>/dev/null
fi

path=(
  $GOROOT/bin
  $GOPATH/bin
  $path
)

goenv() {
  local command
  command="$1"
  if [ "$#" -gt 0 ]; then
    shift
  fi

  case "$command" in
  rehash|shell)
    eval "$(goenv "sh-$command" "$@")";;
  *)
    command goenv "$command" "$@";;
  esac
}
