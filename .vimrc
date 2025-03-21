"" Appearance
"colorscheme mycolorscheme
colorscheme 256_noir

" Enable syntax highlighting
syntax on

" Show line numbers on the left
set number

" Show at minimum 10 lines under the cursor
set scrolloff=10

" Allow text to wrap
set wrap

" Show the ruler (cursor position at the bottom left)
set ruler

" Custom status Bar
set statusline =%1*\ %n\ %*     " Buffer number
set statusline +=%4*\ %<%F%*    " Full path
set statusline +=%2*%m%*        " Modified flag
set statusline +=%1*%=%5l%*     " Current line
set statusline +=%2*/%L%*       " Total lines
set statusline +=%1*%4v\ %*     " Virtual column number
set statusline +=%2*0x%02B\ %*  " ASCII code of char under cursor

" Ruler at 120 characters, with the theme this is a black bar
set textwidth=120
set wrapmargin=0
set formatoptions+=t
set colorcolumn=+1

"" Misc
" Disable vi compatibility, causes weird issues
set nocompatible

" Filetype autodetection for syntax highlighting, etc.
filetype on

" Indentation; 4 spaces per tab keystroke and existing tabs are rendered as 4 spaces
filetype indent on
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab

" DO save swap files, but only in a specific directory
set directory=~/.vim/swapfiles//
set swapfile

" DO save undo files, but only in a specific directory
set undodir=~/.vim/undofiles
set undofile

" Do not save backup files (swap+undo files are better)
set nobackup

" While searching though a file incrementally, highlight matching characters as you type
set incsearch

" Ignore capital letters during search
set ignorecase

" Override the ignorecase option if searching for capital letters.
" This will allow you to search specifically for capital letters.
set smartcase

" Show partial command you type in the last line of the screen
set showcmd

" Show the mode you are on the last line
set showmode

" Show matching words during a search
set showmatch

" Use highlighting when doing a search
set hlsearch

" Number of commands to store in history
set history=500

" Automatically wrap left and right when the arrow keys are pressed at the first or last characters of a line
set whichwrap+=<,>,h,l,[,]

" Automatically re-read files from disk if file is unmodified
set autoread

" Enable the confirmation dialog to save when exiting from unsaved files
set confirm

" Set window title
set titlestring=%t
set title

" Enable mouse
set mouse=a

" Custom characters for `set list`
set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣

" Does magic idk
set hidden

" Better command line completion
set wildmenu

" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start

" Stop certain movements from always going to the first character of a line
set nostartofline

" Quickly time out on keycodes, but never time out on mappings
set notimeout ttimeout ttimeoutlen=200

" Use <F11> to toggle between 'paste' and 'nopaste'
set pastetoggle=<F11>

" I hold shift down too long
command! W w
command! Q q
command! WQ wq

" Automatically insert closing parenthesis, quote, bracket, etc.
" ctrl-v before typing to escape it so single characters can be written
"inoremap " ""<left>
"inoremap ' ''<left>
"inoremap ( ()<left>
"inoremap [ []<left>
"inoremap { {}<left>

" Automatically put the closing bracket in the appropriate position
"inoremap (<CR> (<CR>)<ESC>O
"inoremap [<CR> [<CR>]<ESC>O
inoremap {<CR> {<CR>}<ESC>O

" Save and restore cursor and screen position
au BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") && &ft !~# 'commit' |
    \   exe "normal! g`\"zv" |
    \ endif

" Save view settings (cursor position, folds, etc.)
set viewoptions=cursor,folds,slash,unix

" Directory to store view files
set viewdir=~/.vim/viewfiles

" Automatically save view when leaving buffer
au BufWinLeave * mkview

" Automatically load view when entering buffer
au BufWinEnter * silent! loadview

" Auto-reload vimrc when saved
autocmd! bufwritepost .vimrc source %

" Faster terminal response
set ttyfast

" Don't redraw during macros (better performance)
set lazyredraw

" Always show status line
set laststatus=2

" Enable folding
set foldmethod=indent
set foldlevel=99

" Better wildmenu completion
set wildmode=longest,list,full

" Persistent undo even after closing vim
set undoreload=10000

" Split windows open in more natural positions
set splitbelow
set splitright

" Quick split navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Quick save/exit
let mapleader=" "
nnoremap <leader>w :w<CR>
nnoremap <leader>wq :wq<CR>
nnoremap <leader>q :q<CR>
