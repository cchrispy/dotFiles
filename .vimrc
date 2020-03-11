call plug#begin('~/.vim/plugged')

" NerdTree
Plug 'preservim/nerdtree'

" Python
Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }

" Syntax checking
Plug 'scrooloose/syntastic'

" " Color scheme
Plug 'morhetz/gruvbox'

call plug#end()

" Use Ctrl+n to toggle NERDTree
map <C-n> :NERDTreeToggle<CR>

" Make dotfiles visible in NERDTree
let NERDTreeShowHidden=1

" Enable syntax highlighting
" syntax enable

" Enable gruvbox colorscheme
colorscheme gruvbox
set background=dark

" Disable red line at column 80
let g:pymode_options_colorcolumn = 0

" Disable python-mode lint since syntastic is on
let g:pymode_lint_on_write = 0

" Show line number
set nu

" Show cursor position in file
set ruler

" Set tab to 4 spaces
set ts=4

" Highlight current line
set cursorline
