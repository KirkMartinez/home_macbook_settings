" Detect file type
filetype plugin indent on
syntax on

set autoindent  " Just what you think"
set ruler       " Show row/col location in lower right of status bar"
set number      " Show line numbers along the left edge "
set hidden      " Allows changing buffers without saving, always do :wa to save! "
set autochdir   " Makes cwd same as current file location "
set showbreak=↪ " Make it clear when a line continues"
set background=dark     " Ensures syntax coloring looks good "
set backspace=indent,eol,start  " Allow backspacing over autoindents, line breaks "

set paste "Allows cut/paste without adding extra tabs "

set tabstop=4
set shiftwidth=4
set expandtab

autocmd FileType * setl ts=4 sw=4 sts=4 et ai noci nosi sta
autocmd FileType xml setl ts=2 sw=2 sts=2 et ai noci nosi sta

autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
autocmd BufWritePre *.py normal m`:%s/\s\+$//e ``

" Makefiles: no spaces: TABs instead"
autocmd FileType make setl noexpandtab

" Reload vimrc on change
augroup reload_vimrc " {
    autocmd!
    autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END " }"

