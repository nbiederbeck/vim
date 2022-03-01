" keys
inoremap jk <ESC>
nnoremap <C-J> <C-W>j
nnoremap <C-H> <C-W>h
nnoremap <C-K> <C-W>k
nnoremap <C-L> <C-W>l

" ui
set number
set relativenumber
set splitbelow
set splitright

" ui.syntax
syntax enable
filetype plugin indent on
color delek

" ui.hidden_symbols
set list
set listchars=tab:>-
hi SpecialKey ctermfg=0
hi NonText ctermfg=0

" indentation
set shiftwidth=4
set tabstop=4
set softtabstop=4
set autoindent
set expandtab

" searching
set hlsearch
set incsearch
set ignorecase
set smartcase

" statusline
set laststatus=2

" autoformat
augroup autoformat
	au BufWritePre  *.py set autoread
	au BufWritePost *.py silent !black <afile> --quiet
	au BufWritePost *.py e <afile>
	au BufWritePost *.py set noautoread
	au BufWritePost *.py syntax on
augroup end
