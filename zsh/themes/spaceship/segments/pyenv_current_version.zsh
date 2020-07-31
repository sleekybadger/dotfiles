SPACESHIP_PYENV_CURRENT_VERSION_SHOW="${SPACESHIP_PYENV_CURRENT_VERSION_SHOW=true}"
SPACESHIP_PYENV_CURRENT_VERSION_PREFIX="${SPACESHIP_PYENV_CURRENT_VERSION_PREFIX="$SPACESHIP_PROMPT_DEFAULT_PREFIX"}"
SPACESHIP_PYENV_CURRENT_VERSION_SUFFIX="${SPACESHIP_PYENV_CURRENT_VERSION_SUFFIX="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"}"
SPACESHIP_PYENV_CURRENT_VERSION_SYMBOL="${SPACESHIP_PYENV_CURRENT_VERSION_SYMBOL="🐍 "}"
SPACESHIP_PYENV_CURRENT_VERSION_COLOR="${SPACESHIP_PYENV_CURRENT_VERSION_COLOR="green"}"

spaceship_pyenv_current_version() {
  [[ $SPACESHIP_PYENV_CURRENT_VERSION_SHOW == false ]] && return

  local version=$(pyenv_current_version)
  [[ $version == "none" ]] && return

  spaceship::section \
    "$SPACESHIP_PYENV_CURRENT_VERSION_COLOR" \
    "$SPACESHIP_PYENV_CURRENT_VERSION_PREFIX" \
    "${SPACESHIP_PYENV_CURRENT_VERSION_SYMBOL}${version}" \
    "$SPACESHIP_PYENV_CURRENT_VERSION_SUFFIX"
}
