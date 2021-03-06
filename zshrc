#set -x
# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#export ZSH_THEME="robbyrussell"
# export ZSH_THEME="nicoulaj"
export ZSH_THEME="locojay"
#export ZSH_THEME="sorin"
#MODE_INDICATOR="%{$fg_bold[cyan]%}-- CMD MODE -- $R"
# Set to this to use case-sensitive completion
# export CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
export DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# export DISABLE_COLOR="true"

# Uncomment following line if you want to disable autosetting terminal title.
export DISABLE_AUTO_TITLE="true"

source ~/.profile

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git git-flow brew vi-mode pip osx syntax-highlighting extract autojump virtualenvwrapper
source-highlight fabric vagrant nyan vundle lein rbenv)
#plugins=(git git-flow gem brew vi-mode pip osx syntax-highlighting extract autojump source-highlight fabric vagrant)
compctl -g '~/.teamocil/*(:t:r)' teamocil

source $ZSH/oh-my-zsh.sh
# Customize to your needs...
export PATH=$HOME/.bin:$PATH
export PATH=$HOME/bin:$PATH
export IPYTHONDIR=$HOME/.ipython

#Group matches and Describe
zstyle ':completion:*:matches' group 'yes'
zstyle ':completion:*:options' description 'yes'
zstyle ':completion:*:options' auto-description '%d'
zstyle ':completion:*:descriptions' format $'\e[01;33m -- %d --\e[0m'
zstyle ':completion:*:messages' format $'\e[01;35m -- %d --\e[0m'
zstyle ':completion:*:warnings' format $'\e[01;31m -- No Matches Found --\e[0m'

