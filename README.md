# dotfiles

Personal dotfiles for [stow](https://www.gnu.org/software/stow/).

## Neovim
- [ripgrep](https://github.com/BurntSushi/ripgrep) required for [nvim-telescope](https://github.com/nvim-telescope/telescope.nvim)
- `wl-clipboard` required for system clipboard usage on [Wayland](https://en.wikipedia.org/wiki/Wayland_(protocol)).

### Keybinds

#### Shortcuts  
`C-^` - previous file  
`SPC p` - paste without copy  
`SPC y` - yank to system clipboard  
`C-[J, K]` - move lines in visual mode  
`C-[h, j, k l]` - navigate in insert mode  
`SPC s` - find and replace on current word  

#### [comment.nvim](https://github.com/numToStr/Comment.nvim)  
- Visual mode  
`gc` - Toggles the region using linewise comment  
`gb` - Toggles the region using blockwise comment  

- Normal mode
`gcc` - Toggles the current line using linewise comment  
`gbc` - Toggles the current line using blockwise comment  
`[count]gcc` - Toggles the number of line given as a prefix-count using linewise  
`[count]gbc` - Toggles the number of line given as a prefix-count using blockwise  
`gc[count]{motion}` - (Op-pending) Toggles the region using linewise comment  
`gb[count]{motion}` - (Op-pending) Toggles the region using blockwise comment  

#### [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
`]c` - next hunk  
`[c` - previous hunk  
`SPC gr` - reset hunk  
`SPC gs` - stage hunk  
`SPC gS` - stage buffer  
`SPC gu` - undo stage hunk  
`SPC gR` - reset buffer  
`SPC gp` - preview hunk  
`SPC gb` - blame line  
`SPC gd` - diff against index  
`SPC gD` - diff against last commit  
`SPC gtb` - toggle git blame line  
`SPC gtd` - toggle git show deleted  
`SPC gv` - select hunk  

#### [lsp-zero.nvim](https://github.com/VonHeikemen/lsp-zero.nvim)  
`K` - hover  
`gd` - goto definition  
`gr` - list references  
`<F2>` - rename  
`<F3>` - code format  
`<F4>` - code action  
`gl` - display diagnostics  
`[d` - prev diagnostic  
`]d` - next diagnostic  

#### [L3MON4D3/LuaSnip](https://github.com/L3MON4D3/LuaSnip)
`C-f` - jump forward in snippet  
`C-b` - jump backward in snippet  
`Tab` - confirm selection  

#### [nvimtree.lua](https://github.com/nvim-tree/nvim-tree.lua)  
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

#### [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)  
`SPC pf` - find files  
`SPC pb` - navigate buffers  
`SPC ps` - grep within files  

#### [undotree](https://github.com/mbbill/undotree)  
`SPC u` - open undotree  

#### [vim-fugitive](https://github.com/tpope/vim-fugitive)  
`SPC gf` - open git  
`s` - stage file under cursor  
`u` - unstage file under cursor  
`-` - stage/unstage toggle  
`U` - unstage all  
`=` - toggle inline diff  
`I` - stage interactively  
`czz` - push stash  
`cc` - create commit

## tmux

### Keybinds
`M-[h, j, k, l]` - switch panes  
`M-[H, J, K, L]` - resize panes  
`M-[Pageup, Pagedown]` - switch windows  

## radio-cli
My stations for [radio-cli](https://github.com/margual56/radio-cli)

## macOS
- Install [iTerm2](https://iterm2.com/)
- Fix Meta key    
    - Preferences > Keys > Left Option key: Esc+
- Install [gruvbox.itermcolors](https://github.com/herrbischoff/iterm2-gruvbox)
    - Profiles > Colors > Color presets
