export PYENV_ROOT="$HOME/.pyenv"
export PYENV_SHELL="zsh"

path=(
  $PYENV_ROOT/bin
  $PYENV_ROOT/shims
  $path
)

if [[ -d "$HOMEBREW_PREFIX/opt/pyenv" ]]
then
  source "$HOMEBREW_PREFIX/opt/pyenv/completions/pyenv.zsh"
  command pyenv rehash 2>/dev/null
fi

pyenv() {
  local command
  command="${1:-}"
  if [ "$#" -gt 0 ]
  then
    shift
  fi

  case "$command" in
  rehash|shell)
    eval "$(pyenv "sh-$command" "$@")";;
  *)
    command pyenv "$command" "$@";;
  esac
}
