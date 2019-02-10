" I would want to have prose support in Vim.
" FIXME: I would like to have proper softwrapping
" FIXME: I would like to be able to turn it on and off

" softwrap in vim is a hack
"augroup softwrap
"    autocmd VimResized * if (exists('b:softwrap') && &columns > 80) | set columns=80 | endif
"    autocmd BufEnter * set columns=999
"augroup END

let b:prose_mode = 0

" For writting normal text
function ToggleProseMode(...)
    if !exists("b:prose_mode")
        let b:prose_mode = 0
    endif
    
    if b:prose_mode
        setlocal nospell
        setlocal complete-=kspell
        setlocal cursorline

        nunmap <buffer> j
        nunmap <buffer> k
        nunmap <buffer> ^
        nunmap <buffer> $
        nunmap <buffer> 0
        nunmap <buffer> gj
        nunmap <buffer> gk
        nunmap <buffer> g^
        nunmap <buffer> g$
        nunmap <buffer> g0

        let b:prose_mode = 0
        if a:0 == 0
            echo "Prose Mode OFF!"
        endif
    else
        " Spell correct and dictionary autocomplete
        setlocal spell
        setlocal complete+=kspell

        " No cursor line
        setlocal nocursorline

        " Proper softwrap
        "let b:softwrap=1
        "setlocal linebreak
        "set columns=80
        

        " WYGIWYS
        nnoremap <buffer> j gj
        nnoremap <buffer> k gk
        nnoremap <buffer> ^ g^
        nnoremap <buffer> $ g$
        nnoremap <buffer> 0 g0
        nnoremap <buffer> gj j
        nnoremap <buffer> gk k
        nnoremap <buffer> g^ ^
        nnoremap <buffer> g$ $
        nnoremap <buffer> g0 0

        let b:prose_mode = 1
        if a:0 == 0
            echo "Prose Mode ON!"
        endif
    endif
endfunction
