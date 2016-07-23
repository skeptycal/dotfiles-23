xrdb ~/.Xresources
xmodmap ~/.Xmodmap
setroot ~/Pictures/background.jpg

# compton -c -o 0.25 --no-fading-openclose &
xset r rate 200 30 &
xset +fp /usr/share/fonts/cyrillic &
urxvt &
sxhkd &
exec bspwm
