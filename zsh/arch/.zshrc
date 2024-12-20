# Enable starship
eval "$(starship init zsh)"

# Enable AUTO_CD option
setopt AUTO_CD

# Enable zsh completions
autoload -Uz compinit
compinit

# History file configuration
export HISTFILE="$HOME/.zsh_history"
export HISTSIZE=10000
export SAVEHIST=10000

# Plugins
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
bindkey '^ ' autosuggest-accept # Ctrl + Space to accept autosuggestion

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nvim'
else
  export EDITOR='nvim'
fi

# fzf integration
source /usr/share/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh

# Keybinds
bindkey '^[[1;5C' forward-word
bindkey '^[[1;5D' backward-word

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
compdef _git _git_log_prettily=git-log

alias glp="_git_log_prettily"
alias gm="git merge"
alias gp="git push"
alias gpr="git pull --rebase"
alias gpf!="git push --force"
alias gpristine="git reset --hard && git clean -dffx"
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

## Script aliases
alias mountnas="bash $HOME/Scripts/mountnas.sh"
alias unmountnas="bash $HOME/Scripts/unmountnas.sh"
alias unmountnas-lazy="bash $HOME/Scripts/unmountnaslazy.sh"
alias mountssh="bash $HOME/Scripts/mountssh.sh"
alias unmountssh="bash $HOME/Scripts/unmountssh.sh"
alias configbackup="bash $HOME/Scripts/configbackup.sh"
alias :q="exit"
alias sozsh="source $HOME/.zshrc"

# Arch aliases
alias flactest="find -name '*.flac' -exec flac -wt '{}' \;"
alias hugopost="bash $HOME/Scripts/hugopost.sh"
alias pacman-minimize-manual-ls="comm -23 <(pacman -Qqe | sort) <(pacman -Qqett | sort)"
alias pacman-orphans-ls="pacman -Qtdq"
alias pacman-orphans-rm="sudo pacman -Rns $(pacman -Qtdq)"
alias monero='monero-wallet-cli --wallet-file $HOME/Wallets/monero/mining-wallet --password $(pass show monero-mining-wallet) --log-file $HOME/Wallets/monero/monero-wallet-cli.log'
alias ncdu="ncdu --color=off"
alias updatemirrors="sudo reflector --verbose --country 'United States' --latest 100 --protocol https --sort rate --save /etc/pacman.d/mirrorlist"
alias update="yay --devel && pacdiff -o && flatpak update -y && sudo snap refresh && fwupdmgr refresh --force && fwupdmgr get-updates"

# Start ssh-agent
if ! pgrep -u "$USER" ssh-agent > /dev/null; then
    ssh-agent -t 1h > "$XDG_RUNTIME_DIR/ssh-agent.env"
fi
if [[ ! -f "$SSH_AUTH_SOCK" ]]; then
    source "$XDG_RUNTIME_DIR/ssh-agent.env" >/dev/null
fi

