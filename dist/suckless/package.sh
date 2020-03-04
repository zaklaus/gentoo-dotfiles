#!/usr/local/bin/bash

cd $HOME/suckless/

mkdir -p $HOME/suckless/deploy/

build() {
	# dwm
	echo "Packaging dwm..."
	cd dwm
	gmake clean all
	cp dwm $HOME/suckless/deploy/
	cd ..
	
	# dmenu
	echo "Packaging dmenu..."
	cd dmenu
	gmake clean all
	cp dmenu dmenu_run dmenu_path stest $HOME/suckless/deploy/
	cd ..
	
	# st
	echo "Packaging st..."
	cd st
	gmake clean all
	cp st $HOME/suckless/deploy/
	cd ..
	
	# slstatus
	echo "Packaging slstatus..."
	cd slstatus
	gmake clean all
	cp slstatus $HOME/suckless/deploy/
	cd ..
}

deploy() {
    echo "Deploying suckless software..."
    cp -f $HOME/suckless/deploy/* $HOME/bin/
}

case "$1" in 
    build)
        build
        ;;
    deploy)
        deploy
        ;;
    *)
        build && deploy
esac


echo "Done!"

