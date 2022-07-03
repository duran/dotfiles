" Data and cache directories

" Put cursor in the same place it was when we reopen a file
au BufReadPost *
 \ if line("'\"") > 1 && line("'\"") <= line("$") && &ft !~# 'commit'
 \ |   exe "normal! g`\""
 \ | endif

 " Now netrw history
 let g:netrw_dirhistmax = 0
