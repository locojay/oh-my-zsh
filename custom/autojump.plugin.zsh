if [[ "$(uname)" = "Darwin" ]] ; then
    if [ -f `/usr/local/bin/brew --prefix`/etc/autojump ]; then
        . `/usr/local/bin/brew --prefix`/etc/autojump
    fi
elif [[ "$(uname)" = "Linux" ]] ; then
    source /etc/profile.d/autojump.zsh
fi
