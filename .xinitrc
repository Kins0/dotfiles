#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then







    xrdb -merge $sysresources

fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then







    xrdb -merge "$userresources"

fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi


if [ -d /etc/X11/xinit/xinitrc.d ] ; then
    for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
        [ -x "$f" ] && . "$f"
    done
    unset f
fi

# Statusbar loop
#while true; do
#      xsetroot -name "$( date +"%d/%m/%+4Y %H:%M" )"
#          sleep 1s    # Update time every second
#      done &

# start some nice programs

picom -b --config ~/.config/picom.conf &
redshift -l 48.8:9.01667 -t 5500:3500 &
dunst &
udiskie &
xrandr --output DisplayPort-2 --mode 2560x1440 --pos 1920x0 --rate 165.00 --set TearFree on --output DisplayPort-1 --mode 1920x1080 --rate 239.76 --pos 0x180 --primary --set TearFree on &
feh --bg-scale --randomize ~/Pictures/Wallpapers/* &

#exec dwm
#exec awesome
exec i3
