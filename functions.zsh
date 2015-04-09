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
# Open the .gitignore in the current repository, or prompt the user to create
# one if it does not already exist
#
function gitignore() {
  setopt local_options no_case_match
  local GIT_CHECK=$(git rev-parse --show-toplevel 2> /dev/null) 
  if ! [[ -n $GIT_CHECK ]]; then
    echo "${fg_bold[red]}Error:${reset_color} Directory is not a git repository"
    false
  else
    if [[ -a $GIT_CHECK/.gitignore ]]; then
      $EDITOR $GIT_CHECK/.gitignore
    else
      local tmp
      vared -p 'No .gitignore found. Create one? (y/n) ' tmp
      if [[ $tmp =~ "^(y|yes)$" ]]; then
        echo ".DS_Store\n*.swp" >> $GIT_CHECK/.gitignore
        $EDITOR $GIT_CHECK/.gitignore
      else
        false
      fi
    fi
  fi
}
