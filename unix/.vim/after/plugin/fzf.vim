if exists('g:loaded_fzf')
    set rtp+=$FZF_HOME
    " Fix Xterm incompatibilities
    " https://github.com/junegunn/fzf.vim/issues/900
    let &t_TI = ""
    let &t_TE = ""

    nnoremap <leader>o :Files .<c-j>
    nnoremap <leader>t :Tags<c-j>
endif
