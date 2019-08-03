" Diff mode in VIM
" TODO: This should turn/on off automatically when you get in and out of diff
" mode

if &diff
    " Turn off syntax, as it comes as confusing
    syntax off
    colorscheme elflord

    " Moving around easier
    nnoremap du     :wincmd w<c-j>:normal u<c-j>:wincmd w<c-j>
    nnoremap d<c-l> :diffupdate<c-j>
endif
