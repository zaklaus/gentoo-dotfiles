# My FreeBSD dotfiles

This README assumes you have a working FreeBSD environment already installed.

# Setup

## Prerequisites

```sh
$ pkg install sudo git neovim python3 tmux htop zsh xorg gcc g++ clang clang++ xsel-conrad r
```

## Set up the display manager

See: [XDM docpage](https://www.freebsd.org/doc/handbook/x-xdm.html) and enable xdm on TTY 9

Edit `/usr/local/etc/X11/xdm/Xsetup_0` and delete the line that executes `xconsole`, since it's not really required and persists after user login.

## Set up Virtualbox Guest Additions

See [FreeBSD Handbook](https://www.freebsd.org/doc/handbook/virtualization-guest-virtualbox.html)

## Clone the repo

```sh
$ git clone https://github.com/zaklaus/bsd-dotfiles.git bsd-dotfiles
```

## Execute the setup script

```sh
$ bsd-dotfiles/setup.sh
```

This will install Oh My Zsh and copy all config files to your home directory, as well as compile dwm, dmenu and st.

Simply `source` the `.zshrc` script to load up all settings

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
