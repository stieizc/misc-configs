urxvtd -q -o -f &&

#export LC_CTYPE=zh_CN.UTF-8 &&
export GTK_IM_MODULE="fcitx"
export QT_IM_MODULE="fcitx"
export XMODIFIERS="@im=fcitx"

#scim -d &
[ -f ~/.xprofile ] && . ~/.xprofile
~/.local/bin/rand_bg
volumeicon &
eval `ssh-agent`

if [ -f /etc/os-release ] && grep -q "debian" /etc/os-release
then
    fbautostart
else
    dex -a
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
