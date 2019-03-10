if [ -n "$DESKTOP_SESSION" ];then
    eval $(gnome-keyring-daemon --start --components=pkcs11,secrets)
fi
