#!/bin/sh
#
# ██╗  ██╗██╗███╗   ██╗██╗████████╗██████╗  ██████╗
# ╚██╗██╔╝██║████╗  ██║██║╚══██╔══╝██╔══██╗██╔════╝
#  ╚███╔╝ ██║██╔██╗ ██║██║   ██║   ██████╔╝██║
#  ██╔██╗ ██║██║╚██╗██║██║   ██║   ██╔══██╗██║
# ██╔╝ ██╗██║██║ ╚████║██║   ██║   ██║  ██║╚██████╗
# ╚═╝  ╚═╝╚═╝╚═╝  ╚═══╝╚═╝   ╚═╝   ╚═╝  ╚═╝ ╚═════╝
#
# Xinit Config File by Arfan Zubi

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

intern=eDP1
extern=HDMI2

# Merge in Defaults and Keymaps

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

# Toggle external monitor
if xrandr | grep "$extern disconnected"; then
	xrandr --output "$intern" --auto --output "$extern" --off
else
	xrandr --output "$intern" --primary --auto --output "$extern" --auto --above "$intern"
fi

# Keyboard settings
setxkbmap -model asus_laptop -layout ch,us

# Start i3 Window Manager when starting X Server
exec i3
