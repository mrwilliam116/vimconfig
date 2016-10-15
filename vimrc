" Vim defaults
set nocompatible

set exrc
set secure

filetype indent plugin on

" Set spacing to 4 spaces instead of 8
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" Auto indent the code
set autoindent
set smartindent

" Display line numbers
set number
highlight LineNr ctermfg=grey

" highlight Normal ctermbg=black

set colorcolumn=80

set bg=dark

" Jump to the last position when reopening a file
if has("autocmd")
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

if &t_Co > 2 || has("gui_running")
    syntax on
    set hlsearch
endif
