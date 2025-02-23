# Start sway
if [ -z "$WAYLAND_DISPLAY" ] && [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -eq 1 ] ; then
    export GTK_THEME=Breeze-Dark
    export QT_QPA_PLATFORMTHEME=qt5ct
    exec sway
fi

