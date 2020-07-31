zplug "denysdovhan/spaceship-prompt", use:spaceship.zsh, from:github, as:theme

include "themes/spaceship/segments/rvm_current_version"
include "themes/spaceship/segments/nvm_current_version"
include "themes/spaceship/segments/pyenv_current_version"
include "themes/spaceship/segments/goenv_current_version"

SPACESHIP_PROMPT_ORDER=(
  user
  host
  git
  line_sep
  char
  dir
  aws
)

SPACESHIP_RPROMPT_ORDER=(
  rvm_current_version
  nvm_current_version
  pyenv_current_version
  goenv_current_version
)

SPACESHIP_PROMPT_FIRST_PREFIX_SHOW="true"
SPACESHIP_PROMPT_DEFAULT_PREFIX=""
SPACESHIP_PROMPT_DEFAULT_SUFFIX=" "

SPACESHIP_USER_SHOW="always"
SPACESHIP_USER_COLOR="green"
SPACESHIP_USER_COLOR_ROOT="green"
SPACESHIP_USER_PREFIX="%B%F{green}@%f%b"

SPACESHIP_HOST_SHOW="always"
SPACESHIP_HOST_COLOR="blue"
SPACESHIP_HOST_COLOR_SSH="blue"

SPACESHIP_GIT_SYMBOL=""
SPACESHIP_GIT_PREFIX='git:('
SPACESHIP_GIT_SUFFIX=")"
SPACESHIP_GIT_STATUS_PREFIX=" "
SPACESHIP_GIT_STATUS_SUFFIX=""
SPACESHIP_GIT_BRANCH_PREFIX=""
SPACESHIP_GIT_BRANCH_SUFFIX=""

SPACESHIP_CHAR_SYMBOL="⚡︎"
SPACESHIP_CHAR_PREFIX=""
SPACESHIP_CHAR_SUFFIX=" "

SPACESHIP_DIR_TRUNC="2"
SPACESHIP_DIR_PREFIX=" "
SPACESHIP_DIR_TRUNC_PREFIX="../"
SPACESHIP_DIR_TRUNC_REPO="false"
SPACESHIP_DIR_LOCK_SYMBOL=""

SPACESHIP_RVM_CURRENT_VERSION_SYMBOL=" "
SPACESHIP_RVM_CURRENT_VERSION_PREFIX="  "
SPACESHIP_RVM_CURRENT_VERSION_SUFFIX=""

SPACESHIP_NVM_CURRENT_VERSION_SYMBOL=" "
SPACESHIP_NVM_CURRENT_VERSION_PREFIX="  "
SPACESHIP_NVM_CURRENT_VERSION_SUFFIX=""

SPACESHIP_PYENV_CURRENT_VERSION_SYMBOL=" "
SPACESHIP_PYENV_CURRENT_VERSION_PREFIX="  "
SPACESHIP_PYENV_CURRENT_VERSION_SUFFIX=""

SPACESHIP_GOENV_CURRENT_VERSION_SYMBOL=" "
SPACESHIP_GOENV_CURRENT_VERSION_PREFIX="  "
SPACESHIP_GOENV_CURRENT_VERSION_SUFFIX=""

SPACESHIP_AWS_SYMBOL=" "
SPACESHIP_AWS_PREFIX="  "
SPACESHIP_AWS_SUFFIX=""
