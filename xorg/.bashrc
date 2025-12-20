# This is terrible, but it works
. "$HOME"/.config/bash/profile
. "$HOME"/.config/bash/interactive
if test -z "$DISPLAY" && test "$XDG_VTNR" -eq 1; then
    exec startx
fi
