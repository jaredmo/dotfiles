# Start sway
if [[ -z "$WAYLAND_DISPLAY" && -n "$XDG_VTNR" && "$XDG_VTNR" -eq 1 ]]; then
    export GTK_THEME=Breeze-Dark
    export QT_QPA_PLATFORMTHEME=qt5ct

    if [[ -n "$DBUS_SESSION_BUS_ADDRESS" ]]; then
        cur_scheme=$(gsettings get org.gnome.desktop.interface color-scheme)

        if [[ "$cur_scheme" != "'prefer-dark'" ]]; then
            gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
        fi
    fi

    exec sway
fi

