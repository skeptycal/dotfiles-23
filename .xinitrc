xrdb ~/.Xresources
xmodmap ~/.Xmodmap
setroot ~/Pictures/background.jpg
# pulseaudio --start

xset r rate 200 30 &
xset +fp /usr/share/fonts/cyrillic &
urxvt &
sxhkd &
exec bspwm
