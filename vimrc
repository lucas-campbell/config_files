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
set background=dark
"set background=light
colorscheme gruvbox
"colorscheme molokai
"colorscheme 256_jungle
"colorscheme 256-grayvim
"colorscheme molokai
"colorscheme slate
"colorscheme ir_black

" Tabs
set expandtab
set shiftwidth=4
set softtabstop=4
set autoindent
set cindent

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

"for Lightline
set laststatus=2

"Recommended settings overrides for syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" turn off linter for python by default, don't use it usually in vim
let g:syntastic_python_checkers = []
