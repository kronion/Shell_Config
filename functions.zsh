#
# Rename vim tabs and open multiple files with vertical split
# 
function vim() {
  echo -ne "\e]1;vim $@\a"
  if [[ $# -ge 2 ]]; then
    $EDITOR $@ -O
  else
    $EDITOR $@
  fi
}

#
# Precommand which runs before redrawing the prompt
#
function precmd() {
  BAT_CHARGE='/Users/cstedman/Code/Shell/config/batcharge.py'
  RPROMPTGOAL=${(z)$($BAT_CHARGE 2>/dev/null)}
  RPROMPT="%{$RPROMPTGOAL[1]%}$RPROMPTGOAL[2]%{$RPROMPTGOAL[3]%}"
  LINENUM=""
  for ((i = 0; i < $COLUMNS - 45 - $HOST_LEN; i++)); do LINENUM="${LINENUM}-"; done
  if test -n "$VIRTUAL_ENV" ; then
    PROMPT=$_OLD_VIRTUAL_PS1
  fi
}
