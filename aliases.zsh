# Basic directory operations
alias ~='cd ~'
alias -- -='cd -'

# Push and pop directories on directory stack
alias pu='pushd'
alias po='popd'

# Super user
alias _='sudo'
alias please='sudo'

#alias g='grep -in'

# Show history
if [ "$HIST_STAMPS" = "mm/dd/yyyy" ]
then
    alias history='fc -fl 1'
elif [ "$HIST_STAMPS" = "dd.mm.yyyy" ]
then
    alias history='fc -El 1'
elif [ "$HIST_STAMPS" = "yyyy-mm-dd" ]
then
    alias history='fc -il 1'
else
    alias history='fc -l 1'
fi

# List direcory contents
alias lsa='ls -lah'
alias l='ls -lah'
alias ll='ls -lh'
alias la='ls -lAh'
alias lt='ls -alth'
alias sl=ls # often screw this up

alias afind='ack-grep -il'

# Config shortcuts
alias Config='cd ~/Code/Shell/config'
alias rc='vim ~/.zshrc'
alias rcu='. ~/.zshrc'
alias vimrc='vim ~/.vimrc'
alias ztheme='vim ~/.oh-my-zsh/themes/cstedman.zsh-theme'
alias aliases='vim ~/.oh-my-zsh/lib/aliases.zsh'

# Code directory shortcuts
alias Code='cd ~/Code'
alias code='cd ~/Code' 
alias mamp='cd /Applications/MAMP/htdocs'

# Miscellaneous
alias c='clear'
alias rm='rm -i'
alias VIM='vim'

# Open Finder at current directory
alias o='open .'

# Server login
alias lux='ssh root@nodenexus.com'

alias todo='~/Code/Shell/todo.sh'
alias bfg='java -jar ~/Code/bfg.jar'
