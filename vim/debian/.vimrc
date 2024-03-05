syntax on
filetype plugin indent on
set tabstop=4 shiftwidth=4 expandtab

:set number
:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu   | endif
:  autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu                  | set nornu | endif
:augroup END

:set colorcolumn=80
:highlight ColorColumn ctermbg=darkgrey

let mapleader=" "
nnoremap <leader>v :vnew<CR>
nnoremap <leader>pf :Ex<CR>

if &diff
    colorscheme evening
endif

