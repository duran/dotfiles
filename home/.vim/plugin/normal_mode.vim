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
nnoremap S :update<c-[>
nnoremap <c-h> i<c-h><c-[>l
nnoremap <c-j> o<c-[>

" Move screen line and not file line
nnoremap + gj
nnoremap - gk

" Next/previous buffer
nnoremap <c-n> :bnext<c-j>
nnoremap <c-p> :bprev<c-j>

" Go to places
nnoremap gb :ls<c-j>:b
nnoremap gw :execute ':silent !$BROWSER <cWORD>' <c-j> :redraw! <c-j>

" Repeat macros and commands faster
nnoremap Q @@
nnoremap \ @:

" Spell corrector
" For more information, check spell_mode.vim
" TODO: spell mode shortcut.
" noremap <m-`> :call ToggleSpellMode()<c-j>
noremap ~ :call ToggleSpell()<c-j>
noremap ` z=
noremap <left> [s
noremap <right> ]s
noremap <up> zw
noremap <down> zg


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

" Fast copy/paste to clipboard
noremap <leader>~ :call ToggleSystemClipboard()<c-j>

" fzf.vim plugin 
nnoremap <leader>o :Files .<c-j>
nnoremap <leader>t :Tags<c-j>
nnoremap <leader>/ :Lines<c-j>
