" Maps
"
" Any general keybinding falls here

" Turning off escape in most modes, but allowing escaped keys to be used as
" meta-keys, See escape_to_metakey.vim
noremap  <c-[><c-[> <nop>
noremap! <c-[><c-[> <nop>
" We however, still want the escape key in some modes.
inoremap jk <c-[>
vnoremap jk <c-[>

" Turning off space so it can be used as leader key without side effects. See
" leader.vim
noremap <space> <nop>

" Turning off arrow keys because I can
noremap  <up>    :echoerr "Use k"<c-j>
noremap  <down>  :echoerr "Use j"<c-j>
noremap  <left>  :echoerr "Use h"<c-j>
noremap  <right> :echoerr "Use l"<c-j>


" Normal mode 

" Y inconsistent behaviour
nnoremap Y y$

" Move screen line and not file line
nnoremap + gj
nnoremap - gk

" Next/previous buffer
nnoremap <c-n> :bnext<c-j>
nnoremap <c-p> :bprev<c-j>

" Go to places
nnoremap gb :ls<c-j>:b
nnoremap gw :execute ':silent !$BROWSER <cWORD>' <c-j> :redraw! <c-j>

" Save and exit faster
nnoremap Z ZZ
nnoremap Q ZQ
nnoremap S :update<c-j>
nnoremap <c-s> :update<c-j>:!git add %<c-j>

" Windows and tabs
noremap <m-o> :ls<c-j>:b
noremap <m-d> ZZ

noremap <m-j> <c-w>j
noremap <m-k> <c-w>k
noremap <m-h> <c-w>h
noremap <m-l> <c-w>l
noremap <m-s> <c-w>s
noremap <m-v> <c-w>v

noremap <m-t> :tabnew<c-j>
noremap <m-n> gt
noremap <m-p> gT
noremap <m-1> :tabnext  1<c-j>
noremap <m-2> :tabnext  2<c-j>
noremap <m-3> :tabnext  3<c-j>
noremap <m-4> :tabnext  4<c-j>
noremap <m-5> :tabnext  5<c-j>
noremap <m-6> :tabnext  6<c-j>
noremap <m-7> :tabnext  7<c-j>
noremap <m-8> :tabnext  8<c-j>
noremap <m-9> :tabnext  9<c-j>
noremap <m-0> :tabnext 10<c-j>

" Shortcut to rapidly toggle `set list`
" nnoremap <m-l> :set list!<c-j>

" Spell corrector
" ]s [s to move between ocurrences
noremap \ :call ToggleProseMode()<c-j>
noremap <c-h> z=
noremap ]w zg
noremap [w zw

" Working with diff mode
nnoremap du     :wincmd w<c-j>:normal u<c-j>:wincmd w<c-j>
nnoremap d<c-l> :diffupdate<c-j>
