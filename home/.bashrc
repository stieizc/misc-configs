# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

if [ -d ~/.profile.d ]
then
    for profile in ~/.profile.d/*.sh
    do
        [ -x $profile ] && . $profile
    done
fi

#export PATH=$HOME/.local/bin:$PATH
#export PATH=$HOME/.local/bin:$HOME/.local/smlnj/bin:$HOME/bin:$PATH
#export PATH=$HOME/.local/bin:$HOME/bin:$PATH
#export PATH=$HOME/bin:$PATH
#export RI="-f ansi"
#export LESS="-R"


# for rails
#alias data_pop='rake db:reset && rake db:populate && rake test:prepare'

#[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

#PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
