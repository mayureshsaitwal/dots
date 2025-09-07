### Startup
#echo "Hello jd1t"
#RPS1="${${KEYMAP/vicmd/-- NORMAL --}/(main|viins)/-- INSERT --}"
#RPS2=$RPS1



#### History
HISTFILE=~/.zsh_history
HISTSIZE=100000000
SAVEHIST=100000000
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups
# setopt INC_APPEND_HISTORY
# setopt HIST_FIND_NO_DUPS
# setopt HIST_IGNORE_DUPS

# Completion styling
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' menu no
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'
zstyle ':fzf-tab:complete:__zoxide_z:*' fzf-preview 'ls --color $realpath'

export LANG=en_US.UTF-8
# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH
export MANPATH="/usr/local/man:$MANPATH"

# Created by `pipx` on 2021-05-19 06:37:44
export PATH="$PATH:/home/jd1t/.local/bin"

export XDG_SCREENSHOTS_DIR="$HOME/Screenshots"
export HYPRSHOT_DIR="$HOME/Screenshots"

# Shell integrations
eval "$(fzf --zsh)"

source ~/.zsh/alias.zsh
source ~/.zsh/binds.zsh
source ~/.zsh/prompt.zsh
source ~/.zsh/zinit.zsh

autoload -Uz compinit && compinit

# Composer
export PATH="$PATH:$HOME/.config/composer/vendor/bin"

# Starship
eval "$(starship init zsh)"

# Direnv
eval "$(direnv hook zsh)"

[ -f /opt/miniconda3/etc/profile.d/conda.sh ] && source /opt/miniconda3/etc/profile.d/conda.sh


# Start tmux
# if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
#   exec tmux new -s main
# fi

