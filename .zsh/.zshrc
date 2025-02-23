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


export LANG=en_US.UTF-8
# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH
export MANPATH="/usr/local/man:$MANPATH"

# Created by `pipx` on 2021-05-19 06:37:44
export PATH="$PATH:/home/jd1t/.local/bin"

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
export PYENV_VIRTUALENV_DISABLE_PROMPT=1

eval "$(pyenv init --path)"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

export LANGUAGE=en_US.UTF-8
export LANG=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8


source ~/.zsh/alias.zsh
source ~/.zsh/binds.zsh
source ~/.zsh/prompt.zsh
source ~/.zsh/zinit.zsh

# Dont want Vi mode
bindkey -e

# Composer
export PATH="$PATH:$HOME/.config/composer/vendor/bin"
