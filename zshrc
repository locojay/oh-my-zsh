# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#export ZSH_THEME="robbyrussell"
export ZSH_THEME="nicoulaj"
#MODE_INDICATOR="%{$fg_bold[cyan]%}-- CMD MODE -- $R"
# Set to this to use case-sensitive completion
# export CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
export DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# export DISABLE_COLOR="true"

# Uncomment following line if you want to disable autosetting terminal title.
export DISABLE_AUTO_TITLE="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
#plugins=(git vi-mode brew autojump osx source-highlight virtualenvwrapper fabric extract)
plugins=(git git-flow gem brew vi-mode pip osx syntax-highlighting extract autojump virtualenvwrapper source-highlight fabric vagrant)

source $ZSH/oh-my-zsh.sh
# Customize to your needs...
export PATH=$HOME/.bin:$PATH
export PATH=$HOME/bin:$PATH
export PATH=/usr/local/Cellar/ruby/1.9.2-p290/bin:$PATH
export IPYTHONDIR=$HOME/.ipython
source ~/.profile
#source ~/.rvm/scripts/rvm

#Group matches and Describe
zstyle ':completion:*:matches' group 'yes'
zstyle ':completion:*:options' description 'yes'
zstyle ':completion:*:options' auto-description '%d'
zstyle ':completion:*:descriptions' format $'\e[01;33m -- %d --\e[0m'
zstyle ':completion:*:messages' format $'\e[01;35m -- %d --\e[0m'
zstyle ':completion:*:warnings' format $'\e[01;31m -- No Matches Found --\e[0m'
#if [[ -z "$TMUX" ]]; then
    #tmux attach
#fi

