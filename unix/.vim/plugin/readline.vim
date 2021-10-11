" Readline shortcuts in insert and command modes
" Looking to implement all of these http://sheet.shiar.nl/readline

" Info
" redraw screen (this is not exactly the same as in readline)
" MISSING: No clear screen c-l in command mode
inoremap <c-l> <c-o><c-l>
" MISSING: No list completed m-? and m-+
" filename extension
" MISSING: No filename expansion m+/ for command mode
inoremap <m-/> <c-x><c-f>

" Motion
" NOTE: Overwrite in command line mode
" move one character to the left
noremap! <c-b> <left>
" move one character to the right
noremap! <c-f> <right>
" NOTE: m-f already in both modes, but is no exactly the same in insert mode
" move one word to the left
noremap! <m-b> <s-left>
" move one word to the right
noremap! <m-f> <s-right>
" MISSING: Should I fix <m-f>? 
" NOTE: m-b seems mapped in us-acentos...
" move to the start of the line
" should I use <c-o>^ for insert mode?
noremap! <c-a> <home>
" move to the end of the line of the line
noremap! <c-e> <end>
" MISSING:: c-] (find char in readline) cannot type

" History
" previous element c-p already there
" next element c-n already there
" enter c-m and c-j already there, c-o no because NOTE: will overwrite one-off commands
" MISSING: Start history m-<
" MISSING: End history m->
" MISSING: Reverse match m-p 
" MISSING: Match m-n 
" MISSING: Reverse history c-r
" MISSING: Search history c-s
" MISSING: Undo c-_
" MISSING: Undo all m-r
" MISSING: Last inserted  m-. and ,-+
" MISSING: Yank c-y
" MISSING: Yank rotate m-y

" Change
" MISSING: Move char c-t
" MISSING: Move word m-t
inoremap <m-u> <c-o>gUe
inoremap <m-l> <c-o>gue
inoremap <m-c> <c-o>gUl<c-o>e
" MISSING: Upcase word m-u (command mode)
" MISSING: Lowcase word m-l (command mode)
" MISSING: Capitalise word m-c (command mode)
" MISSING: Autocomplete c-i
" MISSING: variable expand m-$ " NOTE: No readline
" MISSING: cmd expand m-! " NOTE: No readline
" MISSING: tilde  expand m-&
" MISSING: username  m-~ " NOTE: No readline
" MISSING: hostname m-@ " NOTE: No readline
" MISSING: prefix comment m-#
" MISSING: complete all m-*

" Delete
noremap! <c-d> <delete>
" c-h and c-w in both modes, but no yank mode
inoremap <m-d> <c-o>"_de
" MISSING: missing m-d in c-mode
" c-u already in both modes, but no yank mode
inoremap <c-k> <c-o>"_d$
" MISSING: missing c-k in command mode, no yank mode in neither
" MISSING: c-k do something, not sure what
" MISSING: deleting whitespace m-\

" Mode
" MISSING: c-x extra functionality not implemented
