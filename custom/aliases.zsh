# The 'ls' family
# ------------------------------------------------------------------------------
alias la='ls -Ahl'           # show hidden files
alias lx='ls -lhXB'          # sort by extension
alias lk='ls -lhSr'          # sort by size, biggest last
alias lc='ls -lhtcr'         # sort by and show change time, most recent last
alias lu='ls -lhtur'         # sort by and show access time, most recent last
alias lt='ls -lhtr'          # sort by date, most recent last
alias lm='ls -ahl | more'    # pipe through 'more'
alias lr='ls -lhR'           # recursive ls
alias l='ls -lha'
alias ll='ls -lh'

# General
# ------------------------------------------------------------------------------
alias rm='nocorrect rm -i'
alias cp='nocorrect cp -i'
alias mv='nocorrect mv -i'
alias ln='nocorrect ln -i'
alias mkdir='nocorrect mkdir -p'
#alias t="$HOME/.local/bin/t --task-dir ~/.tasks --list todo.txt --delete-if-empty"


alias zs='source ~/.zshrc'

if [[ -x "${commands[htop]}" ]]; then
  alias top=htop
else
  alias topm='top -o vsize'
  alias topc='top -o cpu'
fi


# TMUX
# ------------------------------------------------------------------------------
#[[ "$TERM" == 'xterm-color' && -e "$HOME/.tmux.conf" ]] && tmuxconf="-f '$HOME/.tmux.conf'"
#[[ "$TERM" == 'xterm-256color' && -e "$HOME/.tmux256.conf" ]] && tmuxconf="-f '$HOME/.tmux256.conf'"
#alias tmux="tmux $tmuxconf"
alias tls="tmux list-sessions"
alias ta="tmux attach -t"

alias pjson="python -m json.tool"
#alias ipython="ipython --editor vim"

alias iconvutf8="iconv -f ISO8859-1 -t UTF-8"

alias glpp="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative"

alias gsubu="git submodule foreach git checkout master && git submodule foreach git pull"

export CORRECT_IGNORE=node

alias pyclean='find . -type f -name "*.py[co]" -exec rm -f \{\} \;'

alias mongo='rlwrap -a dummy mongo'
alias clj='rlwrap -a dummy clj'
alias cdp='cd $PROJECT_HOME'
