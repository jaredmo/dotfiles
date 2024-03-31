mkdir -p $HOME/.config/alacritty
ln -sf $HOME/Projects/dotfiles/alacritty/arch/alacritty.toml $HOME/.config/alacritty/
#ln -sf $HOME/Projects/dotfiles/konsole/GruvboxDark.colorscheme /usr/share/konsole/
ln -sf $HOME/Projects/dotfiles/nvim $HOME/.config
ln -sf $HOME/Projects/dotfiles/radio-cli $HOME/.config
sudo ln -sf $HOME/Projects/dotfiles/systemd/unmountnas.service /etc/systemd/system/
ln -sf $HOME/Projects/dotfiles/tmux/alacritty/wayland/.tmux.conf $HOME/
ln -sf $HOME/Projects/dotfiles/vim/arch/.vimrc $HOME/
ln -sf $HOME/Projects/dotfiles/zsh/arch/.zshrc $HOME/

