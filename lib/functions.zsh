function zsh_stats() {
  history | awk '{print $2}' | sort | uniq -c | sort -rn | head
}

function uninstall_oh_my_zsh() {
  /bin/sh $ZSH/tools/uninstall.sh
}

function upgrade_oh_my_zsh() {
  /bin/sh $ZSH/tools/upgrade.sh
}

function take() {
  mkdir -p $1
  cd $1
}

function zsh-theme(){
  echo $ZSH/themes/$1
  source $ZSH/themes/$1
  typeset -ga chpwd_functions
  typeset -ga precmd_functions
  precmd_functions=''
}
compctl -k "(`\ls $ZSH/themes`)" zsh-theme

function zsh-plugin(){
  echo $ZSH/plugins/$1
  source $ZSH/plugins/$1/$1.plugin.zsh
}
compctl -k "(`\ls $ZSH/plugins`)" zsh-plugin
