################################################################################
#                                   cURL                                       # 
################################################################################

#
# Pretty-print API JSON responses
#
function jcurl() {
  curl -sS $@ | python -m json.tool | pygmentize -l javascript -f 256 -O style=native
}


################################################################################
#                                   GIT                                        # 
################################################################################

#
# Open the .gitignore in the current repository, or prompt the user to create
# one if it does not already exist
#
function ignore() {
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

function gitignore() {
  ignore
}


################################################################################
#                                   PIP                                        # 
################################################################################

function pip() {
  if [[ "$1" == "install" && -z "$VIRTUAL_ENV" ]]; then
    echo "No virtualenv detected. Are you sure you want to install?"
    select yn in "Yes" "No"; do
      case $yn in
        Yes )
          echo "$@"
          command pip $@
          return $?
          ;;
        No )
          return 1
          ;;
      esac
    done
  else
    command pip $@
  fi
}


################################################################################
#                                   VIM                                        # 
################################################################################

#
# Rename vim tabs and open multiple files with vertical split
# 
function vim() {
  echo -ne "\e]1;vim $@\a"
  if [[ $# -ge 2 ]]; then
    if [[ $(($COLUMNS / 3)) -ge $LINES ]]; then
      $EDITOR $@ -O
    else
      $EDITOR $@ -o
    fi
   else
     $EDITOR $@
  fi
}


################################################################################
#                                   ETC                                        # 
################################################################################

#
# If current directory is the root of a Jekyll blog, open latest blog post for
# editing
#
function latest() {
  local tmp
  vared -p 'No .gitignore found. Create one? (y/n) ' tmp
  echo $tmp
}
