call plug#begin()
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
call plug#end()
set nu
let mapleader = ','
nnoremap <leader>ev :edit ~/.vimrc<cr>
set cursorline

