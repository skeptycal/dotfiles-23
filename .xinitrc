xrdb ~/.Xresources
xmodmap ~/.Xmodmap

urxvt &
xset r rate 200 30 &
xset +fp /usr/share/fonts/cyrillic &
conky &
sxhkd &
exec bspwm
