prompt_rvm_current_version() {
  local version=$(rvm_current_version)
  if [[ $version != "none" ]]
  then
    "$1_prompt_segment" "$0" "$2" "$DEFAULT_COLOR_INVERTED" "$DEFAULT_COLOR" "$version" "RUBY_ICON"
  fi
}
