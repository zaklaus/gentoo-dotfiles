# Window Maker default X session startup script 

PATH="$PATH:/usr/local/bin"

# If you login from xdm, uncomment this to make error messages appear
# in the console window.
#
# tail -f "/home/zak"/.xsession-errors > /dev/console &

xrdb -merge .Xresources
exec wmaker

