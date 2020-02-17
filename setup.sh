#!/bin/sh

# Sets up the development environment for FreeBSD box.

REPO=$(cd `dirname $0` && pwd)/dist
cd $HOME

echo "Repo location: $REPO"
echo "Source location: $HOME"

# Install Oh My Zsh!

sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/supercrabtree/k ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/k

# Copy base files to $HOME dir

cp -r $REPO/. $HOME/

# Compile and install dwm, dmenu and st

mkdir -p $HOME/bin
$HOME/suckless/package.sh

# Final changes
echo "Done! Source .zshrc now and enjoy!"
