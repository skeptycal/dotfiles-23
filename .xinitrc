xrdb ~/.Xresources
xmodmap ~/.Xmodmap

sxhkd -c ~/sxhkdrc &
urxvt &
xset r rate 200 30 &
xset +fp /usr/share/fonts/cyrillic &
bspwm -c ~/bspwmrc &
exec conky
