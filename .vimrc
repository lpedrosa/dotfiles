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

if filereadable(expand("~/.vimrc_background"))
    let base16colorspace=256
    source ~/.vimrc_background
endif

set wildignore+=*/tmp/*,*.so,*.swp,*.zip
" java
set wildignore+=*.class,*.jar
" sbt
set wildignore+=*/target/*

" clojure

let g:clojure_highlight_extra_defs = [
    \ 'defproject'
    \ ]

let g:rainbow_active = 1

augroup ft_clojure
    au!
    au FileType clojure set number
    au FileType clojure nnoremap <buffer> <localleader>r :Require<cr>
augroup END

" python

augroup ft_python
    au!
    au FileType python set number
    au FileType python set textwidth=79
    au FileType python set colorcolumn=80
augroup END

" edit vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" navigate quickfix
nnoremap <silent> <leader>] :cnext<CR>
nnoremap <silent> <leader>[ :cprevious<CR>
