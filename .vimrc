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

" Easy pane switching in NERDTree
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Open NERDTree when vim starts
autocmd vimenter * NERDTree

" Close NERDTree when it's the last window
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

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

" Synastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_python_exec = 'python3'
let g:syntastic_python_checkers = ['python']

" Show line number
set nu

" Show cursor position in file
set ruler

" Set tab to 4 spaces
set ts=4

" Highlight current line
set cursorline

" Better searches
set hlsearch
set incsearch
set ignorecase
set smartcase
nnoremap <CR> :nohlsearch<cr>
