# dotfiles

Personal dotfiles.

## Neovim
- [ripgrep](https://github.com/BurntSushi/ripgrep) required for [nvim-telescope](https://github.com/nvim-telescope/telescope.nvim)
- `wl-clipboard` required for system clipboard usage on Wayland.

### Notable Keybinds
vim  
`C-^` - previous file

remaps  
`SPC p` - paste without copy  
`SPC y` - yank to system clipboard  
`C-[J, K]` - move lines in visual mode  
`C-[h, j, k l]` - navigate in insert mode  
`SPC s` - find and replace on current word  

undotree  
`SPC u` - open undotree  

nvimtree  
`SPC n` - toggle nvimtree  
`SPC e` - focus nvimtree  
`C-]` - cd  
`-` - up  
`c` - create  
`d` - delete  
`E` - expand all  
`W` - collapse all  
`H` - toggle filter dotfiles  
`I` - toggle filter gitignore  

telescope  
`SPC pf` - find files  
`SPC pb` - navigate buffers  
`C-p` - fuzzy search git files  
`SPC ps` - grep within files  

lsp-zero  
`K` - hover  
`gd` - goto definition  
`gr` - list references  
`<F2>` - rename  
`<F3>` - code format  
`<F4>` - code action  
`gl` - display diagnostics  
`[d` - prev diagnostic  
`]d` - next diagnostic  

harpoon  
`SPC a` - harpoon file  
`C-e` - open harpoon  
`C-h` - file 1  
`C-t` - file 2  
`C-n` - file 3  
`C-s` - file 4  

fugitive  
`SPC gs` - open git  
`s` - stage file under cursor  
`u` - unstage file under cursor  
`-` - stage/unstage toggle  
`U` - unstage all  
`=` - toggle inline diff  
`I` - stage interactively  
`czz` - push stash  
`cc` - create commit

## tmux

### Notable Keybinds
`M-[h, j, k, l]` - switch panes  
`M-[H, J, K, L]` - resize panes  
`M-[Pageup, Pagedown]` - switch windows  

## macOS
- Install [iTerm2](https://iterm2.com/)
- Fix Meta key    
    - Preferences > Keys > Left Option key: Esc+
- Install [gruvbox.itermcolors](https://github.com/herrbischoff/iterm2-gruvbox)
    - Profiles > Colors > Color presets
