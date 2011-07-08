if [[ "$(uname)" = "Darwin" ]] ; then
    if [ -f `brew --prefix`/etc/autojump ]; then
        . `brew --prefix`/etc/autojump
    fi
elif [[ "$(uname)" = "Linux" ]] ; then
    source /etc/profile.d/autojump.zsh
fi
