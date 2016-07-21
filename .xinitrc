xrdb ~/.Xresources
xmodmap ~/.Xmodmap

sxhkd -c ~/sxhkdrc &
conky &
urxvt &
xset r rate 200 30 &
xset +fp /usr/share/fonts/cyrillic &
exec bspwm -c ~/bspwmrc
