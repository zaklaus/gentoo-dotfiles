#!/bin/sh

cd $HOME/suckless/

# dwm
echo "Packaging dwm..."
cd dwm
gmake clean all
cp dwm $HOME/bin/
cd ..

# dmenu
echo "Packaging dmenu..."
cd dmenu
gmake clean all
cp dmenu dmenu_run dmenu_path stest $HOME/bin/
cd ..

# st
echo "Packaging st..."
cd st
gmake clean all
cp st $HOME/bin/
cd ..

echo "Done!"
