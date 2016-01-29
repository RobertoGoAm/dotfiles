[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx ~/.xinitrc spectrwm

# MPD daemon start (if no other user instance exists)

[ ! -s ~/.config/mpd/pid ] && mpd
