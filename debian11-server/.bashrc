# ~/.bashrc: executed by bash(1) for non-login shells.

# Colors
PS1="\[\e[1;32m\]\u@\h \[\e[1;34m\]\w\[\e[0m\] $ "

# fzf integration
source /usr/share/doc/fzf/examples/key-bindings.bash

# Aliases
alias g="git"
alias ga="git add"
alias gaa="git add --all"
alias gapa="git add --patch"
alias gbl="git blame -l"
alias gb="git branch"
alias gbd="git branch -d"
alias gbD="git branch -D"
alias gco="git checkout"
alias gcb="git checkout -b"
alias gcl="git clone --recurse-submodules"
alias gc="git commit -v"
alias gc!="git commit -v --amend"
alias gcam="git commit -a -m"
alias gd="git diff"
alias gdca="git diff --cached"
alias gf="git fetch"
alias gfa="git fetch --all --prune"
alias gg="git gui citool"
alias gl="git pull"
alias glg='git log --stat'
alias glgp="git log --stat --patch"
alias glog="git log --oneline --decorate --graph"

# Pretty log messages
function _git_log_prettily(){
  if ! [ -z $1 ]; then
    git log --pretty=$1
  fi
}

alias glp="_git_log_prettily"
alias gm="git merge"
alias gp="git push"
alias gpr="git pull --rebase"
alias gpf!="git push --force"
alias gpristine="git reset --hard && git clean -dffx"
alias gr!="git reset --hard"
alias grbi="git rebase -i"
alias grst="git restore --staged"
alias gup="git pull --rebase"
alias gupv="git pull --rebase -v"
alias gupa="git pull --rebase --autostash"
alias gupav="git pull --rebase --autostash -v"
alias gst="git status"
alias gsb="git status -sb"
alias gwch="git whatchanged -p --abbrev-commit --pretty=medium"
alias l="ls -lah --color"
alias ll="ls -lh --color"

if [ -f /usr/share/bash-completion/completions/systemctl ]; then
  source /usr/share/bash-completion/completions/systemctl
  complete -F _systemctl sctl
  alias sctl="systemctl"
fi

alias :q="exit"
alias update="sudo apt update"
alias upgrade="sudo apt update && sudo apt upgrade -y"

