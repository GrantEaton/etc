set nu
filetype plugin indent on
syntax on
set clipboard=unnamed          " make copy and paste go to vim clipboard"
set backspace=indent,eol,start " backspace over everything in insert mode"
filetype plugin on
let mapleader = ','
noremap <leader>ev :edit ~/.vimrc<cr>
:command! -bar -bang Q quit<bang>   "map Q to quit also"
command! Wq wq
set cursorline
set nowrap                         " wrap long lines "
set autoindent                     " indent at the same level of the previous line"
set shiftwidth=4                   " use indents of 4 spaces"
set tabstop=4                      " an indentation every four columns"
set softtabstop=4                  " let backspace delete indent"
set pastetoggle=<F12>              " pastetoggle (sane indentation on pastes)"
set comments=sl:/\*,mb:\*,elx:\*/  " auto format comment blocks" 
set shell=/bin/bash\ -i
map <space> viw
map - ddp
:imap uu <Esc>


let $BASH_ENV = $HOME . "/.bashvimrc." . getpid()
au VimLeave * silent !exec rm -f "$BASH_ENV"
silent !echo 'vim_setup() { shopt -s expand_aliases; trap write_aliases EXIT; eval "$@"; }; write_aliases() { typeset -f vim_setup write_aliases; alias; echo vim_setup \"\$@\";} > "$BASH_ENV"; vim_setup "$@"' > "$BASH_ENV"
set shell=/bin/bash
