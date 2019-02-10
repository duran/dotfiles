" Readline shortcuts in insert and command modes
"
" You should steal frmrsi.vim from Tim Pope. https://github.com/tpope/vim-rsi
"
" Looking to implement all of these http://sheet.shiar.nl/readline
"
" FIXME: c-x extra functionality not implemented



" Info

inoremap <c-l> <c-o><c-l>
" FIXME: No clear screen c-l in command mode

" FIXME: No list completed m-? and m-+

" FIXME: No filename expansion m+/ " NOTE: No readline



" Motion

noremap! <c-b> <left>
noremap! <c-f> <right>
" NOTE: Ovewrited in command line mode

noremap! <m-f> <s-right>
noremap! <m-b> <s-left>
" NOTE: m-f already in both modes, but is no exactly the same in insert mode
" FIXME: Should I fix <m-f>? 
" NOTE: m-b seems mapped in us-acentos...

noremap! <c-a> <home>
noremap! <c-e> <end>
" FIXME:: c-] (find char in readline) cannot type



" History

" c-p already there
" c-n already there

" FIXME: Enter c-m and c-j
" FIXME: Enter and next c-o " NOTE: No readline
" FIXME: Start history m-<
" FIXME: End history m->
" FIXME: Reverse match m-p 
" FIXME: Match m-n 
" FIXME: Reverse history c-r
" FIXME: Search history c-s
" FIXME: Undo c-_
" FIXME: Undo all m-r
" FIXME: Last inserted  m-. and ,-+
" FIXME: Yank c-y
" FIXME: Yank rotate m-y



" Change

" FIXME: Move char c-t
" FIXME: Move word m-t
inoremap <m-u> <c-o>gUe
inoremap <m-l> <c-o>gue
inoremap <m-c> <c-o>gUl<c-o>e
" FIXME: Upcase word m-u (command mode)
" FIXME: Lowcase word m-l (command mode)
" FIXME: Capitalise word m-c (command mode)
" FIXME: Autocomplete c-i
" FIXME: variable expand m-$ " NOTE: No readline
" FIXME: cmd expand m-! " NOTE: No readline
" FIXME: tilde  expand m-&
" FIXME: username  m-~ " NOTE: No readline
" FIXME: hostname m-@ " NOTE: No readline
" FIXME: prefix comment m-#
" FIXME: complete all m-*



" Delete

noremap! <c-d> <delete>
" c-h and c-w in both modes, but no yank mode
inoremap <m-d> <c-o>"_de
" FIXME: missing m-d in c-mode
" c-u already in both modes, but no yank mode
inoremap <c-k> <c-o>"_d$
" FIXME: missing c-k in command mode, no yank mode in neither
" FIXME: c-k do something, not sure what
" FIXME: deleting whitespace m-\



" Misc
noremap! <c-g> <c-c>
inoremap <c-z> <c-o>:suspend<c-j>
" FIXME: Background c-z " NOTE: No readline
" FIXME: verbatim char c-v  and c-q
" NOTE: c-[ turn off 
" FIXME: set mark c-@



" Mode

" FIXME: c-x extra functionality not implemented
