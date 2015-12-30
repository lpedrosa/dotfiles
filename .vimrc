set nocompatible

filetype off
execute pathogen#infect()
filetype plugin indent on

set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

set autoindent

set noswapfile

syntax on
set background=dark
let base16colorspace=256
colorscheme base16-bespin

set wildignore+=*/tmp/*,*.so,*.swp,*.zip
" java
set wildignore+=*.class,*.jar

let g:clojure_highlight_extra_defs = [
    \ 'defproject'
    \ ]

let g:rainbow_active = 1

augroup ft_clojure
    au!
    au FileType clojure set number
    au FileType clojure nnoremap <buffer> <localleader>r :Require<cr>
augroup END

" edit vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
