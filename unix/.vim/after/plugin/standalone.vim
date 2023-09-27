" Only runs when vim is used standalone (so no embedding)
" For the moment being, this is always

" TODO: Clean up some day
if exists('g:loaded_fzf')
    " set rtp+=$FZF_HOME
    " Fix Xterm incompatibilities
    " https://github.com/junegunn/fzf.vim/issues/900
    let &t_TI = ""
    let &t_TE = ""

    nnoremap <leader>o :Files .<c-j>
    nnoremap <leader>t :Tags<c-j>
endif
