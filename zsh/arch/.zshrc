# Enable Powerlevel10k instant prompt. Should stay close to the top of $HOME/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Set theme
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme
ZSH_THEME="powerlevel10k/powerlevel10k"

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

# pipx completions
autoload -U bashcompinit
bashcompinit
eval "$(register-python-argcomplete pipx)"

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
alias ncdu="ncdu --color=off"
alias updatemirrors="sudo reflector --verbose --country 'United States' --age 12 --protocol https --sort rate --save /etc/pacman.d/mirrorlist"
alias update="yay --devel && flatpak update -y && pacdiff -o"

# Start ssh-agent
if ! pgrep -u "$USER" ssh-agent > /dev/null; then
    ssh-agent -t 1h > "$XDG_RUNTIME_DIR/ssh-agent.env"
fi
if [[ ! -f "$SSH_AUTH_SOCK" ]]; then
    source "$XDG_RUNTIME_DIR/ssh-agent.env" >/dev/null
fi

# Created by `pipx` on 2023-08-04 12:44:19
export PATH="$PATH:$HOME/.local/bin"

# To customize prompt, run `p10k configure` or edit $HOME/.p10k.zsh.
[[ ! -f $HOME/.p10k.zsh ]] || source $HOME/.p10k.zsh
