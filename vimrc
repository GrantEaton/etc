set nu
let mapleader = ','
noremap <leader>ev :edit ~/.vimrc<cr>
:command! -bar -bang Q quit<bang>   "map Q to quit also"
set cursorline
set nowrap                         " wrap long lines "
set autoindent                     " indent at the same level of the previous line"
set shiftwidth=4                   " use indents of 4 spaces"
set tabstop=4                      " an indentation every four columns"
set softtabstop=4                  " let backspace delete indent"
set pastetoggle=<F12>              " pastetoggle (sane indentation on pastes)"
set comments=sl:/\*,mb:\*,elx:\*/  " auto format comment blocks" 
map <space> viw
map - ddp
