# Personal Dotfiles

Yo! This is my personal ricing.

<p align="center">
  <img src="https://pbs.twimg.com/media/GTp1mJNa0AAscY9?format=jpg&name=900x900" >
</p>

<!--![coonfiger](https://pbs.twimg.com/media/GTp1mJNa0AAscY9?format=jpg&name=900x900)-->

## Pre-Requisite

> Currently I'm using PopOS. Sorry not using Arch (yet)

- Git
  
  Install with following command:

  ```bash
  sudo apt install git
  ```

- GNU stow

  Install with following command:

  ```bash
  sudo apt install stow
  ```

## Installation

1. Clone [this repo](https://github.com/zrierc/.dotfiles) into home directory
and enter the directory

    ```bash
    git clone git@github.com:zrierc/.dotfiles.git ~/.dotfiles
    cd ~/.dotfiles
    ```

2. Install required git sub-module

    ```bash
    git submodule update --init --recursive
    ```

3. Create symlink using stow

    Stow for specific configuration:

    ```bash
    stow nvim
    ```

    Or stow for all configuration:

    ```bash
    stow .
    ```

## Uninstall

To uninstall simply unstow with following command:

  ```bash
  stow -D nvim
  ```

  Or unstow all configuration:

  ```bash
  stow -D .
  ```

---

## Credits

Shout out to these awesome people who inspired me
(I also use their config/scripts) to ricing stuff:

- [ThePrimeagen](https://github.com/thePrimeagen/) - tmux, nvim and other cool stuff
- [adi1090x](https://github.com/adi1090x) - Polybar and Rofi applets and lauchers
