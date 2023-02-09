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

" ui.hidden_symbols
set list
set listchars=tab:>-

" ui.syntax
syntax enable
filetype plugin indent on
set background=light
hi SpecialKey ctermfg=0
hi Nontext ctermfg=0

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

" ui.color
if !filereadable(expand('~/.vim/colors/nord.vim'))
    silent execute '!curl -s https://raw.githubusercontent.com/arcticicestudio/nord-vim/main/colors/nord.vim -o ~/.vim/colors/nord.vim --create-dirs'
endif
colorscheme nord
