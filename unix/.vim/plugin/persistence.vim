" Data and cache directories

" if !exists($XDG_CACHE_HOME)
"     let $XDG_CACHE_HOME = $HOME + "/.cache"
" endif
" 
" if !exists($XDG_DATA_HOME)
"     let $XDG_DATA_HOME = $HOME + "/.local/share"
" endif


" Command history
set history=5000

" Working with several files
set wildmenu  " autocomplete menu
set hidden    " VIM does not complain when you open a new buffer 
set path+=**  " recursive search
set tags=./tags,tags;$HOME " search for file in folder and upwards til $HOME 
" TODO: See how to make this work in macOS
" set diffopt+=internal,algorithm:patience " Uses patience intead of myers with xdiff

" Backup and swap files
" TODO: Set this with XDG or turn off
" if empty($xd
"set viminfo+=n$XDG_CACHE_HOME/viminfo
"set directory^=$XDG_CACHE_HOME/vim/swap//
set swapfile
" set writebackup # if you want to write a backup during the write
" set backupdir^=~/.vim/backup//
" set backupcopy=auto " rename and write when save
set nobackup 
" set undofile " persist the undo tree for each file
" set undodir^=~/.vim/undo//

" Backup and encryption
"set cryptmethod=blowfish2
"http://vim.wikia.com/wiki/Encryption
"https://stackoverflow.com/questions/575817/vim-encryption-how-to-break-it#575866

" Put cursor in the same place it was when we reopen a file
au BufReadPost *
 \ if line("'\"") > 1 && line("'\"") <= line("$") && &ft !~# 'commit'
 \ |   exe "normal! g`\""
 \ | endif
"set spelllang=en,es,gl
" colorscheme desert elflord slate
