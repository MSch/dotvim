set nocompatible
set backspace=indent,eol,start

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
syntax on

" http://www.vim.org/scripts/script.php?script_id=415
let g:zenburn_high_Contrast=1
color zenburn

" MAC
:if system("uname") == "Darwin\n"
  set guifont=Monaco:h13
  let mapleader="ß"
:else
:end
set go-=T "remove toolbar from GUI
set go-=m "remove menu from GUI

set showmode
set laststatus=2

" Text Formatting -- General
set wrap " prevent text wrapping
set shiftwidth=2 " use indents of 2 spaces, and have them copied down lines
set shiftround
set expandtab
set autoindent
set ruler " show the cursor position all the time

" Suffixes that get lower priority when doing tab completion for filenames.
" These are files we are not likely to want to edit or read.
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc

" Text Formatting -- Specific File Formats
filetype on " enable filetype detection
filetype plugin on
filetype indent on

set number
set scrolloff=6

" Search & Replace
set ignorecase " make searches case-insensitive
set smartcase "  unless they contain upper-case letters
set incsearch " show the `best match so far' as search strings are typed
set gdefault " assume the /g flag on :s to replace all matches in a line
set hlsearch " do highlight previously searched phrases

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal g'\"" | endif
endif

" Uncomment the following to have Vim load indentation rules according to the
" detected filetype. Per default Debian Vim only load filetype specific
" plugins.
if has("autocmd")
  filetype indent on
endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching
set incsearch		" Incremental search
set autowrite		" Automatically save before commands like :next and :make
set autoread            " Automatically reload
"set hidden             " Hide buffers when they are abandoned
set mouse=a		" Enable mouse usage (all modes) in terminals
set visualbell

set pastetoggle=<F12>   " Toggle insert-paste mode with F12
