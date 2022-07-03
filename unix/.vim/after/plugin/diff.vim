" Special configuration for diff mode
" TODO: Clean up this, also, see how to get out this mode
if &diff
    " Turn off syntax, as it comes as confusing
    syntax off
    colorscheme elflord

    " Moving around easier
    nnoremap du     :wincmd w<c-j>:normal u<c-j>:wincmd w<c-j>
    nnoremap d<c-l> :diffupdate<c-j>
    nnoremap <Leader>1 :diffget LOCAL<c-j>
    nnoremap <Leader>2 :diffget BASE<c-j>
    nnoremap <Leader>3 :diffget REMOTE<c-j>
endif

" TODO: See how to make this work in macOS
" set diffopt+=internal,algorithm:patience " Uses patience intead of myers with xdiff
