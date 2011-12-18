" Vim syntax file
" Language:	Underscore.js Templates
" Maintainer:	Martin Schuerrer, @MSch <martin@schuerrer.org>
" Version:	2
" Last Change:  2011 Jul 3

" Read the HTML syntax to start with
runtime! syntax/html.vim
unlet b:current_syntax

if exists("b:current_syntax")
  finish
endif

syn include @jstJavaScript syntax/javascript.vim

syn region jstBlock containedin=ALL start="<%=" keepend end="%>" contains=@jstJavaScript
syn region jstBlock containedin=ALL start="<%" keepend end="%>" contains=@jstJavaScript

hi! jstBlock guibg=#555555

let b:current_syntax = "jst"

