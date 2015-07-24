#!/bin/zsh

while read i
do
  local url=$(echo $i | cut -f1 -d,)
  local nickname=$(echo $i | cut -f2 -d,)
  ./add_plugin.sh $url $nickname
done < plugins.txt
