# dotfiles

Personal dotfiles.

## Neovim
- [ripgrep](https://github.com/BurntSushi/ripgrep) required for [nvim-telescope](https://github.com/nvim-telescope/telescope.nvim)
- `wl-clipboard` required for system clipboard usage on Wayland.

### Notable Keybinds
Navigation  
`SPC n` - toggle nvimtree  
`SPC e` - focus nvimtree  
`SPC pf` - find files  
`SPC pb` - navigate buffers  
`SPC ps` - grep within files  
`C-p` - fuzzy search git files  
`SPC bn` - next buffer  
`SPC bp` - previous buffer  
`SPC bd` - delete buffer  

Editting  
`SPC u` - open undotree  
`SPC p` - paste without copy  
`SPC y` - yank to system clipboard  
`C-[J, K]` - move lines in visual mode  
`C-[h, j, k l]` - navigate in insert mode  
`SPC s` - find and replace on current word  

LSP  
`K` - hover  
`gd` - goto definition  
`gr` - list references  
`<F2>` - rename  
`<F3>` - code format  
`<F4>` - code action  
`gl` - display diagnostics  
`[d` - prev diagnostic  
`]d` - next diagnostic  

Harpoon  
`SPC a` - harpoon file  
`C-e` - open harpoon  
`C-h` - file 1  
`C-t` - file 2  
`C-n` - file 3  
`C-s` - file 4  

Fugitive  
`SPC gs` - open git  

## macOS
- Install [iTerm2](https://iterm2.com/)
- Fix Meta key    
    - Preferences > Keys > Left Option key: Esc+
- Install [gruvbox.itermcolors](https://github.com/herrbischoff/iterm2-gruvbox)
    - Profiles > Colors > Color presets
