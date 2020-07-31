export BASE16_THEME="base16-snazzy"
export BASE16_SHELL="$DOTFILES_DIR/vendor/base16"

if [[ ! -e "$HOME/.base16_theme" ]]
then
  source "$BASE16_SHELL/scripts/$BASE16_THEME.sh"
fi

eval "$("$BASE16_SHELL/profile_helper.sh")"

