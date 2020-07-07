" IDE stuff
" Install VIM plugins with `git vim make`.
" You need to install external dependencies too.


" Load fzf is possible
" TODO: Check if fzf is installed
set rtp+=$FZF_HOME
" TODO: fzf.vim is currently incompatible with xterm: 
" https://github.com/junegunn/fzf.vim/issues/900
let &t_TI = ""
let &t_TE = ""
