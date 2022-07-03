set notimeout       " not timeout for keys
set nottimeout      " never, for real
set hidden          " vim to not complain when you open a new buffer 
set autoread        " read files on change
set virtualedit=all " Move to places without characters
set nostartofline   " stop changing the cursor when I fire a command

" Check if file changed after gaining focus or entering a new buffer
autocmd FocusGained,BufEnter * :checktime
