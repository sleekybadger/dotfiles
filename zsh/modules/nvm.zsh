export NVM_DIR="$HOME/.nvm"

if [[ -d "$HOMEBREW_PREFIX/opt/nvm" ]]
then
  source "$HOMEBREW_PREFIX/opt/nvm/nvm.sh"
  source "$HOMEBREW_PREFIX/opt/nvm/etc/bash_completion.d/nvm"
fi
