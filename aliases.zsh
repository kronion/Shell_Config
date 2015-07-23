# Basic directory operations
alias ~='cd ~'
alias -- -='cd -'

# Config shortcuts
alias rc='vim ~/.zshrc'
alias rcu='. ~/.zshrc'
alias vimrc='vim ~/.vimrc'
alias zshenv='vim ~/.zshenv'

# Miscellaneous
alias c='clear'
alias rm='rm -i'
alias VIM='vim'
alias restart='exec zsh'

# Open Finder at current directory
alias o='open .'

# Virtualenv
alias activate='source $(find . -maxdepth 3 -name "activate") 2> /dev/null || echo "No virtualenv available"'
