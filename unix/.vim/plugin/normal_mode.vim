" Normal mode maps
"
" TODO: move vim inside https://stackoverflow.com/questions/10884520/move-file-within-vim
" TODO: ctags command


" Meta stuff
"
" The main points in the mapping strategy are the following.
" * We use space as the leader key.
" * We use ESC as escape key to type the metakey in xterm-like terminals.

" Turning off space so it can be used as leader key without side effects.
let mapleader = ' '
noremap <space> <nop>

" Turning off escape in most modes, but allowing escaped keys to be used as
" meta-keys, See plugin/escape_to_metakey.vim
noremap  <c-[><c-[> <nop>
noremap! <c-[><c-[> <nop>

" We however, still want the escape key in some modes.
inoremap jk <c-[>
vnoremap jk <c-[>


" Normal mode, no leader.

" Inconsistent behaviour
nnoremap Y y$
nnoremap cw dwi

" Fast common edits, save, etc.
nnoremap <c-s> :update<c-[>
" TODO: Think what to do with S and X
"nnoremap S :update<c-[>
nnoremap <c-h> i<c-h><c-[>l
nnoremap <c-j> o<c-[>


" Next/previous buffer
nnoremap <c-n> :bnext<c-j>
nnoremap <c-p> :bprev<c-j>

" Go to places
nnoremap gb :ls<c-j>:b
nnoremap gw :execute ':silent !$BROWSER <cWORD>' <c-j> :redraw! <c-j>

" Repeat macros and commands faster
nnoremap Q @@
nnoremap \ @:

" Normal mode, with metakey

" Windows and tabs
noremap <m-o> :ls<c-j>:b
noremap <m-d> ZZ

noremap <m-j> <c-w>j
noremap <m-k> <c-w>k
noremap <m-h> <c-w>h
noremap <m-l> <c-w>l
noremap <m-s> <c-w>s
noremap <m-v> <c-w>v

noremap <tab> gt
noremap <s-tab> gT
nnoremap + :tabnew<c-j>
nnoremap - :tabclose<c-j>

noremap <m-t> :tabnew<c-j>
noremap <m-n> gt
noremap <m-p> gT
noremap <m-1> 1gt
noremap <m-2> 2gt
noremap <m-3> 3gt
noremap <m-4> 4gt
noremap <m-5> 5gt
noremap <m-6> 6gt
noremap <m-7> 7gt
noremap <m-8> 8gt
noremap <m-9> 9gt
noremap <m-0> 10gt

" Shortcut to rapidly toggle `set list`
" nnoremap <m-l> :set list!<c-j>


" Normal mode, leader keymaps

" Command-line window
noremap <leader><leader> q:

" Opening, writting and exiting
nnoremap <leader>q ZQ
nnoremap <leader>z ZZ
nnoremap <leader>Q :qall!<c-j>
nnoremap <leader>Z :confirm wqall<c-j>
nnoremap <leader>S :update<c-j>:!git add %<c-j>ZQ


" Open and close folds
nnoremap <leader>h zc
nnoremap <leader>l zo
nnoremap <leader>H zC
nnoremap <leader>L zO
nnoremap <leader>r zR
nnoremap <leader>m zM

" Toggle search highlighting
nnoremap <leader><c-l> :nohlsearch<c-j>


" Shortcuts system yank
nmap <leader>d "+d
nmap <leader>D "+D
nmap <leader>p "+p
nmap <leader>P "+P
nmap <leader>y "+y
nmap <leader>Y "+Y
nmap <leader>c "+c
nmap <leader>C "+C
nmap <leader>x "+x
nmap <leader>X "+X
nmap <leader>s "+s
nmap <leader>S "+S

