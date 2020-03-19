call plug#begin('~/.vim/plugged')

" NerdTree
Plug 'preservim/nerdtree', { 'on':  'NERDTreeToggle' }

" Enable FZF in Vim
Plug 'junegunn/fzf', { 'do': './install --bin' }
Plug 'junegunn/fzf.vim'

" Python
Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }

" Syntax checking
Plug 'scrooloose/syntastic'

" Color scheme
Plug 'morhetz/gruvbox'

" Status line
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Comment lines
Plug 'preservim/nerdcommenter'

" Surround pairs
Plug 'tpope/vim-surround'

call plug#end()

" Set leader key to spacebar
let mapleader="\<Space>"

" FZF hot keys
nnoremap <silent> <leader>o :Files<CR>
nnoremap <silent> <leader>a :Rg<CR>
nnoremap <silent> <leader>l :Lines<CR>
nnoremap <silent> <leader>f :Buffers<CR>

" Use Ctrl+n to toggle NERDTree
map <C-n> :NERDTreeToggle<CR>

" Easy pane switching in NERDTree
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Open NERDTree when vim starts
" autocmd vimenter * NERDTree
" Refocus to the file
" autocmd VimEnter * wincmd p

" Open NERDTree on new tab
" autocmd BufWinEnter * NERDTreeMirror

" Close NERDTree when it's the last window
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Make dotfiles visible in NERDTree
let NERDTreeShowHidden=1

" Enable syntax highlighting
" syntax enable

" Enable gruvbox colorscheme
colorscheme gruvbox
set background=dark

" Set airline theme
let g:airline_theme='solarized'
let g:airline_solarized_bg='dark'

" Align comments flush left
let g:NERDDefaultAlign = 'left'

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

" Allow mouse usage
" To c/p, use alt-click
set mouse=a

" Scroll 3 lines at a time
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>

" Better searches
set hlsearch
set incsearch
set ignorecase
set smartcase
nnoremap <CR> :nohlsearch<cr>
