" Data and cache directories

" Backup and swap files
" TODO: Set this with XDG or turn off
" TODO: This will fail unless the directory exists in advance
set history=5000                           " increase history commands
set viminfo+=n~/.local/share/vim/viminfo   " where to save history
set directory^=~/.local/share/vim/swap//   " where to save swap files
" TODO: Double check if you backups at all
set backupdir^=~/.local/share/vim/backup// " where to store temporary backups
" set nobackup
" set noundofile


" Put cursor in the same place it was when we reopen a file
au BufReadPost *
 \ if line("'\"") > 1 && line("'\"") <= line("$") && &ft !~# 'commit'
 \ |   exe "normal! g`\""
 \ | endif

 " Now netrw history
 let g:netrw_dirhistmax = 0
