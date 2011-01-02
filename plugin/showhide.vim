" File: showhide.vim
" Author: Amit Sethi <amitrajsethi@yahoo.com>
" Version: 1.0
" Last Modified: Fri Jun 30 10:27:31 IST 2006
" Description: Show or Hide lines by folding based on pattern 
" Uasge:
"     zs    Show all lines containing word under cursor
"     zh    Hide all lines containing word under cursor
"
"     :SHOW word pattern ...
"           Show lines containing either word or pattern
"     
"     :HIDE word pattern ...
"           Hide lines containing either word or pattern
"
"           -- pattern can be any regular expression --
"
"  See ":h fold" for commands related to folds, e.g.,
"     zn	   Open all folds
"
" Installation:
"     Copy showhide.vim to your .vim/plugin directory
"


if exists("loaded_showhide") 
   finish
endif
let loaded_showhide = ""

map   <silent>    zs    :call <SID>ShowHideWord('z', 's', '')<CR>
map   <silent>    zh    :call <SID>ShowHideWord('z', 'h', '')<CR>
command -nargs=+  SHOW  :call <SID>ShowHideWord('c', 's', <f-args>)
command -nargs=+  HIDE  :call <SID>ShowHideWord('c', 'h', <f-args>)

function! <SID>ShowHideWord(mode, show, ...)
   if (a:mode == 'z')
      let cur_word = '\\<' . expand("<cword>") . '\\>'
   else
      let i = 1
      let cur_word = '\\<\\('
      let binder = ''
      while i <= a:0
         let ai = substitute(a:{i}, '\\', '\\\\', 'g')
         let cur_word = cur_word . binder . ai
         let binder = '\\\|'
         let i = i + 1
      endw
      let cur_word = cur_word . '\\)\\>'
   endif

   let myfoldexpr = "set foldexpr=getline(v:lnum)" .
      \ (a:show == 's' ? "!" : "=") . "~\'\^.*" . cur_word . ".*\$\'"

   set foldenable
   set foldlevel=0
   set foldminlines=0
   set foldmethod=expr
   exec myfoldexpr
endfunction


" End-Of-File
