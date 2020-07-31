WORDCHARS=''
COMPINIT_CACHE="$ZSH_CACHE_DIR/compinit"

autoload -Uz compinit
zmodload -i zsh/complist

unsetopt flowcontrol
unsetopt menu_complete

setopt auto_menu
setopt always_to_end
setopt complete_in_word

bindkey -M menuselect '^o' accept-and-infer-next-history

zstyle '*' single-ignored show
zstyle ':completion:*' special-dirs true
zstyle ':completion:*:*:*:*:*' menu select
zstyle ':completion::complete:*' use-cache 1
zstyle ':completion::complete:*' cache-path $ZSH_CACHE_DIR
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|=*' 'l:|=* r:|=*'
zstyle ':completion:*:cd:*' tag-order local-directories directory-stack path-directories
zstyle ':completion:*:*:*:users' ignored-patterns \
        adm amanda apache at avahi avahi-autoipd beaglidx bin cacti canna \
        clamav daemon dbus distcache dnsmasq dovecot fax ftp games gdm \
        gkrellmd gopher hacluster haldaemon halt hsqldb ident junkbust kdm \
        ldap lp mail mailman mailnull man messagebus  mldonkey mysql nagios \
        named netdump news nfsnobody nobody nscd ntp nut nx obsrun openvpn \
        operator pcap polkitd postfix postgres privoxy pulse pvm quagga radvd \
        rpc rpcuser rpm rtkit scard shutdown squid sshd statd svn sync tftp \
        usbmux uucp vcsa wwwrun xfs '_*'

typeset -i updated_at=$(stat -f '%Sm' -t '%j' $COMPINIT_CACHE 2>/dev/null)
if [[ $(date +'%j') != $updated_at ]]
then
  compinit -i -d "$COMPINIT_CACHE"
else
  compinit -C -i -d "$COMPINIT_CACHE"
fi
