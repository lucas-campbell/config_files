"Pathogen
execute pathogen#infect()

"NERDTree
"start automatically if no files specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
"start automatically on opening a directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
" mapping
map <C-n> :NERDTreeToggle<CR>

" Colors
set t_Co=256
"set background=dark
"set background=light
"colorscheme gruvbox
"colorscheme molokai
"colorscheme 256_jungle
colorscheme 256-grayvim
"colorscheme ir_black

" Tabs
set expandtab
set shiftwidth=4
set softtabstop=4
set autoindent
set smartindent

"Etc
syntax on
filetype plugin indent on

" Search
set hlsearch
set ignorecase
set smartcase

" Key bindings
inoremap jk <ESC>
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"Automatic word wrap
"set tw=79

"Visuals
set ruler "show line num/col num in bot right
set number "line numbers
set cc=80 "show line @ col 80

set showmatch "highlight matching brackets/braces
"set showcmd "show most recent cmd in bottom right

"Split below and right instead of above and left
set splitbelow
set splitright

"Bell and Visual Bell
set visualbell
set t_vb=

"Mouse
set mouse=a

