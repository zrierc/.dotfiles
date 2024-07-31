#!/usr/bin/env bash

opt1=$1

# show help
help_cmd() {
  cat <<EOF
  Usage: $(basename $0) [OPTIONS]

Options:
-i, --install   - Install dotfiles
-r, --remove    - Uninstall dotfiles
-h, --help      - Show help command for this script

EOF
}

# main command
cmd() {
  ## explicit / whitelist
  # dirs="alacritty,bin,dunst,i3,lazygit,nvim,picom,polybar,rofi,starship,tmux,zsh"

  ## all
  dirs=($(find . -maxdepth 1 -type d -name '*' ! -name '.*' | tr -d './'))

  for folder in "${dirs[@]}"; do
    if [ "$1" == "install" ]; then
      echo "Stow $folder"
      stow -D $folder
      stow $folder
    elif [[ "$1" == "remove" ]]; then
      echo "Removing $folder"
      stow -D $folder
    fi
  done
}

# check if dotfiles available in home dir
parentdir=$(dirname $(pwd))
if [[ ! "$parentdir" == "$HOME" ]]; then
  echo "Current dotfiles dir is in ${parentdir}."
  echo "Please move dotfiles to home dir otherwise Stow will not setting up properly."
  exit 1
fi

# entry point
if [ "$opt1" == "--install" ] || [ "$opt1" == "-i" ]; then
  echo -e "Setting up all configuration in dotfiles...\n"
  cmd install
elif [ "$opt1" == "--remove" ] || [ "$opt1" == "-r" ]; then
  echo -e "Uninstall all configuration in dotfiles...\n"
  cmd remove
elif [ "$opt1" == "--help" ] || [ "$opt1" == "-h" ]; then
  help_cmd
else
  echo "Options is not specify."
  echo "See \`setup.sh --help\` to list available commands."
  exit 1
fi
