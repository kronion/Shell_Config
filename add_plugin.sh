#!/bin/bash

function usage {
  echo "Usage: ./add_plugin.sh repository nickname"
}

function getRepoName {
  local repoName=$(echo "$1" | cut -d '/' -f 5)
  echo "$repoName" | cut -d '.' -f 1
}

if [[ $# -ne 2 ]]; then
  usage
else
  git remote add "$2" "$1"
  git subtree add --prefix dot_vim/bundle/$(getRepoName "$1") "$2" master --squash
fi
