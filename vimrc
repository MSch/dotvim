set nocompatible

call pathogen#runtime_append_all_bundles()

set backspace=indent,eol,start

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
syntax on

if has("gui_running")
  if has("gui_gtk2")
    " set guifont=Luxi\ Mono\ 12
  elseif has("x11")
    " Also for GTK 1
    set guifont=*-lucidatypewriter-medium-r-normal-*-*-180-*-*-m-*-*
  elseif has("gui_win32")
    set guifont=Luxi_Mono:h12:cANSI
  elseif has("gui_macvim")
    set guifont=Monaco:h13
    "let mapleader=""
    set imd
  endif
endif

if has("gui_running")
  color vividchalk
else
  " http://www.vim.org/scripts/script.php?script_id=415
  " let g:zenburn_high_Contrast=1
  color zenburn
endif

set go-=T "remove toolbar from GUI
set go-=m "remove menu from GUI

set showmode
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" E D I T I N G   O P T I O N S
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on       " turn on syntax highlighting
set number      " show line numbers
set showbreak=+ " display a + at the beginning of a wrapped line
set showmatch   " flash the matching bracket on inserting a )]} etc

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

""" FIXME: everything works as expected without these, I'm sure
"""        that I'm just missing something
"set cindent    " c-style language indentation
"set autoindent " automatically indent new lines
"set smartindent " automatically indent new lines

" for most code, use 4 space indents. specific filetypes are overridden
" in filetypes.vimrc
set softtabstop=4 " most of the time, we want a softtabstop of 4
set shiftwidth=4  " shift by 4 spaces when using >> and <<, etc
set expandtab     " no tabs, just spaces kthx.

" Using autocmd for this allows it to be reset every time you open a
" file, which keeps overrides from being persistent
autocmd FileType * set softtabstop=4 shiftwidth=4 expandtab

set list                     " show whitespace
set listchars=tab:»·,trail:· " show tabs and trailing spaces
set listchars+=extends:»     " show a » when a line goes off the right
                             " edge of the screen
set listchars+=precedes:«    " show a « when a line goes off the left
                             " edge of the screen

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" F O L D I N G   O P T I O N S
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set foldenable       " enable folding
set foldlevelstart=0 " start with all folds collapsed when switching
                     " buffers
set foldcolumn=2     " adds two columns of fold status on the left-hand
                     " side of the screen

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" S E A R C H   O P T I O N S
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set ignorecase " makes search patterns case-insensitive by default
set smartcase  " overrides ignorecase when the pattern contains
               " upper-case characters
set incsearch  " incremental search. 'nuf said

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" S W A P   O P T I O N S
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set directory=~/.vim/swapfiles,/var/tmp,/tmp,.

" Text Formatting -- General
set wrap " prevent text wrapping
set shiftwidth=2 " use indents of 2 spaces, and have them copied down lines
set shiftround
set expandtab
set autoindent

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

" Window options
set ruler          " shows cursor position in the lower right
set showcmd        " shows incomplete command to the left of the ruler
set winminheight=0 " allow windows to be 0 lines tall
set winminwidth=0  " allow windows to be 0 lines wide
set laststatus=2   " always show statusline

" Leaders
map <leader>d :NERDTreeToggle<cr>

set pastetoggle=<F12>   " Toggle insert-paste mode with F12

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal g'\"" | endif
endif

source $HOME/.vim/filetypes

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching
set incsearch		" Incremental search
set autowrite		" Automatically save before commands like :next and :make
set autoread            " Automatically reload
"set hidden             " Hide buffers when they are abandoned
set mouse=a		" Enable mouse usage (all modes) in terminals
set visualbell


