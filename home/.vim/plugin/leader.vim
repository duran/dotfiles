" Leader keymaps
"
" Here we store all the leader mappings

let mapleader = ' '

" Command mode
noremap <leader><leader> :

" Opening, writting and exiting
nnoremap <leader>q ZQ
nnoremap <leader>z ZZ
nnoremap <leader>Q :qall!<c-j>
nnoremap <leader>Z :confirm wqall<c-j>
nnoremap <leader>S :update<c-j>:!git add %<c-j>ZQ

" Fast copy/paste to clipboard
noremap <leader>y "+y
noremap <leader>p "+p
noremap <leader>d "+d
noremap <leader>c "+c
noremap <leader>s "+s
noremap <leader>Y "+y$
noremap <leader>P "+P
noremap <leader>D "+D
noremap <leader>C "+C

noremap <leader>- :call ToggleSystemClipboard()<c-j>

" Open and close folds
nnoremap <leader>h zc
nnoremap <leader>l zo
nnoremap <leader>H zC
nnoremap <leader>L zO
nnoremap <leader>r zR
nnoremap <leader>m zM

" Toggle search highlighting
nnoremap <leader><c-l> :nohlsearch<c-j>

" Enclose things with things
xnoremap <leader>' x2i'<c-[>P
xnoremap <leader>" x2i"<c-[>P
xnoremap <leader>( xi()<c-[>P
xnoremap <leader>[ xi[]<c-[>P
xnoremap <leader>{ xi{}<c-[>P
xnoremap <leader>< xi<><c-[>P

" fzf.vim plugin 
nnoremap <leader>o :Files .<c-j>
nnoremap <leader>t :Tags<c-j>
nnoremap <leader>/ :Lines<c-j>
