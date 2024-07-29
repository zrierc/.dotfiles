#!/usr/bin/env bash

selected=$(cat ~/.config/tmux/.tmux-cht-commands ~/.config/tmux/.tmux-cht-languages | fzf)

if [[ -z $selected ]]; then
  exit 0
fi

read -p "Enter query: " query

if grep -qs "$selected" ~/.config/tmux/.tmux-cht-languages; then
  query=$(echo $query | tr ' ' '+')
  tmux neww bash -c "echo \"curl cht.sh/$selected/$query/\" & curl cht.sh/$selected/$query & while :; do sleep 1; done"
  # tmux neww bash -c "echo \"curl cht.sh/$selected/$query/\" & curl -s cht.sh/$selected/$query | less -R"
else
  tmux neww bash -c "echo \"curl -s cht.sh/$selected~$query\" & curl -s cht.sh/$selected~$query & while :; do sleep 1; done"
  # tmux neww bash -c "echo \"curl cht.sh/$selected~$query\" & curl -s cht.sh/$selected~$query | less -R"
fi
