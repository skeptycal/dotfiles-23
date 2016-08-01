xrdb ~/.Xresources
xmodmap ~/.Xmodmap
setroot ~/Pictures/background-1.jpg
# pulseaudio --start

xset r rate 200 30 &
xset +fp /usr/share/fonts/cyrillic &
urxvt &
sxhkd &
exec bspwm
