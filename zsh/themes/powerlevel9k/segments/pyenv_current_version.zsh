prompt_pyenv_current_version() {
  local version=$(pyenv_current_version)
  if [[ $version != "none" ]]
  then
    "$1_prompt_segment" "$0" "$2" "$DEFAULT_COLOR_INVERTED" "$DEFAULT_COLOR" "$version" "PYTHON_ICON"
  fi
}
