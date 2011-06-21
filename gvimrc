if has("gui_macvim")
  macmenu File.New\ Tab key=<nop>
  map <D-t> :CommandT<CR>

  macmenu Tools.Next\ Error key=<nop>
  macmenu Tools.Previous\ Error key=<nop>

  " switch to previous buffer
  map <C-D-Left> :bp<CR>
  " switch to next buffer
  map <C-D-Right> :bN<CR>

  set lines=50 columns=120
elseif has("X11")
  map <M-t> :CommandT<CR>
endif

autocmd VimEnter * call s:CdIfDirectory(expand("<amatch>"))

" If the parameter is a directory, cd into it
function s:CdIfDirectory(directory)
  let explicitDirectory = isdirectory(a:directory)
  let directory = explicitDirectory || empty(a:directory)

  if explicitDirectory
    exe "cd " . a:directory
  endif

  if directory
    NERDTree
    " wincmd p
    " bd
  endif

  if explicitDirectory
    " wincmd p
  else

  endif
endfunction

autocmd WinEnter * call s:CloseIfOnlyNerdTreeLeft()
" Close all open buffers on entering a window if the only
" buffer that's left is the NERDTree buffer
function s:CloseIfOnlyNerdTreeLeft()
  if exists("t:NERDTreeBufName")
    if bufwinnr(t:NERDTreeBufName) != -1
      if winnr("$") == 1
        q
      endif
    endif
  endif
endfunction

