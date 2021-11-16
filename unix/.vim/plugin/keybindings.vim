" TODO: do with S, X, L. H
" Non-thematic or small thematic keybindings

" Inconsistent behaviour
nnoremap Y y$
nnoremap cw dwi

" Easy get out from insert mode
inoremap jk <c-[>

" Next/previous buffer
nnoremap <c-n> :bnext<c-j>
nnoremap <c-p> :bprev<c-j>


" Fast common edits, save, etc.
nnoremap <c-s> :update<c-[>
"nnoremap S :update<c-[>
nnoremap <c-h> i<c-h><c-[>l
nnoremap <c-j> o<c-[>

" TODO: Move lines up and down like in VSCode
nnoremap <a-j> :m .+1<CR>==
nnoremap <a-k> :m .-2<CR>==
inoremap <a-j> <Esc>:m .+1<CR>==gi
inoremap <a-k> <Esc>:m .-2<CR>==gi
vnoremap <a-j> :m '>+1<CR>gv=gv
vnoremap <a-k> :m '<-2<CR>gv=gv



" Go to places
nnoremap gb :ls<c-j>:b
nnoremap gx :execute ':silent !open <cWORD>' <c-j> :redraw! <c-j>h

" Repeat macros and commands faster
nnoremap Q @@
nnoremap \ @:

" Normal mode, with metakey

" Windows and tabs
" TODO: Fix the alt-gr H
" noremap <a-o> :ls<c-j>:b
" noremap <a-d> ZZ
        
" noremap ï <c-w>j
" noremap œ <c-w>k
" noremap h <c-w>h
" noremap ø <c-w>l
" noremap ß <c-w>s
" noremap ® <c-w>v

" noremap <tab> gt
" noremap <s-tab> gT
" nnoremap + :tabnew<c-j>
" nnoremap - :tabclose<c-j>


" noremap <a-t> :tabnew<c-j>
" noremap <a-n> gt
" noremap <a-p> gT
" noremap <a-1> 1gt
" noremap <a-2> 2gt
" noremap <a-3> 3gt
" noremap <a-4> 4gt
" noremap <a-5> 5gt
" noremap <a-6> 6gt
" noremap <a-7> 7gt
" noremap <a-8> 8gt
" noremap <a-9> 9gt
" noremap <a-0> 10gt

" Shortcut to rapidly toggle `set list`
" nnoremap <a-l> :set list!<c-j>


" Turning off space so it can be used as leader key without side effects.
let mapleader = ' '
noremap <space> <nop>

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

" Navigation
nnoremap <leader>o :find 
" nnoremap <leader>t :Tags<c-j>

" Wrap text
xnoremap <leader>' x2i'<c-[>P
xnoremap <leader>" x2i"<c-[>P
xnoremap <leader>( xi()<c-[>P
xnoremap <leader>[ xi[]<c-[>P
xnoremap <leader>{ xi{}<c-[>P
xnoremap <leader>< xi<><c-[>P

" noremap! <c-g> <c-c>
inoremap <c-z> <c-o>:suspend<c-j>

" TODO: command line window keys
" command-line_window.vim
" Command-line window
" autocmd CmdwinEnter * nnoremap <buffer> <leader>q <c-c><c-c>
" autocmd CmdwinEnter * nnoremap <buffer> <c-j> <cr>
" TODO: Spell
" Spell checker triggers and options
" Better colors
" hi clear SpellBad
" hi clear SpellCap
" hi clear SpellRare
" hi clear SpellLocal
" hi SpellBad    ctermfg=9
" hi SpellCap    ctermfg=3    cterm=underline
" hi SpellRare   ctermfg=13   cterm=underline
" hi SpellLocal  cterm=None
" autocmd FileType markdown,tex,mail setlocal spell complete+=kspell nocursorline
"" WYGIWYS
"nunmap <buffer> j
"nunmap <buffer> k
"nunmap <buffer> ^
"nunmap <buffer> $
"nunmap <buffer> 0
"nunmap <buffer> gj
"nunmap <buffer> gk
"nunmap <buffer> g^
"nunmap <buffer> g$
"nunmap <buffer> g0
"nnoremap <buffer> j gj
"nnoremap <buffer> k gk
"nnoremap <buffer> ^ g^
"nnoremap <buffer> $ g$
"nnoremap <buffer> 0 g0
"nnoremap <buffer> gj j
"nnoremap <buffer> gk k
"nnoremap <buffer> g^ ^
"nnoremap <buffer> g$ $
"nnoremap <buffer> g0 0
" noremap ~ :call ToggleSpell()<c-j>
" noremap ` z=
" noremap <left> [s
" noremap <right> ]s
" noremap <up> zw
" noremap <down> zg
" softwrap in vim is a hack
"augroup softwrap
"    autocmd VimResized * if (exists('b:softwrap') && &columns > 80) | set columns=80 | endif
"    autocmd BufEnter * set columns=999
"augroup END
"set spelllang=en,es,gl
" colorscheme desert elflord slate

" :w !sudo tee % > /dev/null 

" nnoremap <leader>b :if &binary | set nobinary | %!xxd -r | else | set binary | %!xxd | endif<c-j>
