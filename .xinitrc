#!/bin/sh
#
# June 9, 2022
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

# Include defaults
if [ -d /etc/X11/xinit/xinitrc.d ] ; then
    for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
        [ -x "$f" ] && . "$f"
    done
    unset f
fi

# include user local
userresources=$HOME/.config/xinit/xresources
usermodmap=$HOME/.config/xinit/xmodmap

if [ -f $userresources ]; then
    xrdb -merge $userresources
fi

if [ -f $usermodmap ]; then
    xmodmap $usermodmap
fi

exec i3 -c ~/.config/i3/configs/index
