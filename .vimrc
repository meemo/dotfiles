"" Appearance
colorscheme slate

" Enable syntax highlighting
syntax on

highlight ColorColumn guibg=#000000 term=reverse ctermbg=16

" Show line numbers on the left
set number

" Show at minimum 10 lines under the cursor
set scrolloff=10

" Allow text to wrap
set wrap

" Show the ruler (cursor position at the bottom left)
set ruler

" Ruler at 120 characters, with the theme this is a black bar
set colorcolumn=120

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

" Do not save backup files
set nobackup

" DO save swap files
set swapfile

" While searching though a file incrementally highlight matching characters as you type
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
