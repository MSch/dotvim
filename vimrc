set nocompatible

call pathogen#runtime_append_all_bundles()

set wildmenu     " fancy command completion menu!

" Miscellaneous Options. Values:
"   a: ":read" sets window filename
"   A: ":write" sets window filename
"   B: backslash has no special meaning in ":map"
"   c: search continues from the end of the match
"   e: automatically add <CR> to the end of executed registers
"   F: ":write" sets buffer filename
"   s: set buffer options on entering the buffer
"   W: refuse to overwrite a readonly file, even with :w!
"   Z: don't reset 'readonly' when using :w!
set cpoptions=aABceFsWZ

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
  endif
endif

if has("gui_running")
  color vividchalk
  set go-=T "remove toolbar from GUI
  set go-=m "remove menu from GUI
else
  " http://www.vim.org/scripts/script.php?script_id=415
  " let g:zenburn_high_Contrast=1
  color zenburn
endif



" Editing options
syntax on       " turn on syntax highlighting
set number      " show line numbers
set showbreak=+ " display a + at the beginning of a wrapped line
set showmatch   " flash the matching bracket on inserting a )]} etc
set showmode

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

""" FIXME: everything works as expected without these, I'm sure
"""        that I'm just missing something
"set cindent    " c-style language indentation
set autoindent " automatically indent new lines
set smartindent " automatically indent new lines

" for most code, use 4 space indents. specific filetypes are overridden
" in filetypes.vimrc
set softtabstop=4 " most of the time, we want a softtabstop of 4
set shiftwidth=4  " shift by 4 spaces when using >> and <<, etc
set shiftround
set expandtab     " no tabs, just spaces kthx.
set wrap " prevent text wrapping

" Using autocmd for this allows it to be reset every time you open a
" file, which keeps overrides from being persistent
autocmd FileType * set softtabstop=4 shiftwidth=4 expandtab

set list                     " show whitespace
set listchars=tab:»·,trail:· " show tabs and trailing spaces
set listchars+=extends:»     " show a » when a line goes off the right
                             " edge of the screen
set listchars+=precedes:«    " show a « when a line goes off the left
                             " edge of the screen

" Search options
set ignorecase " makes search patterns case-insensitive by default
set smartcase  " overrides ignorecase when the pattern contains
               " upper-case characters
set incsearch  " incremental search. 'nuf said
set gdefault   " assume the /g flag on :s to replace all matches in a line
set hlsearch   " do highlight previously searched phrases

" Swapfile directory
set directory=~/.vim/swapfiles,/var/tmp,/tmp,.


" Suffixes that get lower priority when doing tab completion for filenames.
" These are files we are not likely to want to edit or read.
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc

" Text Formatting -- Specific File Formats
filetype on " enable filetype detection
filetype plugin on
filetype indent on

set number
set scrolloff=6

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

set autowrite		" Automatically save before commands like :next and :make
set autoread            " Automatically reload
"set hidden             " Hide buffers when they are abandoned
set mouse=a		" Enable mouse usage (all modes) in terminals
set visualbell


