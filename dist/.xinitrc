#exec dbus-launch --sh-syntax --exit-with-session openbox-session

exec slstatus &
sh $HOME/.fehbg
exec vm-user-suid-wrapper &
sh $HOME/swap_kbd.sh
exec dbus-launch --sh-syntax --exit-with-session dwm

