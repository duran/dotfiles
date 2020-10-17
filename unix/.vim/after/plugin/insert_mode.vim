" Readline shortcuts in insert and command modes
"
" You should steal frmrsi.vim from Tim Pope. https://github.com/tpope/vim-rsi
"
" Looking to implement all of these http://sheet.shiar.nl/readline
"
" TODO: I am using a plugin now. Almost all fo this is outdated.


if exists("g:loaded_rsi") == 0
    " MISSING: c-x extra functionality not implemented



    " Info

    inoremap <c-l> <c-o><c-l>
    " MISSING: No clear screen c-l in command mode

    " MISSING: No list completed m-? and m-+

    " MISSING: No filename expansion m+/ " NOTE: No readline



    " Motion

    noremap! <c-b> <left>
    noremap! <c-f> <right>
    " NOTE: Ovewrited in command line mode

    noremap! <m-f> <s-right>
    noremap! <m-b> <s-left>
    " NOTE: m-f already in both modes, but is no exactly the same in insert mode
    " MISSING: Should I fix <m-f>? 
    " NOTE: m-b seems mapped in us-acentos...

    noremap! <c-a> <home>
    noremap! <c-e> <end>
    " MISSING:: c-] (find char in readline) cannot type



    " History

    " c-p already there
    " c-n already there

    " MISSING: Enter c-m and c-j
    " MISSING: Enter and next c-o " NOTE: No readline
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
endif
