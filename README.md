# My Gentoo dotfiles

This README assumes you have a working Gentoo environment already installed.

# Setup

## Clone the repo

```sh
$ git clone https://github.com/zaklaus/gentoo-dotfiles.git gentoo-dotfiles
```

## Execute the setup script

```sh
$ gentoo-dotfiles/setup.sh
```

Simply `source` the `.bashrc` script to load up all settings

## Set up NeoVIM

### Set up Python3 dependencies for NeoVIM

```sh
$ python3 -m ensurepip
$ pip3 install --user pynvim
```

### Run NeoVIM

Run `neovim` and type `:PlugInstall` to set up all plugins

## Set up tmux

Run `tmux` and press `` `+I `` to install all plugins
