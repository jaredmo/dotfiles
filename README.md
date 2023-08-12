# dotfiles

Personal dotfiles.

## Neovim
- [ripgrep](https://github.com/BurntSushi/ripgrep) required for [nvim-telescope](https://github.com/nvim-telescope/telescope.nvim)
- `wl-clipboard` required for system clipboard usage on Wayland.

### Notable Keybinds
vim reminders
`C-^` - previous file

remaps  
`SPC p` - paste without copy  
`SPC y` - yank to system clipboard  
`C-[J, K]` - move lines in visual mode  
`C-[h, j, k l]` - navigate in insert mode  
`SPC s` - find and replace on current word  
`SPC bn` - next buffer  
`SPC bp` - previous buffer  
`SPC bd` - delete buffer  

undotree
`SPC u` - open undotree  

nvimtree
`SPC n` - toggle nvimtree  
`SPC e` - focus nvimtree  

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

## macOS
- Install [iTerm2](https://iterm2.com/)
- Fix Meta key    
    - Preferences > Keys > Left Option key: Esc+
- Install [gruvbox.itermcolors](https://github.com/herrbischoff/iterm2-gruvbox)
    - Profiles > Colors > Color presets
