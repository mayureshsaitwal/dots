## Zinit

ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
[ ! -d $ZINIT_HOME ] && mkdir -p "$(dirname $ZINIT_HOME)"
[ ! -d $ZINIT_HOME/.git ] && git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
source "${ZINIT_HOME}/zinit.zsh"

autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Zinit Plugins


zinit light zsh-users/zsh-syntax-highlighting
zinit snippet OMZ::plugins/bgnotify/bgnotify.plugin.zsh
zinit light zsh-users/zsh-autosuggestions
zinit load agkozak/zsh-z
zinit light zimfw/input
zinit snippet OMZL::git.zsh
zinit snippet OMZP::git
zinit snippet OMZP::sudo
zinit snippet OMZP::archlinux
zinit snippet OMZP::command-not-found
#zinit ice pick"async:zsh"
#zinit load mafredi/zsh-async
#zinit load mafredri/zsh-async, from:"github", use:"async.zsh"
# zinit light spaceship-prompt/spaceship-prompt
# Starship
# eval "$(starship init zsh)"

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zdharma-continuum/zinit-annex-as-monitor \
    zdharma-continuum/zinit-annex-bin-gem-node \
    zdharma-continuum/zinit-annex-patch-dl \
    zdharma-continuum/zinit-annex-rust

### End of Zinit's installer chunk

