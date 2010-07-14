set nocompatible
set backspace=indent,eol,start

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
syntax on

"color zenburn
color vibrantink

" MAC
:if system("uname") == "Darwin\n"
  set guifont=Monaco:h13
  let mapleader="ß"
:else
:end
set go-=T "remove toolbar from GUI
set go-=m "remove toolbar from GUI

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
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType perl set smartindent
autocmd FileType css set smartindent
autocmd FileType ruby,eruby set smartindent

autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1

autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
au! BufRead,BufNewFile *.haml         setfiletype haml

au FileType xhtml,xml,eruby so ~/.vim/ftplugin/html_autoclosetag.vim

autocmd FileType ruby,eruby,yaml set ai sw=2 sts=2 et
autocmd FileType ruby,eruby,yaml,haml,css,c,cpp,java,php,haskell,text,vim autocmd BufWritePre <buffer> :call setline(1,map(getline(1,"$"),'substitute(v:val,"\\s\\+$","","")'))

set number
set scrolloff=6

" Search & Replace
set ignorecase " make searches case-insensitive
set smartcase "  unless they contain upper-case letters
set incsearch " show the `best match so far' as search strings are typed
set gdefault " assume the /g flag on :s to replace all matches in a line
set hlsearch " do highlight previously searched phrases

" Keystrokes -- Moving Around
set whichwrap=h,l,~,[,] " wrapping for h,l (normal) and cursor keys (insert)
noremap <Space> <PageDown>
noremap <BS> <PageUp>
noremap - <PageUp>

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
set background=dark
set background=light
set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
"if has("autocmd")
"  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
"    \| exe "normal g'\"" | endif
"endif

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


" TeX
let g:Tex_MultipleCompileFormats = 'pdf'
let g:Tex_DefaultTargetFormat = 'pdf'
" Set the warning messages to ignore.
let g:Tex_IgnoredWarnings =
\"Underfull\n".
\"Overfull\n".
\"specifier changed to\n".
\"You have requested\n".
\"Missing number, treated as zero.\n".
\"There were undefined references\n".
\"Citation %.%# undefined\n".
\"LaTeX Warning: The counter will not be printed.\n".
\'LaTeX Font Warning:'"
" This number N says that latex-suite should ignore the first N of the above.
let g:Tex_IgnoreLevel = 8

map gx :FuzzyFinderTextMate<CR>

" Haskellmode
" use ghc functionality for haskell files
au Bufenter *.hs compiler ghc

" Configure browser for haskell_doc.vim
let g:haddock_browser = "open"
let g:haddock_browser_callformat = "%s %s"
let g:Tex_IgnoreLevel = 9

set nofoldenable
