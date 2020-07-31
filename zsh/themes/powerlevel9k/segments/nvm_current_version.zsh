prompt_nvm_current_version() {
  local version=$(nvm_current_version)
  if [[ $version != "none" ]]
  then
    "$1_prompt_segment" "$0" "$2" "$DEFAULT_COLOR_INVERTED" "$DEFAULT_COLOR" "$version" "NODE_ICON"
  fi
}
