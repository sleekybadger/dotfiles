include "modules/zplug"

include "modules/base16"
include "modules/theme"

include "modules/autosuggestions"
include "modules/completion"
include "modules/history"
include "modules/docker"
include "modules/highlighting"
include "modules/history"
include "modules/bindings"

include "modules/nvm"
include "modules/rvm"
include "modules/pyenv"
include "modules/goenv"
include "modules/aliases"

if ! zplug check --verbose
then
  zplug install
fi

zplug load

