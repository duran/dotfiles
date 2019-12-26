" Anything spell spell corrector related, but the normal mode keybindings,
" that there are in normal_mode.vim

" Spell checker
function ToggleSpell()
    if &spell
        set nospell
        echo "Spell checker OFF!"
    else
        set spell
        echo "Spell checker ON!"
    endif
endfunction

" Better colors
if version >= 700
    hi clear SpellBad
    hi clear SpellCap
    hi clear SpellRare
    hi clear SpellLocal
    hi SpellBad    ctermfg=9
    hi SpellCap    ctermfg=3    cterm=underline
    hi SpellRare   ctermfg=13   cterm=underline
    hi SpellLocal  cterm=None
endif

" Homemade spell mode, mainly for working with text markups
"
" TODO: I would like to have proper softwrapping
" TODO: I would like to be able to turn it on and off

" softwrap in vim is a hack
"augroup softwrap
"    autocmd VimResized * if (exists('b:softwrap') && &columns > 80) | set columns=80 | endif
"    autocmd BufEnter * set columns=999
"augroup END

let b:spell_mode = 0

" For writting normal text
function ToggleSpellMode(...)
    if !exists("b:spell_mode")
        let b:spell_mode = 0
    endif
    
    if b:spell_mode
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

        let b:spell_mode = 0
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

        let b:spell_mode = 1
        if a:0 == 0
            echo "Prose Mode ON!"
        endif
    endif
endfunction
