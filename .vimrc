" Show line number
set nu

" Show cursor position in file
set ruler

" Set tab to 4 spaces
set ts=4

" Scroll 3 lines at a time
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>

" Show matching brackets
" set showmatch

" Enable syntax highlighting
syntax enable

" Use spaces instead of tabs
set expandtab
set smarttab

" 1 tab = 4 spaces
set shiftwidth=4
set tabstop=4

" Auto/smart indent
set ai
set si

" Better searches
set hlsearch
set incsearch
set ignorecase
set smartcase

" Hit Enter to unhighlight
nnoremap <CR> :nohlsearch<cr>

" Visual mode pressing * or # searches for the current selection
vnoremap <silent> * :<C-u>call VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>
vnoremap <silent> # :<C-u>call VisualSelection('', '')<CR>?<C-R>=@/<CR><CR>

" Always show status line
set laststatus=2

" Format the status line
set statusline=\ %F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c

" Reference
" https://github.com/amix/vimrc/blob/master/vimrcs/basic.vim
