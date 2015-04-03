if [ -f /etc/os-release ] && grep -q "debian" /etc/os-release
then
    DEBEMAIL="stieizc.33@gmail.com"
    DEBFULLNAME="Charlie Brown"
    export DEBEMAIL DEBFULLNAME

    alias dquilt="quilt --quiltrc=${HOME}/.quiltrc-dpkg"
    complete -F _quilt_completion $_quilt_complete_opt dquilt

    export LOCAL_REPO="/var/local/myrepo"
    alias mrepo="reprepro -b $LOCAL_REPO" 
    complete -o filenames -F _reprepro mrepo
fi
