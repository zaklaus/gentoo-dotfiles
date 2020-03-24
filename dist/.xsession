# Window Maker default X session startup script 

PATH="$PATH:/usr/local/bin:$HOME/bin"

killall xconsole
[ -x /usr/local/bin/VBoxClient-all ] && /usr/local/bin/VBoxClient-all
xrdb -merge .Xresources

[ -x $HOME/suckless/package.sh ] && $HOME/suckless/package.sh deploy

exec slstatus &
sh $HOME/.fehbg
#exec compton &
exec dwm

