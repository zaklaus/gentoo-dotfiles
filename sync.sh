#!/bin/bash

# Copies various config files and folders to the repository

REPO=$(cd `dirname $0` && pwd)
cd $HOME

echo "Repo location: $REPO"
echo "Source location: $HOME"

copy() {
	echo "Copying $1 into $REPO/$1..."
	cp $1 $REPO/$1
}

copy_dir() {
	echo "Copying folder $1 into $REPO/$1 ..."
	mkdir -p $REPO/$1
	rsync -r --exclude=.git $1 $REPO/$(dirname $1)/
}

# home config files
copy .zshrc
copy .tmux.conf
copy .aliases
copy .xsession
copy .Xresources

copy_dir Xresources-themes
copy_dir .config/nvim
copy_dir GNUstep
copy_dir .oh-my-zsh
