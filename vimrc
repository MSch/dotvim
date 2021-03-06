set nocompatible

let g:yankring_history_dir = '$HOME/.vim/'
let g:yankring_history_file = 'yankring_history'

call pathogen#runtime_append_all_bundles()

runtime macros/matchit.vim

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

" Backup directory
set backupdir=~/.vim/backupfiles,/var/tmp,/tmp,.

" Swapfile directory
set directory=~/.vim/swapfiles,/var/tmp,/tmp,.

" Suffixes that get lower priority when doing tab completion for filenames.
" These are files we are not likely to want to edit or read.
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc

" Text Formatting -- Specific File Formats
filetype on " enable filetype detection
filetype plugin on
filetype indent on

set scrolloff=6

" Window options
set ruler          " shows cursor position in the lower right
set showcmd        " shows incomplete command to the left of the ruler
set winminheight=0 " allow windows to be 0 lines tall
set winminwidth=0  " allow windows to be 0 lines wide
set laststatus=2   " always show statusline

" Uncomment the following to have Vim jump to the last position when
" reopening a file
" if has("autocmd")
"   au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
"     \| exe "normal g'\"" | endif
" endif

source $HOME/.vim/filetypes
source $HOME/.vim/gui
source $HOME/.vim/bindings
source $HOME/.vim/editing

set autowrite		" Automatically save before commands like :next and :make
set autoread            " Automatically reload
"set hidden             " Hide buffers when they are abandoned
set mouse=a		" Enable mouse usage (all modes) in terminals
set visualbell

" highlight clojure builtins
let g:clj_highlight_builtins=1

" Disable line numbers for :TOhtml
let g:html_number_lines = 0

let NERDSpaceDelims = 1

set tabstop=2 shiftwidth=2 expandtab

" Without setting this, ZoomWin restores windows in a way that causes
" equalalways behavior to be triggered the next time CommandT is used.
" This is likely a bludgeon to solve some other issue, but it works
set noequalalways

