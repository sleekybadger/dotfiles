#!/usr/bin/env bash
set -ex

function empty {
  echo ""
}

function info {
  echo -e "\033[0;37m${*}\033[0m"
}

function announce {
  echo -e "\033[1;36m${*}\033[0m"
}

function install_brew {
  local url=https://raw.githubusercontent.com/Homebrew/install/master/install

  announce "Verifing Homebrew installation..."
  if [ -z $(which brew) ]
  then
    info "Installing homebrew..."
    ruby -e "$(curl -fsSL ${url})"
  else
    info "Homebrew already installed. Skipping..."
  fi

  empty
}

function upgrade_brew {
  local repositories=($@)

  announce "Updating Homebrew..."

  brew update
  brew upgrade

  empty

  announce "Tapping formula repositories..."
  for repository in ${repositories[@]}
  do
    info "Tapping ${repository}"
    brew tap $repository
  done

  empty
}

function install_formulas {
  local title="${1}"
  local formulas=("${@:2}")

  announce "Installing ${title} formulas..."
  for ((i = 0; i < ${#formulas[@]}; i++))
  do
    local formula_to_install="${formulas[$i]}"
    local formula_to_print="${formulas[$i]%% *}"

    info "Installing ${formula_to_print}"
    brew install $formula_to_install
  done

  empty
}

function install_casks {
  local title="${1}"
  local casks=("${@:2}")

  announce "Installing ${title} casks..."
  for ((i = 0; i < ${#casks[@]}; i++))
  do
    local cask_to_install="${casks[$i]}"
    local cask_to_print="${casks[$i]%% *}"

    info "Installing ${cask_to_print}"
    brew cask install $cask_to_install
  done

  empty
}

function brew_post_install {
  local brew_prefix="$(brew --prefix)"

  ln -sf "${brew_prefix}/bin/gsha256sum" "${brew_prefix}/bin/sha256sum"
  ln -sf "${brew_prefix}/bin/gsha512sum" "${brew_prefix}/bin/sha512sum"
}

function cleanup {
  brew cleanup
}

BREW_REPOSITORIES=(
  "homebrew/core"
  "homebrew/bundle"
  "homebrew/cask"
  "homebrew/cask-fonts"
  "homebrew/cask-drivers"
  "homebrew/cask-versions"
  "bramstein/webfonttools"
  "moncho/dry"
  "heroku/brew"
  "goles/battery"
  "wagoodman/dive"
  "ringohub/redis-cli"
)

REQUIRED_CASKS=(
  "java"
  "xquartz"
  "gpg-suite"
)

FONTS_CASKS=(
  "font-input"
  "font-ibm-plex"
  "font-fira-mono"
  "font-space-mono"
  "font-source-code-pro"
  "font-mononoki-nerd-font"
  "font-droidsansmono-nerd-font"
  "font-fira-mono"
  "font-firamono-nerd-font"
  "font-fira-code"
)

CODING_CASKS=(
  "iterm2"
  "sourcetree"
  "github"
  "anybar"
  "docker"
  "bee"
  "arduino"
  "sublime-text"
  "sublime-merge"
  "ngrok"
  "now"
  "robo-3t"
  "alacritty"
  "visual-studio-code"
  "cyberduck"
  "balenaetcher"
  "postman"
  "insomnia"
  "hex-fiend"
  "android-studio"
  "multipass"
)

BROWSERS_CASKS=(
  "google-chrome"
  "firefox"
  "firefox-developer-edition"
  "firefox-developer-edition"
  "tor-browser"
)

QUICK_LOOK_PLUGINS_CASKS=(
  "qlstephen"
  "quicklook-json"
  "qlcolorcode"
  "qlmarkdown"
  "qlvideo"
  "qlimagesize"
  "webpquicklook"
)

MESSENGER_CASKS=(
  "skype"
  "slack"
  "telegram"
  "upwork"
  "zoomus"
  "google-hangouts"
  "element"
)

DESIGN_CASKS=(
  "gimp"
  "figma"
  "sketch"
  "zeplin"
  "themeengine"
  "krita"
)

GAMING_CASKS=(
  "steam"
  "battle-net"
)

MISCELLANEOUS_CASKS=(
  "spotify"
  "virtualbox"
  "virtualbox-extension-pack"
  "1password"
  "vlc"
  "webtorrent"
  "transmission"
  "transmission-remote-gui"
  "tunnelbear"
  "hammerspoon"
  "keka"
  "podcastmenu"
  "iina"
  "bitbar"
  "alfred"
  "steveschow-gfxcardstatus"
  "wireshark"
  "pliim"
  "fliqlo"
  "keyboardcleantool"
  "istumbler"
  "android-file-transfer"
  "flic"
  "marta"
  "kindle"
  "google-backup-and-sync"
  "mounty"
)

GNU_CORE_FORMULAS=(
  "curl"
  "wget"
  "openssl"
  "openssh"
  "readline"
  "coreutils"
  "moreutils"
  "binutils"
  "grep"
  "gnu-sed"
  "findutils"
)

CODING_FORMULAS=(
  "nvm"
  "pyenv"
  "yarn"
  "ruby"
  "awscli"
  "heroku"
  "pgcli"
  "mycli"
  "redis-cli"
  "tokei"
  "platformio"
  "terraform"
  "doitlive"
  "tig"
  "exa"
  "sdl2"
)

TTY_FORMULAS=(
  "zsh"
  "tmux"
  "neovim"
)

GIT_FORMULAS=(
  "git-flow"
  "diff-so-fancy"
)

DOCKER_FORMULAS=(
  "dry"
  "dive"
  "hadolint"
)

SECURITY_FORMULAS=(
  "pinentry-mac"
  "aircrack-ng"
  "binwalk"
  "cifer"
  "fcrackzip"
  "hashpump"
  "hydra"
  "john"
  "knock"
  "pngcheck"
  "sqlmap"
  "bcrypt"
  "libressl"
)

NETWORK_FORMULAS=(
  "dns2tcp"
  "nmap"
  "socat"
  "tcpflow"
  "tcpreplay"
  "tcptrace"
  "ucspi-tcp"
  "mitmproxy"
  "httpie"
)

MISCELLANEOUS_FORMULAS=(
  "bat"
  "foremost"
  "netpbm"
  "xpdf"
  "xz"
  "sfnt2woff"
  "woff2"
  "ack"
  "exercism"
  "rlwrap"
  "tree"
  "vbindiff"
  "zopfli"
  "grc"
  "jp2a"
  "jq"
  "libcaca"
  "spark"
  "unrar"
  "zlib"
  "goles/battery/battery"
  "mackup"
  "asciinema"
  "blueutil"
  "fzf"
  "htop"
  "mas"
  "terminal-notifier"
  "wifi-password"
  "graphviz"
  "wordnet"
  "tldr"
  "icdiff"
  "imagemagick"
  "carthage"
  "ios-webkit-debug-proxy"
  "thefuck"
  "hexyl"
  "neofetch"
  "prettyping"
  "pgcli"
  "asciinema"
  "libyaml"
  "libffi"
  "xz"
  "zlib"
  "readline"
  "reattach-to-user-namespace"
  "urlview"
  "speedtest-cli"
)

install_brew
upgrade_brew "${BREW_REPOSITORIES[@]}"

install_casks "required" "${REQUIRED_CASKS[@]}"
install_casks "fonts" "${FONTS_CASKS[@]}"
install_casks "coding" "${CODING_CASKS[@]}"
install_casks "browsers" "${BROWSERS_CASKS[@]}"
install_casks "quicklook" "${QUICK_LOOK_PLUGINS_CASKS[@]}"
install_casks "messengers" "${MESSENGER_CASKS[@]}"
install_casks "design" "${DESIGN_CASKS[@]}"
install_casks "gaming" "${GAMING_CASKSa[@]}"
install_casks "miscellaneous" "${MISCELLANEOUS_CASKS[@]}"

install_formulas "gnu core" "${GNU_CORE_FORMULAS[@]}"
install_formulas "coding" "${CODING_FORMULAS[@]}"
install_formulas "tty" "${TTY_FORMULAS[@]}"
install_formulas "git" "${GIT_FORMULAS[@]}"
install_formulas "docker" "${DOCKER_FORMULAS[@]}"
install_formulas "security" "${SECURITY_FORMULAS[@]}"
install_formulas "network" "${NETWORK_FORMULAS[@]}"
install_formulas "miscellaneous" "${MISCELLANEOUS_FORMULAS[@]}"

cleanup
