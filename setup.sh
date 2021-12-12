#!/bin/sh

# Sets up the development environment for FreeBSD box.

REPO=$(cd `dirname $0` && pwd)/dist
cd $HOME

echo "Repo location: $REPO"
echo "Source location: $HOME"

# Copy base files to $HOME dir

cp -r $REPO/. $HOME/

# Compile and install dwm, dmenu and st

$HOME/suckless/package.sh

# Install Tmux Plugin Manager
mkdir -p $HOME/.tmux/plugins
git clone https://github.com/tmux-plugins/tpm $HOME/.tmux/plugins/tpm

# Final changes
echo "Done! Source .zshrc now and enjoy!"
