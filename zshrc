# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="cstedman"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git rvm web-search)

source $ZSH/oh-my-zsh.sh

alias ~='cd ~'
alias cd..='cd ..'
alias ..='cd ..'
alias rc='vim ~/.zshrc'
alias rcu='. ~/.zshrc'
alias c='clear'
alias Code='cd ~/Code'
alias code='cd ~/Code' 
alias rm='rm -i'
alias ll='ls -alth'
alias mamp='cd /Applications/MAMP/htdocs'
alias vimrc='vim ~/.vimrc'
alias ztheme='vim ~/.oh-my-zsh/themes/cstedman.zsh-theme'
alias todo='~/Code/Shell/todo.sh'
alias lux='ssh root@nodenexus.com'
alias Config='cd ~/Code/Shell/config'

# Rename vim tabs
function vim() {
  echo -ne "\e]1;vim $@\a"
  command vim $@
}

function precmd() {
  BAT_CHARGE='/Users/cstedman/Code/Shell/batcharge.py'
  RPROMPTGOAL=${(z)$($BAT_CHARGE 2>/dev/null)}
  RPROMPT="%{$RPROMPTGOAL[1]%}$RPROMPTGOAL[2]%{$RPROMPTGOAL[3]%}"
  LINENUM=""
  for ((i = 0; i < $COLUMNS - 45 - $HOST_LEN; i++)); do LINENUM="${LINENUM}-"; done
}
