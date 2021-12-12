#exec dbus-launch --sh-syntax --exit-with-session openbox-session

exec slstatus &
sh $HOME/.fehbg
exec vm-user-usid-wrapper &

exec dbus-launch --sh-syntax --exit-with-session dwm

