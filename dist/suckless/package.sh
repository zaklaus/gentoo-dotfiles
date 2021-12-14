#!/bin/bash

cd $HOME/suckless/

mkdir -p $HOME/suckless/deploy/

build_module() {
    echo "Packaging $1..."
    cd $1
    make clean install
    cd ..
}

build() {
	rm $HOME/suckless/deploy/*

    build_module dwm
    build_module dmenu
    build_module st
    build_module slstatus
    build_module farbfeld
    build_module sent
    build_module tabbed
    build_module smu 
}

deploy() {
    echo "Deploying suckless software..."
    cp -rf $HOME/suckless/deploy/* $HOME/bin/
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

