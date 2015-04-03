urxvtd -q -o -f &&

[ -f ~/.xprofile ] && . ~/.xprofile
~/.local/bin/rand_bg
volumeicon &

if [ -f /etc/os-release ] && grep -q "debian" /etc/os-release
then
    #export LC_CTYPE=zh_CN.UTF-8 &&
    export GTK_IM_MODULE="fcitx"
    export QT_IM_MODULE="fcitx"
    export XMODIFIERS="@im=fcitx"

    #eval `ssh-agent`
    fbautostart
else
    export XMODIFIERS="@im=SCIM"
    export GTK_IM_MODULE="scim"
    export QT_IM_MODULE="scim"
    dex -a
    scim -d &

    eval $(gnome-keyring-daemon --components=pkcs11,secrets,ssh,gpg)
    export GNOME_KEYRING_PID
    export GNOME_KEYRING_SOCKET
    export SSH_AUTH_SOCK
    export GPG_AGENT_INFO
fi

xmodmap ~/.xmodmaprc
exec i3 -V >> ~/.i3/i3log 2>&1

#DEFAULT_SESSION='i3 -V >> ~/.i3/i3log 2>&1'

#case $1 in
#i3)
#    exec i3 -V >> ~/.i3/i3log 2>&1
#    ;;
#openbox)
#    exec openbox-session
#    ;;
#*)
#    exec $DEFAULT_SESSION
#    ;;
#esac
