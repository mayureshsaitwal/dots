### Startup
#echo "Hello jd1t"
#RPS1="${${KEYMAP/vicmd/-- NORMAL --}/(main|viins)/-- INSERT --}"
#RPS2=$RPS1



#### History
HISTFILE=~/.zsh_history
HISTSIZE=100000000
SAVEHIST=100000000
setopt INC_APPEND_HISTORY
setopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_DUPS


# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH
fpath+=($HOME/.zsh/zsh-async)

# Path to your oh-my-zsh installation.
#export ZSH="/home/jd1t/.oh-my-zsh"

# ZSH_THEME="spaceship"
ZSH_THEME=robbyrussell

#plugins=(git bgnotify zsh-autosuggestions fast-syntax-highlighting autojump zsh-z)

#source $ZSH/oh-my-zsh.sh

#source ~/.zplug/init.zsh


#zplug "plugins/git",   from:oh-my-zsh
#zplug "plugins/bgnotify", from:oh-my-zsh
#zplug "zsh-users/zsh-autosuggestions" 
#zplug "zdharma-continuum/fast-syntax-highlighting"
#zplug ""



#export WORDCHARS='*?_[]~=&;!#$%^(){}'
#local WORDCHARS='*?_-.[]~=/&;!#$%^(){}<>:,"'"'"

#source ~/.zsh/zle.zsh


##### User configuration #####


## Alt+Backspace
autoload -U select-word-style
select-word-style bash              #deletes words till '/'  

export WORDCHARS='.-'
    

#### ColorLs ####
#source $(dirname $(gem which colorls))/tab_complete.sh
#path+=(
#    $(ruby -e 'puts File.join(Gem.user_dir, "bin")')
#)

#### Bind Keys ####


bindkey "\e[1~" beginning-of-line
bindkey "\e[4~" end-of-line
bindkey "\e[5~" beginning-of-history
bindkey "\e[6~" end-of-history
bindkey "\e[7~" beginning-of-line
bindkey "\e[3~" delete-char
bindkey "\e[2~" quoted-insert
bindkey "\e[5C" forward-word
bindkey "\e[5D" backward-word
bindkey "\e\e[C" forward-word
bindkey "\e\e[D" backward-word
bindkey "\e[1;5C" forward-word
bindkey "\e[1;5D" backward-word
bindkey "\e[8~" end-of-line
bindkey "\eOH" beginning-of-line
bindkey "\eOF" end-of-line
bindkey "\e[H" beginning-of-line
bindkey "\e[F" end-of-line



#### SpaceShip ####
#SPACESHIP_PROMPT_SEPARATE_LINE=false
#SPACESHIP_PROMPT_ASYNC=false
#SPACESHIP_PROMPT_PREFIXES_SHOW=false
#SPACESHIP_DIR_TRUNC_REPO=false
#SPACESHIP_RUBY_ASYNC=false
#SPACESHIP_NODE_SHOW=false
#SPACESHIP_JOBS_SHOW=false
#SPACESHIP_EXEC_TIME_SHOW=false

export MANPATH="/usr/local/man:$MANPATH"

#### Aliases ####

alias szrc="source .zsh/.zshrc"
alias zrc="v .zsh/.zshrc"
alias vrc="v ~/.vim/vimrc"
alias xrc="v ~/.xinitrc"
alias brc="v ~/.config/bspwm/bspwmrc"
alias sxrc="v ~/.config/sxhkd/sxhkdrc"
alias as="./bin/auto_scripter.sh"
alias prc="v ~/.config/picom/picom.conf"
alias krc="v ~/.config/kitty/kitty.conf"
alias wrc="v ~/.config/waybar/config"
#alias arc="v ~/.config/awesome/rc.lua"
alias arc="v ~/.config/bspwm/autostart"
alias pmx="pulsemixer"
alias mms="v $HOME/bin/multi_monitor_script"
alias ash="v ~/bin/autostart.sh"
alias pos="v ~/bin/polybar_on_startup"
alias guc="github-upload-cloud"
alias hrc="v ~/.config/hypr/hyprland.conf"
alias yeet="yay -Rsn"
alias plt="echo -e 'archlinux' | yay -S --noconfirm"
alias dig="sudo pacman -Qe | grep"
alias btop="bpytop"
alias sx="startx"

alias pf="sudo pacman -Qe | grep"

# alias ll="exa -l -g --icons"
# alias ls="exa --icons"
alias fp="fzf --preview 'bat --style=numbers --color=always --line-range :500 {}'"

alias v="nvim"

alias 'sudo=sudo '
alias -g '$= '
#alias lc='colorls -lA --sd'
#alias ls='colorls'

alias sdl="spotdl --output /mnt/win1/Music/New --format m4a " 
alias nv="env -u WAYLAND_DISPLAY neovide"

# Created by `pipx` on 2021-05-19 06:37:44
export PATH="$PATH:/home/jd1t/.local/bin"

# Zsh async
#autoload -Uz async && async

### Added by Zinit's installer
 if [[ ! -f $HOME/.local/share/zinit/zinit.git/zinit.zsh ]]; then
     print -P "%F{33} %F{220}Installing %F{33}ZDHARMA-CONTINUUM%F{220} Initiative Plugin Manager (%F{33}zdharma-continuum/zinit%F{220})…%f"
     command mkdir -p "$HOME/.local/share/zinit" && command chmod g-rwX "$HOME/.local/share/zinit"
     command git clone https://github.com/zdharma-continuum/zinit "$HOME/.local/share/zinit/zinit.git" && \
         print -P "%F{33} %F{34}Installation successful.%f%b" || \
         print -P "%F{160} The clone has failed.%f%b"
 fi

 source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
 autoload -Uz _zinit
 (( ${+_comps} )) && _comps[zinit]=_zinit


# Zinit Plugins


# zinit light zsh-users/zsh-syntax-highlighting
zinit light z-shell/F-Sy-H
zinit snippet OMZ::plugins/git/git.plugin.zsh
zinit snippet OMZ::plugins/bgnotify/bgnotify.plugin.zsh
zinit light zsh-users/zsh-autosuggestions 
zinit load agkozak/zsh-z
#zinit ice pick"async:zsh"
#zinit load mafredi/zsh-async 
#zinit load mafredri/zsh-async, from:"github", use:"async.zsh"
#zinit light spaceship-prompt/spaceship-prompt



# Zsh-z
autoload -U compinit && compinit
zstyle ':completion:*' menu select
#. torsocks on

export LANG=en_US.UTF-8


# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zdharma-continuum/zinit-annex-as-monitor \
    zdharma-continuum/zinit-annex-bin-gem-node \
    zdharma-continuum/zinit-annex-patch-dl \
    zdharma-continuum/zinit-annex-rust

### End of Zinit's installer chunk
