" FIXME
" misc
set notimeout  " not timeout
set nottimeout " never
set virtualedit=all " Move to places without characters
set nostartofline " stop changing the cursor when I fire a command
" set listchars=tab:▸\ ,eol:¬ 
"  set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
" set encoding=utf-8
set autoread " read files on change
" set autowrite " write when  moving from file

" Set system clipboard as default register
" set clipboard=unnamedplus


"set spelllang=en,es,gl
" colorscheme desert elflord slate
set hidden    " VIM does not complain when you open a new buffer 
let g:newtrw_dirhistmax=0

" command-line_window.vim
" Command-line window

" autocmd CmdwinEnter * nnoremap <buffer> <leader>q <c-c><c-c>
" autocmd CmdwinEnter * nnoremap <buffer> <c-j> <cr>

"""""""""""""""
" TODO: Spell "
"""""""""""""""

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
"
"" Proper softwrap
""let b:softwrap=1
""setlocal linebreak
""set columns=80
"
"
"" WYGIWYS
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
"

" Spell corrector
" For more information, check spell_mode.vim
" TODO: spell mode shortcut.
" noremap <m-`> :call ToggleSpellMode()<c-j>
