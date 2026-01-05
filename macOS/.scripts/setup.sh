#!/bin/bash

# Include homebrew and packages
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" && \
brew install bat exiftool fd ffmpeg font-jetbrains-mono-nerd-font fzf git go gpgme htop jq luarocks neovim nmap node openssh pinentry-mac ranger ripgrep starship stow tmux wget virtualenv ykman && \

# Install oh-my-zsh and plugins
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" && \
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions && \ #https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md#oh-my-zsh
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting && \ #https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md#oh-my-zsh

# Clone dotfiles
git clone https://github.com/jaredmo/dotfiles.git ~/.dotfiles && \
stow -t ~ macOS && \
stow -t ~ neovim
