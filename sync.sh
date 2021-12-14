#!/bin/sh

# Copies various config files and folders to the repository

REPO=$(cd `dirname $0` && pwd)/dist
cd $HOME

mkdir -p $REPO

echo "Repo location: $REPO"
echo "Source location: $HOME"

copy() {
	echo "Copying $1 into $REPO/$1..."
	cp $1 $REPO/$1
}

copy_files() {
	echo "Copying files $1 into $REPO/..."
	cp -rf $1 $REPO/
}

copy_dir() {
	echo "Copying folder $1 into $REPO/$1 ..."
	mkdir -p $REPO/$1
	rsync -r --exclude=.git $1 $REPO/$(dirname $1)/
}

# home config files
copy .bashrc
copy .tmux.conf
copy .xinitrc
copy .aliases
copy .Xresources
copy .fehbg
copy swap_kbd.sh
copy full_upgrade.sh
copy wallpaper.jpg
copy_files "*.Xresources"

copy_dir .config/nvim
copy_dir suckless


